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
<script type="text/javascript" src="/ucl_editor/js/swiper-bundle.min.js"></script>
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/swiper-bundle.min.css">
<link type="text/css" rel="stylesheet" href="/ucl_editor/css/mobile/swiper.css">
<link rel="stylesheet" media="screen" type="text/css" href="/ucl_editor/events/css/comment2019.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>" />
<script type="text/javascript" src="/ucl_editor/events/js/mOnly.js?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>"></script>
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/mOnly.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/template_v2.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">




<!-- 이벤트 시작 -->
<div class="book_type7_wrap f_esamanru color5">
    <div class="tit_box">
        <div class="sub_tit">당신의 책장에 한 권은 있다</div>
        <h2>창비 브랜드전</h2>
    </div>
    <!-- 상단 도서 -->
    <div class="swiper topbook">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="336953475" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">한 사람의 노래가 온 거리에 노래를</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="336881113" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">위풍당당 여우 꼬리 5</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="338400023" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">당근 할머니</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="336956202" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">이건 다만 사랑의 습관</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="338394181" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">조금 더 사랑하는 쪽으로</div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="cover"><uc1:wa_item_info runat="server" ItemId="337780045" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                <div class="txt_box">
                    <div class="txt1">답사기 하이라이트를 이 한 권에</div>
                    <div class="txt2">우리 집에 놀러 갈래?</div>
                </div>
            </div>
        </div>    
    </div>
    <!--도서 썸네일-->
    <div class="topbook_thumbs_out">
        <div thumbsSlider="" class="swiper topbook_thumbs">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="336953475" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>                
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="336881113" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="338400023" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="336956202" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="338394181" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="swiper-slide">
                    <uc1:wa_item_info runat="server" ItemId="337780045" vtype="2" AuthorType="0" CoverType="5"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
            </div>
        </div>
        <!--도서 썸네일 //-->
        <div class="topbook_thumbs-next"></div>
        <div class="topbook_thumbs-prev"></div>
    </div>
    <!-- 상단 도서 //-->

    <!--추천글 영역-->
    <div class="recommend_txt">
        <div class="txt1">한 권으로 읽는 나의 문화유산답사기</div>
        <p>
            기존 답사기의 원문을 그대로 싣지 않고 현황에 맞게 사실과 정보를 다듬었기에 재독을 하고 싶은 기존 독자들에게도 맞춤하다. <br>
            국내 여행과 K-컬처의 인기가 나날이 높아지는 지금, 우리의 뿌리를 조금 더 알고자 하는 모든 이들을 위한 책이다.
        </p>
        <div class="md_name">- MD 김알라</div>
        <div class="go_link">
            <a href="">추천글 전문 읽기</a>
        </div>
    </div>
    <!--추천글 영역 //-->


</div>





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

        <div class="zoom_btn"><a href="javascript:void(0);" onclick="MM_openBrWindow('/Ucl_Editor/events/book/250314_clock_popup.aspx','','scrollbars=yes,width=720,height=750')" alt="자세히 보기" />자세히보기</a></div>
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








<script>
var $j183 = $j183 || jQuery.noConflict();
var slides;
$j183(function ($) {   

    // 상단 대표 도서
    var topbookthumbs = new Swiper(".topbook_thumbs", {     
        slidesPerView: 'auto',
        freeMode: true,
        watchSlidesProgress: true,
        navigation: {
            nextEl: ".topbook_thumbs-next",
            prevEl: ".topbook_thumbs-prev",
        },        
    });
    var topbook = new Swiper(".topbook", {
        thumbs: {
            swiper: topbookthumbs,
        },
    });
    var thumbslength = jQuery('.topbook_thumbs .swiper-slide').length;
    if(thumbslength < 5) {
        jQuery('.topbook_thumbs .swiper-wrapper').css('justify-content', 'center')
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











