<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="Clients.aspx.cs" Inherits="manager_Clients" %>

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

    .style4
    {
        margin-left: 0px;
    }
    .style5
    {
        width: 759px;
        margin-left: 91px;
    }

    .style6
    {
        width: 910px;
        margin-left: 191px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="style4">
        <fieldset class="style6">
            <legend>Clients</legend>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1cliofor"
                CellPadding="3"

  Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" 
                AllowPaging="True">
               
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
               
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email">
                    </asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" 
                        SortExpression="username">
                    </asp:BoundField>
                    <asp:BoundField DataField="first_name" HeaderText="first_name" 
                        SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" 
                        SortExpression="last_name" />
                    <asp:BoundField DataField="phone_number" HeaderText="phone_number" 
                        SortExpression="phone_number" />
                    <asp:BoundField DataField="country" HeaderText="country" 
                        SortExpression="country" />
                    <asp:BoundField DataField="social_network3" HeaderText="social_network3" 
                        SortExpression="social_network3" />
                    <asp:BoundField DataField="social_network1" HeaderText="social_network1" 
                        SortExpression="social_network1" />
                    <asp:BoundField DataField="social_network2" HeaderText="social_network2" 
                        SortExpression="social_network2" />
                </Columns>
             
<PagerStyle CssClass="pgr"></PagerStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1cliofor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                SelectCommand="SELECT DISTINCT account.email, account.username, profile.first_name, profile.last_name, profile.phone_number, profile.country, profile.social_network3, profile.social_network1, profile.social_network2 FROM account INNER JOIN client ON account.account_id = client.client_id INNER JOIN manager ON client.organization_id = manager.organization_id INNER JOIN organization ON client.organization_id = organization.organization_id AND manager.organization_id = organization.organization_id INNER JOIN profile ON account.account_id = profile.account_id WHERE (manager.manager_id = @account_id)"
                DeleteCommand="DELETE FROM client">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="account_id" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            </fieldset>
    </div>
            <div>
            </div>
        
</asp:Content>
