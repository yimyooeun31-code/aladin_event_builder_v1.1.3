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




<!-- 이벤트 상단 -->
<div class="book_type5_wrap color1" >
    <div class="book_type5_top">
        <div class="tit_box f_NanumBarun">
            <h2><em>2024 총 결산</em><br>민음사출판그룹 브랜드전</h2>
            <div class="sub_tit">올 한 해 가장 많은 사랑을 받은 북킷리스트 10</div>
        </div>
    </div>
</div>
<!-- 이벤트 상단 //-->

<!--상단 도서-->
<div class="book_type5_list color1">
    <span class="bg"></span><!--span 삭제 금지 -->
    <ul>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=329386807">
                <div class="cover"><img src="//image.aladin.co.kr/product/32938/68/cover500/k472936042_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/32938/68/cover/k472936042_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">이처럼 사소한 것들</div>
                    <div class="author">클레어 키건 지음, 홍한별 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=332532513">
                <div class="cover"><img src="//image.aladin.co.kr/product/33253/25/cover500/k912938661_2.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/33253/25/cover200/k912938661_2.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">보스턴 사람들</div>
                    <div class="author">헨리 제임스 지음, 김윤하 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=326484595">
                <div class="cover"><img src="//image.aladin.co.kr/product/32648/45/cover500/k072935654_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/32648/45/cover200/k072935654_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">남에게 보여주려고 인생을 낭비하지 마라</div>
                    <div class="author">아르투어 쇼펜하우어 지음, 박제헌 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=333419849">
                <div class="cover"><img src="//image.aladin.co.kr/product/33341/98/cover500/k222938702_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/33341/98/cover500/k222938702_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">금단의 마술</div>
                    <div class="author">히가시노 게이고 지음, 김난주 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=333187195">
                <div class="cover"><img src="//image.aladin.co.kr/product/33318/71/cover500/k352938584_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/33318/71/cover500/k352938584_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">격정세계</div>
                    <div class="author">찬쉐 지음, 강영희 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=332058591">
                <div class="cover"><img src="//image.aladin.co.kr/product/33205/85/cover500/k912937954_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/33205/85/cover500/k912937954_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">마지막 마음이 들리는 공중전화</div>
                    <div class="author">이수연 지음</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=329151550">
                <div class="cover"><img src="//image.aladin.co.kr/product/32915/15/cover500/8936480073_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/32915/15/cover500/8936480073_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">국토박물관 순례 1</div>
                    <div class="author">유홍준 지음</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=328065875">
                <div class="cover"><img src="//image.aladin.co.kr/product/32806/58/cover500/k832936705_1.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/32806/58/cover500/k832936705_1.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">전지적 푸바오 시점</div>
                    <div class="author">송영관(에버랜드 동물원) 지음, 박제헌 옮김</div>
                </div>
            </a>
        </li>
        <li>
            <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=329417970">
                <div class="cover"><img src="//image.aladin.co.kr/product/32941/79/cover500/k032936148_2.jpg" alt=""></div>
                <div class="shadow"><span><img src="//image.aladin.co.kr/product/32941/79/cover500/k032936148_2.jpg" alt=""></span></div>
                <div class="text">
                    <div class="tit">느리게 나이 드는 습관</div>
                    <div class="author">정희원 지음</div>
                </div>
            </a>
        </li>
    </ul>
</div>   
<!--상단 도서 //-->  


<!--쿠폰 영역 -->
<div class="monly_basic_event">
    <h3><span class="br">이벤트 구매 고객에게 드리는</span> <span class="br">즉시 할인 쿠폰!</span></h3>
    <p>2만원 이상 2천원, 4만원 이상 5천원 할인</p>

    <!--쿠폰-->
    <div class="coupon_down new">
        <div class="coupon_name">즉시할인쿠폰</div>
        <uc1:wa_coupondown_btn id="Wa_coupondown_btn1" nType="15882" runat="server" Price="5,000"></uc1:wa_coupondown_btn>
        <!-- <uc1:wa_coupondown_btn nTypeList="22618,22616,15102,21018" runat="server" Price="10%" /></uc1:wa_coupondown_btn> -->
    </div>

    <ul class="infolist">
        <li>이벤트 기간 : 4월 18일 ~ 5월 18일</li>
        <li>본 쿠폰은 다운로드 횟수 제한이 없습니다.</li>
        <li>본 쿠폰은 온라인 전용 쿠폰으로 매장에서 사용 불가입니다.</li>
    </ul>
</div>
<!--쿠폰 영역 //-->



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


<!--도서 목록 -->
<div class="monly_booklist_wrap">
    <div class="list_tit">
        <a href="#">신간 추천<span>+모두보기</span></a>
    </div>
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="196026"  PagingView="false" CoverType="4" LType="2" IsPbookDCRate="true" ItemCount="80" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="false" IsBasketTool="1" BorderType="0" Sort="2" StockStatus="0"/>
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

});

    
    document.addEventListener("DOMContentLoaded", function() {
    var liElements = document.querySelectorAll('.book_type5_list li');
    var liHeights = [];

    // 화면 해상도 확인
    var screenWidth = window.innerWidth;

    // 높이를 측정할 li 요소의 범위 결정
    var endIndex = screenWidth >= 750 ? 3 : 2;

    // 선택된 범위 내의 li 요소의 높이 측정
    for (var i = 0; i < endIndex; i++) {
        liHeights.push(liElements[i].offsetHeight);
    }

    // 배열에서 가장 큰 값을 찾음
    var maxLiHeight = Math.max(...liHeights);

    // span.bg의 높이로 설정
    document.querySelector('.book_type5_list .bg').style.height = maxLiHeight + 'px';
});
</script>



