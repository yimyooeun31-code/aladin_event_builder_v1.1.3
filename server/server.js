/**
 * Aladin Event Builder - Local Backend Server
 *
 * 역할:
 *  1. 브라우저에서 드래그로 올린 이미지를 임시 폴더에 저장 (POST /api/upload)
 *  2. 확정 시 \\192.168.15.155\Image\img\events\book\{year}\{quarter}\ 와
 *     ./images/published/{year}/{quarter}/ 양쪽에 복사 (POST /api/publish)
 *  3. 파일명 중복 시 자동 리네임 (_v2, _v3 ...)
 *  4. 임시 파일은 1시간 후 자동 삭제
 */

const express = require('express');
const cors = require('cors');
const multer = require('multer');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

const config = require('./config.json');

const app = express();

// ─────────────────────────────────────────────
// Middleware
// ─────────────────────────────────────────────
app.use(cors({ origin: config.corsOrigins }));
app.use(express.json({ limit: '50mb' }));

// ─────────────────────────────────────────────
// Paths
// ─────────────────────────────────────────────
const TEMP_DIR = path.resolve(__dirname, config.paths.tempDir);
const LOCAL_BACKUP = path.resolve(__dirname, config.paths.localBackup);
const NETWORK_SHARE = config.paths.networkShare;
const WEB_BASE = config.paths.webBaseUrl;

fs.mkdirSync(TEMP_DIR, { recursive: true });
fs.mkdirSync(LOCAL_BACKUP, { recursive: true });

// ─────────────────────────────────────────────
// Multer (temp upload)
// ─────────────────────────────────────────────
const storage = multer.diskStorage({
    destination: TEMP_DIR,
    filename: (req, file, cb) => {
        const id = crypto.randomBytes(8).toString('hex');
        const ext = path.extname(file.originalname).toLowerCase() || '.jpg';
        cb(null, `${id}${ext}`);
    }
});

const upload = multer({
    storage,
    limits: { fileSize: config.upload.maxFileSizeMB * 1024 * 1024 },
    fileFilter: (req, file, cb) => {
        const ext = path.extname(file.originalname).toLowerCase();
        if (config.upload.allowedExtensions.includes(ext)) {
            cb(null, true);
        } else {
            cb(new Error(`허용되지 않는 확장자: ${ext}`));
        }
    }
});

// ─────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────
function checkNetworkAccess() {
    try {
        fs.accessSync(NETWORK_SHARE, fs.constants.W_OK);
        return true;
    } catch (e) {
        return false;
    }
}

function getUniqueFilename(dir, basename, ext) {
    // basename 예: "260410_event_bg", ext 예: ".jpg"
    let candidate = `${basename}${ext}`;
    if (!fs.existsSync(path.join(dir, candidate))) return candidate;

    let counter = 2;
    while (fs.existsSync(path.join(dir, `${basename}_v${counter}${ext}`))) {
        counter++;
    }
    return `${basename}_v${counter}${ext}`;
}

function sanitizeFilename(name) {
    // 한글, 영문, 숫자, 언더스코어, 하이픈, 점만 허용
    return /^[\p{L}\p{N}_.\- ]+$/u.test(name);
}

// ─────────────────────────────────────────────
// Routes
// ─────────────────────────────────────────────

// 1. Health check
app.get('/api/health', (req, res) => {
    const networkOk = checkNetworkAccess();
    res.json({
        status: 'ok',
        port: config.port,
        networkShare: NETWORK_SHARE,
        networkAccessible: networkOk,
        tempDir: TEMP_DIR,
        localBackup: LOCAL_BACKUP,
        webBaseUrl: WEB_BASE,
        allowedExtensions: config.upload.allowedExtensions,
        maxFileSizeMB: config.upload.maxFileSizeMB
    });
});

// 2. Upload to temp
app.post('/api/upload', upload.single('file'), (req, res) => {
    if (!req.file) {
        return res.status(400).json({ error: '파일이 전송되지 않았습니다' });
    }
    const ext = path.extname(req.file.filename);
    const tempId = path.basename(req.file.filename, ext);
    res.json({
        success: true,
        tempId,
        ext,
        originalName: req.file.originalname,
        size: req.file.size,
        previewUrl: `/api/temp/${req.file.filename}`
    });
});

// 3. Serve temp files (브라우저 미리보기용)
app.get('/api/temp/:filename', (req, res) => {
    const filename = req.params.filename;
    if (!/^[a-f0-9]+\.(jpg|jpeg|png|webp)$/i.test(filename)) {
        return res.status(400).send('invalid filename');
    }
    const filepath = path.join(TEMP_DIR, filename);
    if (!fs.existsSync(filepath)) {
        return res.status(404).send('not found');
    }
    res.sendFile(filepath);
});

