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
<link type="text/css" rel="stylesheet" href="/ucl_editor/events/css/template_v20920.css?ver=<%=DateTime.Now.ToString("yyyyMMddhhmm")%>">

<!-- 상단 스타일1-->
<div class="event_top_style1 color1">
    <div class="style1_in f_esamanru">
        <div class="sub_tit1">하유정 쌤의 기초 문해력 수업</div>
        <h2>기적의 초등 어휘 일력<span class="br"> 365</span></h2>
        <div class="sub_tit2">하루 한 장으로 완성하는 똑똑한 어휘 습관!</div>
    </div>
</div>
<!-- 상단 스타일1 //-->

<!-- 상단 스타일2-->
<div class="event_top_style2 color1">
    <div class="style2_in f_tangsbudaejjigae">
        <div class="sub_tit1">공무원 1위 공단기</div>
        <h2>에스티유니타스<br>브랜드전</h2>
        <div class="sub_tit2">변함없는 공무원 1위, 공단기와 함께 하세요!</div>
    </div>
</div>
<!-- 상단 스타일2 //-->

<!-- 상단 스타일3-->
<div class="event_top_style3 color1">
    <div class="style3_in f_tangsbudaejjigae">
        <div class="sub_tit1">여행 특별 선물</div>
        <h2>가을,<br>여행하기 좋은 계절</h2>
    </div>
</div>
<!-- 상단 스타일3 //-->

<!-- 상단 스타일4-->
<div class="event_top_style4 color1">
    <div class="style4_in f_Kimjungchul">
        <div class="sub_tit1">피터 스완슨 신작<br><죽여 마땅한 사람들> 후속</div>
        <h2>살려 마땅한 사람들</h2>
    </div>
</div>
<!-- 상단 스타일4 //-->

<!-- 상단 스타일5-->
<div class="event_top_style5 color1">
    <div class="style5_in f_NotoSerif">
        <h2>문학과지성 시인선</h2>
        <div class="sub_tit1">김소연 <촉진하는 밤> 출간</div>
    </div>
</div>
<!-- 상단 스타일5 //-->

<!-- 상단 스타일6-->
<div class="event_top_style6 color1">
    <div class="style6_in f_tangsbudaejjigae">
        <h2>나는 앞으로<br>몇 번의<br>보름달을<br>볼 수 있을까</h2>
    </div>
</div>
<!-- 상단 스타일6 //-->

<!-- 상단 스타일7-->
<div class="event_top_style7 color3">
    <div class="style7_in f_S-CoreDream">
        <div class="sub_tit1">상상력의 거장 미야자키 하야오,</div>
        <h2><책으로 가는문></h2>
        <div class="sub_tit2">그의 판타지 세계를 이끌어낸 50권의 책</div>
    </div>
</div>
<!-- 상단 스타일7 //-->

<!-- 상단 스타일8-->
<div class="event_top_style8 color1">
    <div class="style8_in f_GowunBatang">
        <div class="sub_tit1">디아스포라 문학의 거장<span class="br"> 이창래 9년 만의 신작</span></div>
        <h2>타국에서의 일 년</h2>
        <p>
            “나는 사라지고 싶었다.<br>
            삶으로부터 사라지는 게 아니라,<br>
            삶 속으로 사라지고 싶었다.”<br><br>

            여기가 아닌 어딘가,<br>
            자기 자신으로부터 너무 멀리까지<br>
            떠나 버린 이의 여정을 그린 소설<br><br>

            “넷플릭스 시리즈를 넘어서는 소설.<br>
            파도처럼 거침없이 나아가는 문장이<br>
            독자를 더 먼 곳까지 가게 한다.”<br>
            ― 김연수(소설가)
        </p>
    </div>
</div>
<!-- 상단 스타일8 //-->

<!-- 상단 스타일9-->
<div class="event_top_style9 color1">
    <div class="style9_in f_KorailRoundGothic">
        <div class="sub_tit1">마음을 치유하는 그림책 처방전</div>
        <h2><어린이 마음 약국></h2>
        <p>14년 차 초등 교사, 현아샘이 7년간 진단하고 처방한<br>'교실 우체통'의 사연 드디어 공개!</p>
    </div>
</div>
<!-- 상단 스타일9 //-->

<!-- 상단 스타일10-->
<div class="event_top_style10 color1">
    <div class="style10_in f_Cafe24Ssurround">
        <div class="txt_box">
            <h2>출근하냥!<br>일하는 야옹 형제</h2>
            <div class="sub_tit1">야옹 형제 아크릴 키링</div>
        </div>
    </div>
</div>
<!-- 상단 스타일10 //-->

<!-- 상단 스타일11-->
<div class="event_top_style11 color1">
    <div class="style11_in f_HakgyoansimWooju">
        <div class="txt_box">
            <div class="sub_tit1">무운의 첫 책</div>
            <h2>마음 방울 채집</h2>
            <p>
                100가지 행복의 순간을<br>
                몽글몽글하게 담은 책<br><br>
                “보리, 마음이 방울방울해.”<br>
                “그게 무슨 말이야?”<br>
                “행복하다는 말!”
            </p>
        </div>
    </div>
</div>
<!-- 상단 스타일11 //-->

<!-- 상단 스타일12-->
<div class="event_top_style12 color1">
    <div class="style12_in f_SF_HambakSnow">
        <div class="sub_tit1 neon1">Merry christmas</div>
        <div class="sub_tit2">모두의 겨울에 평화가 있기를</div>
        <h2>크리스마스 타일</h2>
    </div>
</div>
<!-- 상단 스타일12 //-->

<!-- 상단 스타일13-->
<div class="event_top_style13 color1">
    <div class="style13_in">
        <div class="main_tit f_GiantsInline">2024</div>
        <div class="main_tit f_SBAggro">트렌드 코리아</div>
        <div class="sub_tit f_SBAggro">DRAGON EYES</div>
    </div>
</div>
<!-- 상단 스타일13 //-->

<!-- 상단 스타일14-->
<div class="event_top_style14 color1">
    <div class="style14_in f_GmarketSans">
        <div class="sub_tit">"그가 상상하면 모두 현실이 된다."</div>
        <h2>일론 머스크<br>Elon Musk</h2>
        <p>일론 머스크가 인정한 유일한 공식 전기<br>전 세계 32개국 동시 출간</p>
    </div>
</div>
<!-- 상단 스타일14 //-->

<!-- 상단 스타일15-->
<div class="event_top_style15 color1">
    <div class="style15_in f_GeekbleMalang">
        <div class="sub_tit">2023</div>
        <h2>어린이 인기 출판사<br>모두 모여라</h2>
    </div>
</div>
<!-- 상단 스타일15 //-->