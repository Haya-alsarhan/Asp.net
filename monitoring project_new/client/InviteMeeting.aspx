<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true"
    CodeFile="InviteMeeting.aspx.cs" Inherits="manager_InviteMeeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            color: #CCCCCC;
        }
        .style3
        {
            color: #000000;
        }
        .style4
        {
          margin-left: 206px;
            width: 782px;
        }
        .style6
        {
            width: 758px;
            height: 80px;
        }
        .style7
        {
            width: 788px;
            margin-left: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style7">
            <legend>Create Meeting</legend>
            <p class="style6">
                <asp:Label ID="Label4" runat="server" AssociatedControlID="drTeamMember" 
                    CssClass="style3">Manager:</asp:Label>
                <asp:DropDownList ID="drTeamMember" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="email" DataValueField="account_id" CssClass="textEntry">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select username + '  / ' + email AS email,a.account_id 
from account a,client c,organization o
where c.organization_id=o.organization_id
and   o.account_id=a.account_id
and   c.client_id=@client">
                    <SelectParameters>
                        <asp:SessionParameter Name="client" SessionField="account_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text=">>" onclick="Button1_Click" />
            </p>
        </fieldset>
    </div>
    <div class="accountInfo">
        <fieldset class="style4">
            <legend>Invitations Status</legend>
            <asp:Label ID="lbMessage" runat="server" Font-Bold="True" Font-Size="20pt" 
                CssClass="style2"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
