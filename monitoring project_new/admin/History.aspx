<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="admin_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../gridviewstyle.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            
            .style6
            {
                width: 746px;
                margin-left: 245px;
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 

 <fieldset class="style6">
            <legend>User History </legend>
             <p>
             <asp:Label ID="Label4" runat="server" AssociatedControlID="drUser">Username:</asp:Label>
                <asp:DropDownList ID="drUser" runat="server" CssClass="textEntry" 
                     DataSourceID="SqlDataSource1" DataTextField="em" 
                     DataValueField="account_id" AutoPostBack="True" 
                    >
                </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                     SelectCommand="SELECT account_id, username + '  / ' + email AS em FROM account">
                 </asp:SqlDataSource>
                </p>
<asp:GridView ID="grHistory" runat="server" AutoGenerateColumns="False" 
    CellPadding="3" DataKeyNames="history_id" DataSourceID="SqlDataSource2" 
  AllowPaging="True"  Width="97%"  AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
  
    <Columns>
        <asp:BoundField DataField="history_id" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="history_id">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="sign_time" HeaderText="Sign in Time" 
            SortExpression="sign_time">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="sign_out" HeaderText="Sign out Time" 
            SortExpression="sign_out">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
    </Columns>
    
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
    
    SelectCommand="SELECT [history_id], [sign_out], [sign_time] FROM [history] WHERE ([account_id] = @account_id) order by history_id desc" 
    DeleteCommand="delete from history where history_id=@history_id ">
    <DeleteParameters>
        <asp:ControlParameter ControlID="grHistory" Name="history_id" 
            PropertyName="SelectedValue" />
    </DeleteParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="drUser" Name="account_id" 
            PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>

        </fieldset>
</asp:Content>

