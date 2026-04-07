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
<div class="book_type2_top color1">
    <div class="book_type2_top_in">
        <div class="tit_box f_GmarketSans">
            <div class="sub_tit1">요리 서바이벌</div>
            <h2>흑백요리사 셰프 도서 모음전</h2>
            <div class="sub_tit2">본투리드 하이볼</div>
        </div>
        <!--도서 롤링-->
        <div class="book_box">
            <!--첫번째줄 - 최소 3권 이상 넣어주세요-->
            <div class="swiper-container bookslide1">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="318319852" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="309922930" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="287307889" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="300318051" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                </div>
            </div>
            <!--두번째줄 - 최소 3권 이상 넣어주세요-->
            <div class="swiper-container bookslide2">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="278588384" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="320427890" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="281015963" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="swiper-slide"><uc1:wa_item_info runat="server" ItemId="297173982" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                </div>
            </div>
        </div>
        <!--도서 롤링 //-->
    </div>
</div>  
<!-- 이벤트 상단 //-->

<!--증정품 영역-->
<div class="book_gift_wrap pdtop"> <!-- pdtop : 상단 여백을 위한 클래스 -->
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
    <div class="monly_basic_event f_GmarketSans">
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

<!--해시 태그 -->
<div class="book_type2_tag f_NanumBarun">
    <div class="book_type2_tag_in">
        <a href="" class="blue">#2023년 국어 적중 또 적중</a>
        <a href="" class="purple">#2023 대학교재 무료배송</a>
        <a href="" class="red">#EBS 수능 특강</a>
        <a href="" class="red">#EBS 수능 특강</a>
        <a href="" class="blue">#2023년 국어 적중 또 적중</a>
        <a href="" class="purple">#2023 대학교재 무료배송</a>
    </div>
</div>
<!--해시 태그 //-->

<!--배너 - 8가지 색상 color1 ~ color8-->
<div class="book_type2_banner f_NanumBarun color1">
    <a href="">
        <strong>아니 에르노 수상 기념 특전</strong> 책장 머그.트로피 머그
    </a>
</div>
<div class="book_type2_banner f_NanumBarun color5">
    <a href="">
        <strong>2023 노벨문학상</strong> 망토 담요, 텀블러
    </a>
</div>

<!--배너 //-->

<!--쿠폰 2단-->
<div class="book_type2_coupon type1 f_NanumBarun">
    <!--쿠폰-->
    <div>
        <div class="tit">참고서 1천원 할인 쿠폰</div>
        <div class="coupon_down">
            <div class="coupon_name">참고서쿠폰</div>
            <uc1:wa_coupondown_btn id="Wa_coupondown_btn1" nType="15882" runat="server" Price="1,000"></uc1:wa_coupondown_btn>
            <!-- <uc1:wa_coupondown_btn nTypeList="22618,22616,15102,21018" runat="server" Price="10%" /></uc1:wa_coupondown_btn> -->
        </div>
    </div>
    <!--쿠폰 //-->

    <!--쿠폰-->
    <div>
        <div class="tit">분철 1천원 할인 쿠폰</div>
        <div class="coupon_down">
            <div class="coupon_name">분철할인쿠폰</div>
            <uc1:wa_coupondown_btn id="Wa_coupondown_btn2" nType="15882" runat="server" Price="1,000"></uc1:wa_coupondown_btn>
            <!-- <uc1:wa_coupondown_btn nTypeList="22618,22616,15102,21018" runat="server" Price="10%" /></uc1:wa_coupondown_btn> -->
        </div>
    </div>
    <!--쿠폰 //-->
</div>    
<!--쿠폰 2단 //--> 

<!--쿠폰 1단-->
<div class="book_type2_coupon type2 f_NanumBarun">
    <!--쿠폰-->
    <div>
        <div class="tit">EBS 초중고 수험서<br><strong>1천원 할인 쿠폰</strong></div>
        <div class="coupon_down">
            <div class="coupon_name">참고서쿠폰</div>
            <uc1:wa_coupondown_btn id="Wa_coupondown_btn3" nType="15882" runat="server" Price="1,000"></uc1:wa_coupondown_btn>
            <!-- <uc1:wa_coupondown_btn nTypeList="22618,22616,15102,21018" runat="server" Price="10%" /></uc1:wa_coupondown_btn> -->
        </div>
    </div>
    <!--쿠폰 //-->
</div>    
<!--쿠폰 1단 //-->

<!--쿠폰 1단-->
<div class="book_type2_coupon type2 f_NanumBarun">
    <!--쿠폰-->
    <div>
        <div class="tit">분철 할인 쿠폰<br><strong>1천원 할인 쿠폰</strong></div>
        <div class="coupon_down">
            <div class="coupon_name">분철할인쿠폰</div>
            <uc1:wa_coupondown_btn id="Wa_coupondown_btn4" nType="15882" runat="server" Price="1,000"></uc1:wa_coupondown_btn>
            <!-- <uc1:wa_coupondown_btn nTypeList="22618,22616,15102,21018" runat="server" Price="10%" /></uc1:wa_coupondown_btn> -->
        </div>
    </div>
    <!--쿠폰 //-->
</div>  
<!--쿠폰 1단 //--> 

<br><br>

<a name="dw" id="dw"></a>
<uc1:wa_RandomTab runat="server" RandomUcl="2024_book_type2_1,2024_book_type2_2,2024_book_type2_3" NotRandomIndex="" />
 





<script>
var $j183 = $j183 || jQuery.noConflict();
var slides;
$j183(function ($) {       
    var swiper = new Swiper(".bookslide1", {
        direction: "vertical",
        autoplay: {
            delay: 0,
            stopOnLastSlide: false,
            disableOnInteraction: false,
        },
        speed: 5000,
        loop: true,
        slidesPerView: "auto",
        loopAdditionalSlides: 1,
        touchRatio: 0,
        allowTouchMove: false,
    });

    var swiper = new Swiper(".bookslide2", {
        direction: "vertical",
        autoplay: {
            delay: 0,
            stopOnLastSlide: false,
            disableOnInteraction: false,
            reverseDirection: true,
        },
        speed: 5000,
        loop: true,
        slidesPerView: "auto",
        loopAdditionalSlides: 1,
        touchRatio: 0,
        allowTouchMove: false,
    });

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
</script>




