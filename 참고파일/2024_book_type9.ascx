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
<%@ Register TagPrefix="uc1" TagName="alarm" Src="/ucl/m/Event/m_Event_NewAlarm.ascx" %>
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/swiper-bundle.min.css">
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/mobile/swiper.css">
<link rel="stylesheet" media="screen" type="text/css" href="/ucl_editor/events/css/comment2019.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>" />
<script type="text/javascript" src="/ucl_editor/events/js/mOnly.js?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>"></script>
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/mOnly.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/template_v2.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">




<!-- 이벤트 시작 -->
<div class="book_type9_wrap f_NanumBarun color3">
    <div class="book_type9_in">
        <div class="tit_box">
            <div class="sub_tit">영화평론가 이동진이 선정한</div>
            <h2>2024 올해의 책</h2>
        </div>

        <!-- 대표도서 -->
        <div class="book_type9_list_out">
            <div class="swiper book_type9_list random">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="cover"><uc1:wa_item_info runat="server" ItemId="330508029" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                        <div class="tit"><uc1:wa_item_info runat="server" ItemId="330508029" vtype="2" AuthorType="0" CoverType="0"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="0" /></div>
                    </div>                
                    <div class="swiper-slide">
                        <div class="cover"><uc1:wa_item_info runat="server" ItemId="329543269" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                        <div class="tit"><uc1:wa_item_info runat="server" ItemId="329543269" vtype="2" AuthorType="0" CoverType="0"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="0" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div class="cover"><uc1:wa_item_info runat="server" ItemId="338119192" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                        <div class="tit"><uc1:wa_item_info runat="server" ItemId="338119192" vtype="2" AuthorType="0" CoverType="0"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="0" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div class="cover"><uc1:wa_item_info runat="server" ItemId="309295168" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                        <div class="tit"><uc1:wa_item_info runat="server" ItemId="309295168" vtype="2" AuthorType="0" CoverType="0"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="0" /></div>
                    </div>
                    <div class="swiper-slide">
                        <div class="cover"><uc1:wa_item_info runat="server" ItemId="336489042" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                        <div class="tit"><uc1:wa_item_info runat="server" ItemId="336489042" vtype="2" AuthorType="0" CoverType="0"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="0" /></div>
                    </div>
                </div>
            </div>
            <div class="pagination_box">
                <div class="swiper-pagination book_type9_pagination"></div>
                <button class="swiper_pause_btn">자동슬라이드 멈춤</button>
            </div>            
        </div>
        <!-- 대표도서 //-->

    </div>
</div>

<!--책속의 문장-->
<div class="book_type9_sentence_out">
    <h3>책 속의 문장</h3>
    <div class="swiper book_type9_sentence random">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="text_box">
                    <div class="text1">제 경험을 활용하는 게 제 강점이에요.</div>
                    <div class="text2"><사람을 목격한 사람> 중<br>- 인문 MD 김경영</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="text_box">
                    <div class="text1">실제로 사람들은 이들의 호소를 곧잘 의심스러운 눈으로 바라본다. 네가 그런 존재이기 때문에 그런 폭력을 유발한 건 아닌지. 너는 대수롭지 않은 일에 너무 고통을 느끼는 건 아닌지. 이것이 사람을 구차하게 만든다.</div>
                    <div class="text2"><사람을 목격한 사람> 중<br>- 인문 MD 김경영</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="text_box">
                    <div class="text1">그는 관람자로서는 고통을 들여다보지만 당국자로서는 고통을 외면한다. </div>
                    <div class="text2"><사람을 목격한 사람> 중<br>- 인문 MD 김경영</div>
                </div>
            </div>
        </div>        
    </div>
</div>
<!--책속의 문장 //-->

