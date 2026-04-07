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


<!--이벤트 상단-->
<div class="book_type10_wrap">
    <div class="book_type10_in">  
        <a href="">
            <div class="cover_box"><img src="//image.aladin.co.kr/product/32698/87/cover500/k282936663_1.jpg" alt="도서이미지"></div>
            <div class="txt_box f_esamanru"> 
                <div class="sub_tit" style="background: #0892ff;">eBook 단독 출간</div>
                <h2 style="background: #e84e04;">1961 도쿄 하우스</h2>       
                <!--데코 아이콘-->
                <span class="book_decor icon_motion">&#127881;</span>
            </div>
        </a>
        <div class="book_message">
            <p>리얼리티 관찰 예능에서 벌어진 살인 사건 3개월간 1961년의 단지 체험에 성공하면 500만 엔을 준다는 방송 기획에 혹해 두 가족, 총 여덟 명의 인원이 리얼리티 쇼에 출연하게 된다. 하지만 살기 좋았던 시대라는 데 너무 방심한 탓일까? 평온할 것 같았던 단지 생활은 생각만큼 호락호락하지 않았고 설상가상으로 불륜과 살인 사건이 잇따르면서 생지옥이 되어 버린다. 심지어 방송국 관계자들 사이에서도 불신이 난무하면서 촬영 현장은 말 그대로 아수라장으로 변한다. 반전을 거듭하며 연이어 일어나는 참극은 어디까지가 허구이고 어디까지가 현실일까……?</p> 
        </div>
    </div>


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
<!--이벤트 상단 //-->




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


});    
</script>





