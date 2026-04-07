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




<!-- 이벤트 시작 -->
<div class="book_type1_wrap f_SBAggro color1" >
    <!--이벤트 상단-->
    <div class="book_type1_top">
        <div class="book_type1_top_in">
            <div class="tit_box">
                <div class="sub_tit1">읽기만 하면 내 것이 되는</div>
                <h2>이달의<br><strong>자기계발서</strong></h2>
                <div class="sub_tit2">
                    100번을 반복하면 좋은 습관을<br>
                    만들 수 있다는 것을 알게 되어도,<br>
                    1만 시간을 연습하면 전문가가 될 수 있다
                </div>
            </div>
            <!--대표도서 롤링-->
            <div class="swiper book_type1_slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <uc1:wa_item_info runat="server" ItemId="323548193" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0" />
                    </div>
                    <div class="swiper-slide">
                        <uc1:wa_item_info runat="server" ItemId="303308485" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0" />
                    </div>                    
                    <div class="swiper-slide">
                        <uc1:wa_item_info runat="server" ItemId="320661613" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0" />
                    </div>                              
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <!--대표도서 롤링 //-->
        </div>
    </div>
    <!--이벤트 상단 //-->
    <!--책속의 문장-->
    <div class="book_type1_sentence">
        <div class="book_type1_sentence_in">
            <div class="tit">책 속의 문장</div>
            <!--문장 시작-->
            <div class="s_box">
                <div class="page">p.10</div>
                <p>
                    스스로 생각하는 인간만이, AI가 작업한 용의 그림을 완성시키는 ‘화룡점정’의 자격을 얻게 될 것이다.
                </p>
            </div>
            <!--문장 끝-->
            <!--문장 시작-->
            <div class="s_box">
                <div class="page">p.133</div>
                <p>
                    100번을 반복하면 좋은 습관을 만들 수 있다는 것을 알게 되어도, 1만 시간을 연습하면 전문가가 될 수 있다는 이론을 배워도 결국 처음 1번을 시작하지 못하면 야심 차게 읽은 책은 도루묵이 된다.
                </p>
            </div>
            <!--문장 끝-->
            <!--문장 시작-->
            <div class="s_box">
                <div class="page">p.10</div>
                <p>
                    스스로 생각하는 인간만이, AI가 작업한 용의 그림을 완성시키는 ‘화룡점정’의 자격을 얻게 될 것이다.
                </p>
            </div>
            <!--문장 끝-->
            <!--문장 시작-->
            <div class="s_box">
                <div class="page">p.133</div>
                <p>
                    100번을 반복하면 좋은 습관을 만들 수 있다는 것을 알게 되어도, 1만 시간을 연습하면 전문가가 될 수 있다는 이론을 배워도 결국 처음 1번을 시작하지 못하면 야심 차게 읽은 책은 도루묵이 된다.
                </p>
            </div>
            <!--문장 끝-->            
        </div>
    </div>
    <!--책속의 문장 //-->

    <!--증정품 영역-->
    <div class="book_gift_wrap pdtop"> <!-- pdtop : 상단 여백을 위한 클래스 -->
        <!-- 증정품 슬라이드 -->
        <div class="swiper-container giftswiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img1.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
                <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2022/01/220330_essay_img2.jpg" alt="피너츠 쥬트백+참 세트" width="100%"></div>
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
        <!--증정품 슬라이드 //-->

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

    <!--대표도서-->
    <div class="book_type1_booklist">
        <div class="book_type1_booklist_in">
            <div class="tit">타이틀이 옵니다</div>
            <!-- ItemId 목록 시작 -->
            <ul>
                <li><uc1:wa_item_info runat="server" ItemId="292816855" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="292817554" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="292511593" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="292691257" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="293489657" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="292523524" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="293212327" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
                <li><uc1:wa_item_info runat="server" ItemId="292318165" vtype="2" AuthorType="0" CoverType="4"  PriceType="0" BorderType="0" TitleType="1"  TitleCut="12" /></li>
            </ul>
            <!-- ItemId 목록 끝 -->
        </div>
    </div>
    <!--대표도서//-->
    
    <!--동영상-->
    <div class="video_box_out">
        <div class="video_box">
            <div>
                <iframe src="https://www.youtube.com/embed/WCe29ZQwIu8" title="책의 시작" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
            </div>
        </div>
        <a href="#" class="pink_big_btn">동영상 목록 바로가기</a>
    </div>
    <!--동영상 //-->
</div>
<!-- 이벤트 끝 //-->



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
    <!--앵커 탭-->        
    
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
   

    <!--댓글-->
    <a name="comment" id="comment"></a>
    <div class="monly_Comment_wrap">
    <uc1:EventComment ID="ucEventComment" runat="server" 
            EventId="234401" 
            IsHideCover="1"
            IsOpen="1" 
            PageCount="20" 
            SubGroupId="0" 
            AdminEmail="edalba2@aladin.co.kr"
            Title="독자와 출판사가 직접 소통할 기회는 많지 않죠. <br/>
                리시올/플레이타임 출판사에 전하고 싶었던 메시지를 써주세요. <br/>
                여러분의 상냥한 마음들을 모두 전해드릴게요."
            SubTitle="추첨을 통해 100분께 적립금 1000원을 드립니다. <br/> (이벤트 기간: 12월 31일까지/ 당첨자 발표: 1월 4일) "
            IsFileUploader=true
            IsFileList=true />
    </div>

    
    <script type="text/javascript" src="/ucl_editor/js/swiper-bundle.min.js"></script>
    <script>
    var $j183 = $j183 || jQuery.noConflict();
    var slides;
    $j183(function ($) {    

        var swiper = new Swiper(".book_type1_slide", {
            effect: "cards",   
            cardsEffect: {
                perSlideOffset: 18,
                perSlideRotate: 0,
                // rotate: false,
            },  
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });

        var giftswiper = new Swiper('.giftswiper', {
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
                giftswiper.autoplay.start();
            } else {
                jQuery(this).addClass('stop');
                jQuery(this).text('자동슬라이드 시작')
                giftswiper.autoplay.stop();
            }
        });     
        
    });    
    </script>