<!--배너-->
<div class="book_type9_banner_out">
    <div class="swiper book_type9_banner">
        <div class="swiper-wrapper">
            <div class="swiper-slide color1">
                <a href="">
                    <div class="txt">출판물 불법복제<br>근절 캠페인</div>
                    <div class="thum"><img src="//image.aladin.co.kr/img/events/book/2024/02/book_type9_banner.png" alt=""></div>
                </a>
            </div>
            <div class="swiper-slide color1">
                <a href="">
                    <div class="txt">출판물 불법복제<br>근절 캠페인</div>
                    <div class="thum"><img src="//image.aladin.co.kr/img/events/book/2024/02/book_type9_banner.png" alt=""></div>
                </a>
            </div>
            <div class="swiper-slide color1">
                <a href="">
                    <div class="txt">출판물 불법복제<br>근절 캠페인</div>
                    <div class="thum"><img src="//image.aladin.co.kr/img/events/book/2024/02/book_type9_banner.png" alt=""></div>
                </a>
            </div>
            <div class="swiper-slide color1">
                <a href="">
                    <div class="txt">출판물 불법복제<br>근절 캠페인</div>
                    <div class="thum"><img src="//image.aladin.co.kr/img/events/book/2024/02/book_type9_banner.png" alt=""></div>
                </a>
            </div>                
        </div>
    </div>    
    <!-- 좌/우화살표 -->
    <div class="thumbnail-button-next"></div>
    <div class="thumbnail-button-prev"></div>
</div>
<!--배너 //-->




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



<!--도서 목록-->
<div class="monly_booklist_wrap">
    <div class="list_tit">
        <a href="#">창비 BEST 20<span>+모두보기</span></a>
    </div>
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="196026"  PagingView="false" CoverType="4" LType="2" IsPbookDCRate="true" ItemCount="80" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="false" IsBasketTool="1" BorderType="0" Sort="2" StockStatus="0"/>
    </div>  
</div>
<!--도서 목록 //-->







<script type="text/javascript" src="/ucl_editor/js/swiper-bundle.min.js"></script>
<script>
var $j183 = $j183 || jQuery.noConflict();
var slides;
$j183(function ($) {   

    // 상단 대표 도서
    var bookType9List = new Swiper(".book_type9_list", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
            rotate: 40,
            stretch: 0,
            depth: 160,
            modifier: 1,
            slideShadows: true,
        },
        loop:true,
        speed:800,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".book_type9_pagination",
            clickable: true,
            type: "fraction",
        },
        initialSlide : random_index(),
    });
    jQuery('.book_type9_list_out .swiper_pause_btn').click(function(){
        if(jQuery(this).hasClass('stop')) {
            jQuery(this).removeClass('stop');
            jQuery(this).text('자동슬라이드 멈춤')
            bookType9List.autoplay.start();
        } else {
            jQuery(this).addClass('stop');
            jQuery(this).text('자동슬라이드 시작')
            bookType9List.autoplay.stop();
        }
    });

    // 책 속의 문장
    var type9Sentence = new Swiper('.book_type9_sentence', {
        loop:true,
        effect: 'fade',
        speed:800,
        autoplay: {
            delay: 6500,
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
        initialSlide : random_index(),
    });

    // 배너
    var type9Banner = new Swiper('.book_type9_banner', {
        loop: false,
        freeMode: true,
        slidesPerView: 'auto',
        navigation: {
            nextEl: ".thumbnail-button-next",
            prevEl: ".thumbnail-button-prev",
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },         
    });
    // 배너 갯수가 3개 이하일때 센터정렬
    var bnlength = jQuery('.book_type9_banner').find('.swiper-slide').length;
    if(bnlength <= 3) {
        jQuery('.book_type9_banner').addClass('center_align');
    } else {
        jQuery('.book_type9_banner').removeClass('center_align');
    }


    // 증정품 슬라이드
    var swiper2 = new Swiper('.giftswiper', {
        loop:true,
        /*effect: 'fade',*/
        speed:800,
        autoplay: {
        delay: 5000,
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











