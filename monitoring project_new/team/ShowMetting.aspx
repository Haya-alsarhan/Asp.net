<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true"
    CodeFile="ShowMetting.aspx.cs" Inherits="manager_ShowMetting" %>

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
        width: 63%;
        margin-left: 94px;
    }
    .style3
    {
      width: 759px;
        margin-left: 264px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style3">
            <legend> Meeting Status</legend>

            <asp:GridView ID="grMeeting" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataSourceID="SqlDataSource1"  

  Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
               >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="full_name" HeaderText="Full Name" ReadOnly="True" 
                        SortExpression="full_name">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sname" HeaderText="Status" SortExpression="status">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
                
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select email,first_name+' '+last_name as full_name ,sname
from profile p,account a,participants m ,status s
where  a.account_id=p.account_id
and m.account_id=a.account_id
and status=s.status_id
and m.meeting_id=@meeting">
                <SelectParameters>
                    <asp:QueryStringParameter Name="meeting" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>
</asp:Content>
