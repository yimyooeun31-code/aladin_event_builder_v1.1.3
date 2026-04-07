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
<div class="book_type6_wrap color1">
    <div class="book_type6_top">
        <div class="tit_box">
            <div class="sub_tit f_NanumBarun">마침내 찾아온 기술적 특이점</div>            
            <h2 class="f_Cafe24Dangdanghae"> 
                <!--최대 6자-->
                <span>G</span>
                <span>P</span>
                <span>T</span>
                <span>도</span>
                <span>서</span>
                <span>전</span>
            </h2>
        </div>

        <ul class="book_box f_NanumBarun">
            <!--도서 시작-->
            <li>
                <div class="cover">
                    <uc1:wa_item_info runat="server" ItemId="315408319" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="text">
                        <div class="tit">챗GPT, 질문이 돈이 되는 세상</div>
                        <div class="author">전상훈, 최서연 지음</div>
                </div>
            </li>
            <!--도서 끝-->
            <!--도서 시작-->
            <li>
                <div class="cover">
                    <uc1:wa_item_info runat="server" ItemId="314516624" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0" />
                </div>
                <div class="text">
                        <div class="tit">비전공자도 이해할 수 있는 AI 지식 (챗GPT 수록 개정판)</div>
                        <div class="author">박상길, 정진호 지음</div>
                </div>
            </li>
            <!--도서 끝-->
        </ul>
    </div>

</div>
<!-- 이벤트 상단 //-->

<!-- 책 속의 문장 -->
<div class="book_type6_sentence color1 f_NanumBarun">
    <h3>책 속의 문장</h3>
    <ul class="sentence_box">
        <!--문장-->
        <li>
            <div class="page">P.55</div>
            <p>우리는 과연 얼마나 많은 데이터를 생산하고 있을까? 아침에 일어나 유튜브 영상 하나만 본다고 생각해 보자. 내가 영상을 클릭하는 순간 나로부터 발생하는 데이터는 수십 가지다.</p>
        </li>
        <!--문장 //-->
        <!--문장-->
        <li>
            <div class="page">P.181</div>
            <p>우리는 과연 얼마나 많은 데이터를 생산하고 있을까? 아침에 일어나 유튜브 영상 하나만 본다고 생각해 보자. 내가 영상을 클릭하는 순간 나로부터 발생하는 데이터는 수십 가지다.</p>
        </li>
        <!--문장 //-->
    </ul>
</div>
<!-- 책 속의 문장 //-->




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

<!--배너 영역-->
<div class="book_type4_banner">
    <!--배너 시작-->
    <div class="banner_box color3">
        <a href="#">
            <div class="bn_txt">2023 노벨문학상 ‘욘 포세’ 대표작과 <span class="br"><em>망토 담요 · 텀블러</em></span></div>
        </a>
    </div>
    <!--배너 끝-->

    <!--배너 시작-->
    <div class="banner_box color6">
        <a href="#">
            <div class="bn_txt">그림책 전문가와 함께하는 ‘그림책, 담다’ <span class="br"><em>우드볼, 숟가락</em></span></div>
        </a>
    </div>
    <!--배너 끝-->
</div>
<!--배너 영역 //-->

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

</script>


