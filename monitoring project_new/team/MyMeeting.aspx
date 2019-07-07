<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true"
    CodeFile="MyMeeting.aspx.cs" Inherits="manager_MyMeeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

<style type="text/css">



.mGrid { width: 100%; background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; }
    .mGrid td { padding: 2px; border: solid 1px #c1c1c1; color: #717171; }
    .mGrid th { padding: 4px 2px; color: #fff; background: #424242 url(images/grd_head.png) repeat-x top; border-left: solid 1px #525252; font-size: 0.9em; }
.mGrid .alt { background: #fcfcfc url(images/grd_alt.png) repeat-x top; }
.mGrid .pgr {background: #424242 url(images/grd_pgr.png) repeat-x top; }
    .mGrid .pgr table { margin: 5px 0; }
    .mGrid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
    .mGrid .pgr a { color: #666; text-decoration: none; }
    .mGrid .pgr a:hover { color: #000; text-decoration: none; }

    .style2
    {
        width: 791px;
        height: 231px;
        margin-left: 205px;
    }
    
     .style7
    {
        height: 258px;
        width: 606px;
        margin-left: 241px;
        margin-right: 0px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style7">
            <legend>My Meeting</legend>
            <asp:GridView ID="grMeeting" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="meeting_id" DataSourceID="SqlDataSource1" 
               Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" 
                AllowPaging="True" >
               
                <Columns>
                    <asp:BoundField DataField="meeting_id" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="meeting_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_titel" HeaderText="Titel" 
                        SortExpression="meeting_titel">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_time" HeaderText="Time" 
                        SortExpression="meeting_time">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_day" HeaderText="Day" 
                        SortExpression="meeting_day">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_location" HeaderText="Location" 
                        SortExpression="meeting_location">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_description" HeaderText="Description" 
                        SortExpression="meeting_description">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="meeting_id" 
                        DataNavigateUrlFormatString="DesicionMeetingDone.aspx?id={0}&amp;d=1" 
                        HeaderText="Accept" Text="Accept">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="meeting_id" 
                        DataNavigateUrlFormatString="DesicionMeetingDone.aspx?id={0}&amp;d=2" 
                        HeaderText="Deny" Text="Deny">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                </Columns>
               
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select m.meeting_id,meeting_titel,meeting_time,meeting_day,meeting_location,meeting_description
from meeting m,participants p
where m.meeting_id=p.meeting_id
and p.account_id=@account_id
and status=0">
                <SelectParameters>
                    <asp:SessionParameter Name="account_id" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>
</asp:Content>
