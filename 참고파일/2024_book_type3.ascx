<%@ Control Language="c#" AutoEventWireup="true" %>
<%@ Import namespace="Aladdin.FrameWork" %>
<%@ Import namespace="Aladdin.AppBlock" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Aladdin.AppBlock.Blog2.Paper" %>
<%@ Register TagPrefix="uc1" TagName="wa_item_info_list" Src="~/ucl/itemview/list/wa_item_info_list.ascx" %>
<%@ Register TagPrefix="uc1" TagName="wa_item_info" Src="~/ucl/itemview/wa_item_info.ascx" %>
<%@ Register TagPrefix="uc1" TagName="wa_coupondown_btn" Src="~/ucl/coupon/wa_coupondown_btn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="wa_comment" Src="~/ucl_editor/events/wa_events_comment.ascx" %>
<%@ Register TagPrefix="uc1" TagName="wa_RandomTab" Src="~/ucl_editor/events/wa_RandomTab.ascx" %>
<%@ Register TagPrefix="uc1" TagName="wa_events_sns_btn" Src="~/ucl/events/eventComment/wa_events_sns_btn.ascx" %>
<%@ Register Src="/ucl/events/eventComment/wa_events_comment_v2.ascx" TagName="TrackbackEventComment" TagPrefix="uc1" %>
<%@ Register TagPrefix="uc1" TagName="wa_event_supplements" Src="~/ucl/events/wa_event_supplements.ascx" %>
<%@ Register Src="/ucl/events/eventComment/wa_events_comment_v3.ascx" TagName="EventComment" TagPrefix="uc1" %>
<script type="text/javascript" src="/ucl_editor/js/swiper-bundle.min.js"></script>
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/swiper-bundle.min.css">
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/mobile/swiper.css">
<link rel="stylesheet" media="screen" type="text/css" href="/ucl_editor/events/css/comment2019.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>" />
<script type="text/javascript" src="/ucl_editor/events/js/mOnly.js?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>"></script>
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/mOnly.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/template_v2.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/animate.css" />


<!-- 이벤트 상단 -->
<div class="book_type3_wrap color3" >
    <div class="book_type3_top_in">
        <div class="tit_box f_SBAggro">
            <div class="sub_tit">민음사 편집팀 X 알라딘 도서팀</div>
            <h2>이 책을 추천합니다</h2>
        </div>

        <!--도서 슬라이드-->
        <div class="bookslide_box_out">
            <div class="swiper-container bookslide_box f_gothic">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="cover">
                            <uc1:wa_item_info runat="server" ItemId="295411013" vtype="2" AuthorType="1" CoverType="4"  PriceType="0" BorderType="0" TitleType="1" />
                        </div>
                        <div class="txt">
                            <p>오랜 시간 동안 과학이 선택한 것, 증명해낸 것, 발전시켜낸 것은 곧 시대의 상식과 가치관이 되어왔다. 과학은 과연 절대 믿음의 권위 앞에서 부끄러움이 없을까? 페미니즘의 눈으로 본 이 유서 깊은 신뢰엔 의아하고 억울한 지점이 많다. 과학기술학 연구자인 저자 임소연은 한데 묶인 경험이 별로 없이 어색한 사이로 지내온 여성과 과학을 함께 본다.</p>
                            <div class="name">노의성 (사이언스북스 추진)</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="cover">
                            <uc1:wa_item_info runat="server" ItemId="329386807" vtype="2" AuthorType="1" CoverType="4"  PriceType="0" BorderType="0" TitleType="1" />
                        </div>
                        <div class="txt">
                            <p>2023년 4월 국내에 처음 소개된 『맡겨진 소녀』로 국내 문인들과 문학 독자들의 열렬한 환호를 받은 클레어 키건의 대표작 『이처럼 사소한 것들』이 번역 출간되었다. 작가가 전작 『맡겨진 소녀』 이후 11년 만에 세상에 내놓은 소설로, 자국에서는 이미 오래전부터 거장의 반열에 오른 키건에게 미국을 넘어 세계적인 명성을 안겨준 작품이다.</p>
                            <div class="name">노의성 (사이언스북스 추진)</div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="cover">
                            <uc1:wa_item_info runat="server" ItemId="331807063" vtype="2" AuthorType="1" CoverType="4"  PriceType="0" BorderType="0" TitleType="1" />
                        </div>
                        <div class="txt">
                            <p>‘센류’는 일본의 정형시 중 하나로 5-7-5의 총 17개 음으로 된 짧은 시를 말한다. 이 책에서 소개하는 어르신(노인)들의 일상과 고충을 유쾌하게 담아낸 ‘실버 센류’는 전국유료실버타운협회의 주최로 2001년부터 매해 열리는 센류 공모전의 이름이기도 하다. 무려 11만 수가 넘는 센류 응모작 중에 선정된 걸작선 여든여덟 수를 추려 담았다.</p>
                            <div class="name">노의성 (사이언스북스 추진)</div>
                        </div>
                    </div>
                </div>
                <!-- 좌/우화살표 -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <!-- 페이지 bullet -->
            <div class="bookslide-pagination"></div>
        </div>
        <!--도서 슬라이드 //-->

    </div>
</div>
<!-- 이벤트 상단 //-->

