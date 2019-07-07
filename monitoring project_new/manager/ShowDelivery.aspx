<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="ShowDelivery.aspx.cs" Inherits="manager_ShowDelivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            width: 63%;
            height: 235px;
            margin-left: 179px;
        }
        .mGrid { width: 100%; background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; }
    .mGrid td { padding: 2px; border: solid 1px #c1c1c1; color: #717171; }
    .mGrid th { padding: 4px 2px; color: #fff; background: #424242 url(images/grd_head.png) repeat-x top; border-left: solid 1px #525252; font-size: 0.9em; }
.mGrid .alt { background: #fcfcfc url(images/grd_alt.png) repeat-x top; }
.mGrid .pgr {background: #424242 url(images/grd_pgr.png) repeat-x top; }
    .mGrid .pgr table { margin: 5px 0; }
    .mGrid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
    .mGrid .pgr a { color: #666; text-decoration: none; }
    .mGrid .pgr a:hover { color: #000; text-decoration: none; }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="style4">
        <fieldset class="login">
            <legend>Delivery</legend>
            <asp:GridView ID="grDelivery" runat="server" CellPadding="3" 
                DataSourceID="SqlDataSource1"  Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                AutoGenerateColumns="False" DataKeyNames="delivery_id" >
               
                <Columns>
                    <asp:BoundField DataField="delivery_id" HeaderText="ID" ReadOnly="True" 
                        SortExpression="delivery_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Column1" HeaderText="Client Name" ReadOnly="True" 
                        SortExpression="Column1">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sname" HeaderText="Case" 
                        SortExpression="delivery_case">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="delivery_date" HeaderText="Delivery Date" 
                        SortExpression="delivery_date">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select distinct delivery_id,sname,delivery_date,email,first_name+' '+last_name 
from profile p,delivery d,account a,manager m,status s
where d.client_id=a.account_id
and a.account_id=p.account_id
and m.project_id=d.project_id
and d.delivery_case=s.status_id
and m.manager_id=@manager_id">
                <SelectParameters>
                    <asp:SessionParameter Name="manager_id" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>
</asp:Content>
