<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="admin_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="../gridviewstyle.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            
            .style6
            {
                width: 772px;
                margin-left: 259px;
            }
            </style>
        <fieldset class="style6">
            <legend>All Users </legend>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="3" DataKeyNames="account_id" 
                DataSourceID="SqlDataSource1" Width="97%"  AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
               
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="account_id" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="account_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="account_type" HeaderText="Type" 
                        SortExpression="account_type">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="UserName" 
                        SortExpression="username">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="account_id" 
                        DataNavigateUrlFormatString="ChangePassword.aspx?id={0}" 
                        HeaderText="Change password" Text="Change password">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                </Columns>
               
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/signup.aspx">Craete New User</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                DeleteCommand="DELETE FROM account WHERE (account_id = @account_id)" 
                SelectCommand="SELECT [account_id], [username], [email], [password], [account_type] FROM [account]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="account_id" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </fieldset>
</asp:Content>