<!--배너 영역-->
<div class="book_type3_banner f_gothic">
    <div class="banner_box color1">
        <a href="#">
            <div class="bn_txt">출판물 불법복제 근절 캠페인<br>우리의 소중한 저작권을 지켜주세요!</div>
            <div class="bn_img"><img src="//image.aladin.co.kr/img/events/book/2024/01/book_type3_bn.png" alt=""></div>
        </a>
    </div>
    <div class="banner_box color2">
        <a href="#">
            <div class="bn_txt">2023 타임지 선정<br>최고의 미스터리/스릴러 100선</div>
            <div class="bn_img"><img src="//image.aladin.co.kr/img/events/book/2024/01/book_type3_bn.png" alt=""></div>
        </a>
    </div>
</div>
<!--배너 영역 //-->

<!--증정품 영역-->
<div class="book_gift_wrap">
    <!-- 증정품 슬라이드 -->
    <div class="swiper-container giftswiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img1.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img2.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img3.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img4.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img5.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img6.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img7.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
        </div>
        <!-- 페이지 bullet -->
        <div class="pagination_box">
            <div class="swiper-pagination"></div>
            <button class="swiper_pause_btn">자동슬라이드 멈춤</button>
        </div>
        <!-- 좌/우화살표 -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

        <div class="zoom_btn"><a href="javascript:void(0);" onclick="MM_openBrWindow('/Ucl_Editor/events/book/220330_essay_popup.html','','scrollbars=yes,width=720,height=750')" alt="자세히 보기" />자세히보기</a></div>
    </div>
    <!--슬라이드 //-->

    <!--증정 조건-->
    <div class="monly_basic_event">
        <h3>피너츠 쥬트백+참 세트</h3>
        <p><span class="br2">대상도서 1권 포함, 에세이/여행 분야 3만원 이상 구입 시</span> <span class="br2">(택1, 각 마일리지 차감)</span></p>
        <a href="#" class="pink_big_btn">대상도서 모두 보기</a>
        <div class="monly_info_box">
            <a href="javascript:void(0)">꼭 읽어주세요</a>
            <div class="txt_box">
                <ul class="infolist">
                    <li>이벤트 기간 : 2022년 4월 5일 ~ 소진 시까지</li>
                    <li>이번 주문으로 발생할 예상 마일리지에서 우선 차감됩니다.</li>
                    <li>예상 마일리지로 부족한 금액은 기존에 보유한 적립금, 마일 리지 순서로 차감됩니다.</li>
                    <li>보유 적립금/마일리지가 부족한 경우, 남은 금액은 추가로 결제하셔야 합니다.</li>
                    <li>참고서, 중고도서, 외국도서,전자책 주문금액은 제외됩니다.</li>
                </ul>
            </div>
        </div>
    </div>
    <!--증정 조건 //-->
</div>
<!--증정품 영역 //-->


<!--앵커 탭-->
<a name="dw" id="dw"></a>

<div class="monly_swiper_tab_wrap">
    <div class="swiper-container monly_swiper_tab AnchorTab">
        <div class="swiper-wrapper">
            <div class="swiper-slide on"><a href="#01">신간 추천</a></div>
            <div class="swiper-slide"><a href="#02">토익</a></div>
            <div class="swiper-slide"><a href="#03">영어</a></div>
        </div>
    </div>
    <div class="thumbnail-button-next"></div>
    <div class="thumbnail-button-prev"></div>
</div>
<!--앵커 탭 //-->

<!--도서 목록-->
<a name="01" id="01"></a>
<div class="monly_booklist_wrap">
    <div class="list_tit">
        <a href="#">신간 추천<span>+모두보기</span></a>
    </div>
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="196026"  PagingView="false" CoverType="4" LType="2" IsPbookDCRate="true" ItemCount="80" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="false" IsBasketTool="1" BorderType="0" Sort="2" StockStatus="0"/>
    </div>
</div>
<!--도서 목록 //-->

<!--도서 목록-->
<a name="02" id="02"></a>
<div class="monly_booklist_wrap">
    <div class="list_tit">
        <a href="#">토익<span>+모두보기</span></a>
    </div>
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="49846" PagingView="false" CoverType="4" LType="2" IsPbookDCRate="true" ItemCount="80" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="false" IsBasketTool="1" BorderType="0" Sort="2"/>
    </div>
</div>
<!--도서 목록 //-->

<!--도서 목록-->
<a name="03" id="03"></a>
<div class="monly_booklist_wrap">
    <div class="list_tit">
        <a href="#">영어<span>+모두보기</span></a>
    </div>
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="49834" PagingView="false" CoverType="4" LType="2" IsPbookDCRate="true" ItemCount="80" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="false" IsBasketTool="1" BorderType="0" Sort="2"/>
    </div>
</div>
<!--도서 목록 //-->










<script>
var $j183 = $j183 || jQuery.noConflict();
var slides;
$j183(function ($) {
    var swiper2 = new Swiper('.giftswiper', {
        loop:true,
        /*effect: 'fade',*/
        speed:800,
        autoplay: {
        delay: 2500,
        disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
    });
    jQuery('.giftswiper .swiper_pause_btn').click(function(){
        if(jQuery(this).hasClass('stop')) {
            jQuery(this).removeClass('stop');
            jQuery(this).text('자동슬라이드 멈춤')
            swiper2.autoplay.start();
        } else {
            jQuery(this).addClass('stop');
            jQuery(this).text('자동슬라이드 시작')
            swiper2.autoplay.stop();
        }
    });

    var swiper = new Swiper('.bookslide_box', {
        loop:true,
        /*effect: 'fade',*/
        speed:800,
        // autoplay: {
        // delay: 2500,
        // disableOnInteraction: false,
        // },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.bookslide-pagination',
            clickable: true,
        },
    });
});
</script>