// 4. Publish: temp → network share + local backup
app.post('/api/publish', (req, res) => {
    const { tempId, ext, filename, year, quarter } = req.body;

    if (!tempId || !ext || !filename || !year || !quarter) {
        return res.status(400).json({
            error: 'missing params',
            required: ['tempId', 'ext', 'filename', 'year', 'quarter']
        });
    }

    // 파일명 sanitize
    const finalExt = (path.extname(filename) || ext).toLowerCase();
    const basename = path.basename(filename, finalExt);

    if (!sanitizeFilename(basename)) {
        return res.status(400).json({
            error: '파일명에 허용되지 않는 문자가 있습니다 (한글/영문/숫자/_/-/공백만 허용)'
        });
    }

    if (!config.upload.allowedExtensions.includes(finalExt)) {
        return res.status(400).json({ error: `허용되지 않는 확장자: ${finalExt}` });
    }

    // Year/quarter sanity
    if (!/^\d{4}$/.test(String(year)) || !/^(01|02|03|04)$/.test(String(quarter))) {
        return res.status(400).json({ error: 'year(YYYY), quarter(01-04) 형식 확인 필요' });
    }

    const tempFilename = `${tempId}${ext}`;
    const tempFile = path.join(TEMP_DIR, tempFilename);

    if (!fs.existsSync(tempFile)) {
        return res.status(404).json({ error: 'temp 파일을 찾을 수 없습니다. 다시 업로드해주세요.' });
    }

    // Target directories
    const networkDir = path.join(NETWORK_SHARE, String(year), String(quarter));
    const localDir = path.join(LOCAL_BACKUP, String(year), String(quarter));

    // Ensure local backup dir exists
    try {
        fs.mkdirSync(localDir, { recursive: true });
    } catch (e) {
        return res.status(500).json({ error: '로컬 백업 폴더 생성 실패: ' + e.message });
    }

    // Ensure network dir exists (best effort)
    let networkOk = checkNetworkAccess();
    if (networkOk) {
        try {
            fs.mkdirSync(networkDir, { recursive: true });
        } catch (e) {
            console.error('[publish] network mkdir failed:', e.message);
            networkOk = false;
        }
    }

    // 중복 체크: network 우선 (없으면 local 기준)
    let finalName;
    if (networkOk) {
        finalName = getUniqueFilename(networkDir, basename, finalExt);
        // local도 중복이면 counter 더 올림
        while (fs.existsSync(path.join(localDir, finalName))) {
            const m = finalName.match(/^(.+?)(?:_v(\d+))?(\.\w+)$/);
            if (!m) break;
            const base = m[1];
            const n = m[2] ? parseInt(m[2]) + 1 : 2;
            finalName = `${base}_v${n}${m[3]}`;
        }
    } else {
        finalName = getUniqueFilename(localDir, basename, finalExt);
    }

    // Copy to network (best effort)
    const networkTarget = networkOk ? path.join(networkDir, finalName) : null;
    let networkSaved = false;
    if (networkOk) {
        try {
            fs.copyFileSync(tempFile, networkTarget);
            networkSaved = true;
        } catch (e) {
            console.error('[publish] network copy failed:', e.message);
            networkSaved = false;
        }
    }

    // Copy to local backup (필수)
    const localTarget = path.join(localDir, finalName);
    try {
        fs.copyFileSync(tempFile, localTarget);
    } catch (e) {
        return res.status(500).json({ error: '로컬 백업 저장 실패: ' + e.message });
    }

    // Cleanup temp
    try {
        fs.unlinkSync(tempFile);
    } catch (e) {
        console.warn('[publish] temp cleanup failed:', e.message);
    }

    const webUrl = `${WEB_BASE}/${year}/${quarter}/${finalName}`;
    const wasRenamed = finalName !== `${basename}${finalExt}`;

    res.json({
        success: true,
        webUrl,
        finalName,
        wasRenamed,
        requestedName: `${basename}${finalExt}`,
        networkSaved,
        networkPath: networkSaved ? networkTarget : null,
        localBackupPath: localTarget,
        fallbackUsed: !networkSaved
    });
});

// 5. List files in a specific year/quarter (나중에 재사용 위해)
app.get('/api/list/:year/:quarter', (req, res) => {
    const { year, quarter } = req.params;
    if (!/^\d{4}$/.test(year) || !/^(01|02|03|04)$/.test(quarter)) {
        return res.status(400).json({ error: 'invalid year/quarter' });
    }
    const localDir = path.join(LOCAL_BACKUP, year, quarter);
    let files = [];
    try {
        if (fs.existsSync(localDir)) {
            files = fs.readdirSync(localDir).filter(f =>
                config.upload.allowedExtensions.includes(path.extname(f).toLowerCase())
            );
        }
    } catch (e) {}
    res.json({ year, quarter, files, webBaseUrl: `${WEB_BASE}/${year}/${quarter}` });
});

// ─────────────────────────────────────────────
// Temp cleanup (1시간 지난 파일 삭제)
// ─────────────────────────────────────────────
function cleanOldTemp() {
    const now = Date.now();
    const HOUR = 60 * 60 * 1000;
    try {
        const files = fs.readdirSync(TEMP_DIR);
        files.forEach(f => {
            if (f === '.gitkeep') return;
            const fp = path.join(TEMP_DIR, f);
            try {
                const stat = fs.statSync(fp);
                if (now - stat.mtimeMs > HOUR) {
                    fs.unlinkSync(fp);
                }
            } catch (e) {}
        });
    } catch (e) {}
}

cleanOldTemp();
setInterval(cleanOldTemp, 30 * 60 * 1000); // 30분마다

// ─────────────────────────────────────────────
// Error handler
// ─────────────────────────────────────────────
app.use((err, req, res, next) => {
    console.error('[error]', err.message);
    res.status(err.status || 500).json({ error: err.message });
});

// ─────────────────────────────────────────────
// Start
// ─────────────────────────────────────────────
app.listen(config.port, () => {
    console.log('');
    console.log('🚀 Aladin Event Builder - Local Server');
    console.log('─────────────────────────────────────────');
    console.log(`  Port:          ${config.port}`);
    console.log(`  Network share: ${NETWORK_SHARE}`);
    console.log(`  Network OK:    ${checkNetworkAccess() ? '✅ 접근 가능' : '❌ 접근 불가 (로컬만 저장)'}`);
    console.log(`  Local backup:  ${LOCAL_BACKUP}`);
    console.log(`  Temp dir:      ${TEMP_DIR}`);
    console.log(`  Web base URL:  ${WEB_BASE}`);
    console.log('─────────────────────────────────────────');
    console.log(`  Health check:  http://localhost:${config.port}/api/health`);
    console.log('');
});
