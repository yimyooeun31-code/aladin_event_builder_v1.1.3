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
<%@ Register Src="/ucl/events/eventComment/wa_events_comment_v2.ascx" TagName="TrackbackEventComment" TagPrefix="uc1" %>
<%@ Register TagPrefix="uc1" TagName="wa_event_MyReviewList" Src="/ucl/events/wa_event_MyReviewList.ascx" %>
<meta http-equiv="Content-Type" content="text/html;charset=EUC-KR">



<!--탭-->
    <div class="swiper-container monly_swiper_tab RandomTab">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><a href="/events/wevent.aspx?EventId=258106&idx=1#dw">초등학교</a></div>
            <div class="swiper-slide on"><a href="/events/wevent.aspx?EventId=258106&idx=2#dw">중학교</a></div>
            <div class="swiper-slide"><a href="/events/wevent.aspx?EventId=258106&idx=3#dw">고등학교</a></div>
        </div>
    </div>
<!--탭-->        

<!--도서 목록-->
<div class="monly_booklist_wrap randomlist">
    <div class="booklist">
        <uc1:wa_item_info_list runat="server" CID="196026"  PagingView="false" CoverType="4"  LType="2" IsPbookDCRate="true" ItemCount="200" SimpleCnt="5" AuthorType="1" PriceType="1" Couponview="true" IsBasketTool="1" BorderType="0" Sort="5" />
    </div>    
</div>
<!--도서 목록 //-->