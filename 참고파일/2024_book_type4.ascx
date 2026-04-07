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
<div class="book_type4_wrap color1" >
    <!--이벤트 상단-->
    <div class="book_type4_top">
        <div class="tit_box f_NanumBarun">
            <div class="sub_tit">2024 '타임' 선정 최고의</div>
            <h2>미스터리.스릴러<br>100선</h2>
        </div>
        <!--도서 슬라이드-->
        <div class="swiper-container bookslide f_NanumBarun">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="329386807" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="329386807" vtype="2" AuthorType="0" CoverType="0"  PriceType="1" BorderType="0" TitleType="1" />
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="331807063" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="331807063" vtype="2" AuthorType="1" CoverType="0"  PriceType="0" BorderType="0" TitleType="1" />
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="328923887" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="328923887" vtype="2" AuthorType="1" CoverType="0"  PriceType="0" BorderType="0" TitleType="1" />
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="332732565" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="332732565" vtype="2" AuthorType="1" CoverType="0"  PriceType="0" BorderType="0" TitleType="1" />
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="323548193" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="323548193" vtype="2" AuthorType="1" CoverType="0"  PriceType="0" BorderType="0" TitleType="1" />
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="315552626" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="0" /></div>
                    <div class="txt">
                        <uc1:wa_item_info runat="server" ItemId="315552626" vtype="2" AuthorType="1" CoverType="0"  PriceType="0" BorderType="0" TitleType="1" />
                    </div>
                </div>
            </div>
        </div>        
        <!--도서 슬라이드 //-->
    </div>
    <!-- 이벤트 상단 //-->

    <!--책 속의 문장들-->
    <div class="book_type4_sentence f_NanumBarun">
        <h3>책 속의 문장들</h3>
        <div class="swiper-container sentence_slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="">
                        <div class="tit">설계자들</div>
                        <p>역사를 뒤흔든 암살 사건 뒤에는 항상 '설계자'들이 있다. 설계자들은 권력의 배후에서 움직이는 고도의 지적 능력자들. 그들의 설계가 자객에게 떨어지고..</p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="">
                        <div class="tit">당신이 필요한 세계</div>
                        <p>고식물학자로서 발굴 현장에 머물 때면 살아 있는 것 같지만 결국 사투와 같은 육아의 현장으로 돌아가야 한다. 어느 날 그녀는 집에서 낯선 발소리를 듣는다.</p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="">
                        <div class="tit">우리는 언제나 성에 살았다</div>
                        <p>육 년 전 사건 이후 마을에서 고립된 블랙우드 집안. 휘황찬란한 그들의 집에는 미친 남자와 세상에 대해 아무것도 모르는 자매만이 남아 살아가고 있다.</p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="">
                        <div class="tit">핑거스미스</div>
                        <p>태어나자마자 고아가 되어 소매치기들 틈에서 자란 수 트린더.</p>
                    </a>
                </div>
            </div>
            <!-- 좌/우화살표 -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>        
    </div>
    <!--책 속의 문장들 //-->

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
    <div class="banner_box color6">
        <a href="#">
            <div class="bn_txt">2023 노벨문학상 ‘욘 포세’ 대표작과 <span class="br"><em>망토 담요 · 텀블러</em></span></div>
        </a>
    </div>
    <!--배너 끝-->

    <!--배너 시작-->
    <div class="banner_box color9">
        <a href="#">
            <div class="bn_txt">그림책 전문가와 함께하는 ‘그림책, 담다’ <span class="br"><em>우드볼, 숟가락</em></span></div>
        </a>
    </div>
    <!--배너 끝-->
</div>
<!--배너 영역 //-->


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

    var swiper = new Swiper('.bookslide', {
        autoplay: {
            delay: 0,
            stopOnLastSlide: false,
            disableOnInteraction: false,
        },
        speed: 8000,
        loop: true,
        slidesPerView: "auto",
        loopAdditionalSlides: 1,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.bookslide-pagination',
            clickable: true,
        },
        touchRatio: 0,
        allowTouchMove: false,
    }); 

    //책속의 문장들
    var swiper = new Swiper('.sentence_slide', {
        slidesPerView: 'auto',
        centeredSlides: true,
        loop: true,
        freeMode: {
            enabled: true,
            sticky: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    
    });
});    
</script>





