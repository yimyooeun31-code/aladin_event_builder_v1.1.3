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




<style>
    .monly_top {background: url(//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_mbg.jpg) #f2eb4f no-repeat top center / 100% auto;}

/* pc 대응 */
@media screen and (min-width: 750px) {
    .monly_top {background: url(//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_bg.jpg) #f2eb4f no-repeat center bottom / 1400px auto;}
}
</style>


<!-- 이벤트 시작 -->
<div class="monly_top" >
    <div class="monly_top_in">
       <div class="copyright" style="display:none;">ⓒPeanuts</div>
    </div>
</div>

<div class="monly_basic_wrap">
    <!--타이틀-->
    <div class="monly_basic_tit">
        <div class="subtit">김영진 그림책</div>
        <h2>길벗어린이 시리즈</h2>
        <p>끝말잇기 수건</p>
    </div>
    <!--타이틀 //-->

    <!-- 슬라이드 -->
    <div class="swiper-container giftswiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_img01.jpg" width="100%" alt=""></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_img02.jpg" width="100%" alt=""></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_img03.jpg" width="100%" alt=""></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_img04.jpg" width="100%" alt=""></div>
            <div class="swiper-slide"><img src="//image.aladin.co.kr/img/events/book/2023/04/231006_gilbut_img05.jpg" width="100%" alt=""></div>
        </div>
        <!-- 페이지 bullet -->
        <div class="pagination_box">
            <div class="swiper-pagination"></div>
            <button class="swiper_pause_btn">자동슬라이드 멈춤</button>
        </div>
        <!-- 좌/우화살표 -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>



        <div class="zoom_btn"><a href="javascript:void(0);" onclick="MM_openBrWindow('/Ucl_Editor/events/book/sample_popup2.aspx','','scrollbars=yes,width=720,height=750')"  title="새창열림"/>자세히보기</a></div>
    </div>
    <!--슬라이드 //-->

    <!--증정 조건-->
    <div class="monly_basic_event">
        <h3>끝말잇기 수건</h3>
        <p><span class="br2">&lt;끝말잇기&gt;포함<br /> 국내도서 2만원 이상 구매 시</p>
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

<!--대표 도서 목록-->
<div class="book_type8_list f_NanumBarun">
    <div class="list_tit">
        <a href="#">김영진 그림책(길벗어린이)<span>+모두보기</span></a>
    </div>
    <div class="book_list">
        <ul>
            <!--도서 1권-->
            <li>
                <a href="/shop/wproduct.aspx?ItemId=325787458">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="325787458" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                    <div class="txt">
                        <div class="tit">끝말잇기</div>
                        <div class="sub_tit">"순댓국에서 순댓국으로"</div>
                        <p>
                            <끝말잇기>는 일상 속에서 때때로 마주하게 되는 가족의 유대감을 상상력 넘치는 판타지로 담아낸 그림책이다. 끊이지 않는 끝말잇기처럼 시간을 이겨 내고 세대를 거쳐 이어지는 우리네 가족의 따뜻한 가족 이야기를 선사한다. 오늘은 퇴근을 하고 집에 가면 아이와 왠지 끝말잇기를 해야 할 것 같다.
                        </p>
                    </div>
                </a>
                <a href="/shop/wbasket.aspx?AddBook=325787458" class="cart_btn">장바구니 담기</a>
            </li>
            <!--도서 1권 //-->
            <!--도서 1권-->
            <li>
                <a href="/shop/wproduct.aspx?ItemId=299811994">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="299811994" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                    <div class="txt">
                        <div class="tit">게임하고 싶어!</div>
                        <div class="sub_tit">숙제는 이따가, 책읽기도 나~중에!</div>
                        <p>
                            게임에 빠진 우리 아이 지키기 대작전, <게임하고 싶어!>를 읽으며 가족들과 함께 이야기를 나누어 보자. 부모는 아이의 마음을, 아이는 부모의 마음을 이해하고 서로의 진심을 깨닫는 소중한 시간이 될 것이다.
                        </p>
                    </div>
                </a>
                <a href="/shop/wbasket.aspx?AddBook=299811994" class="cart_btn">장바구니 담기</a>
            </li>
            <!--도서 1권 //-->
            <!--도서 1권-->
            <li>
                <a href="/shop/wproduct.aspx?ItemId=283296682">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="283296682" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                    <div class="txt">
                        <div class="tit">나는 너무 평범해</div>
                        <div class="sub_tit">평범해서 고민인 그린이의 특별한 발견</div>
                        <p>
                            김영진 그림책 15권. 대한민국 대표 ‘아빠 작가’ 김영진이 이번에는 평범한 게 고민인 그린이의 이야기를 들려준다. 뭐든 하나씩 잘하는 친구들 사이에서 주눅 들어 있던 그린이가 자신의 특별함을 찾고, 인정받으면서 자신감을 회복하는 과정은 잔잔한 감동과 위로를 준다. 수채화풍 그림으로 더 따뜻하고 포근해진 <나는 너무 평범해>로 평범함과 특별함이 함께하는 우리의 이야기를 만나 보자.
                        </p>
                    </div>
                </a>
                <a href="/shop/wbasket.aspx?AddBook=283296682" class="cart_btn">장바구니 담기</a>
            </li>
            <!--도서 1권 //-->
            <!--도서 1권-->
            <li>
                <a href="/shop/wproduct.aspx?ItemId=274778368">
                    <div class="cover"><uc1:wa_item_info runat="server" ItemId="274778368" vtype="2" AuthorType="0" CoverType="8"  PriceType="0" BorderType="0" TitleType="0"  TitleCut="0" /></div>
                    <div class="txt">
                        <div class="tit">수박</div>
                        <div class="sub_tit">물놀이, 에어컨 바람 쐬기, 그리고… 수박 심기?</div>
                        <p>
                            대한민국을 대표하는 ‘아빠 작가’ 김영진이 전하는 ‘진짜 우리 아이, 우리 가족의 이야기’, 《수박》으로 그린이의 특별한 여름나기 방법을 읽어 보세요. 어느새 뜨거운 여름의 더위가 시원하게 날아갈 거예요
                        </p>
                    </div>
                </a>
                <a href="/shop/wbasket.aspx?AddBook=274778368" class="cart_btn">장바구니 담기</a>
            </li>
            <!--도서 1권 //-->
        </ul>
    </div>
</div>
<!--대표 도서 목록 //-->






<!--증정품 슬라이드 스크립트-->
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script>
    var $j183 = $j183 || jQuery.noConflict();
    var slides;
    $j183(function ($) {

        var swiper = new Swiper('.giftswiper', {
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
                swiper.autoplay.start();
            } else {
                jQuery(this).addClass('stop');
                jQuery(this).text('자동슬라이드 시작')
                swiper.autoplay.stop();
            }
        });
    });

</script>





