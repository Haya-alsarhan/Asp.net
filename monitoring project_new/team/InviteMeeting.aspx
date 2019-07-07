<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true"
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
           margin-left: 206px;
            width: 782px;
        }
        .style4
        {
            width: 568px;
        }
        .style5
        {
          width: 788px;
            margin-left: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style5">
            <legend>Invite to Meeting</legend>
            <p class="style4">
                <asp:Label ID="Label4" runat="server" AssociatedControlID="drTeamMember">Member:</asp:Label>
                <asp:DropDownList ID="drTeamMember" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="email" DataValueField="account_id" CssClass="textEntry">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select username + '  / ' + email AS email,account_id from
                    account a,team t
                    where a.account_id=t.team_id
                    and t.project_id in (select project_id from team where team_id=@team_id) and t.team_id &lt;&gt; @team_id
                    union
                    select username + '  / ' + email AS email,a.account_id
                    from
                    team t,project p,manager m,account a,profile pp
                    where t.project_id=p.project_id
                    and p.project_id=m.project_id
                    and m.manager_id=a.account_id
                    and a.account_id=pp.account_id
                    and t.team_id=@team_id">
                    <SelectParameters>
                        <asp:SessionParameter Name="team_id" SessionField="account_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text=">>" onclick="Button1_Click" />
            </p>
        </fieldset>
    </div>
    <div class="accountInfo">
        <fieldset class="style3">
            <legend>Invitations Status</legend>
            <asp:Label ID="lbMessage" runat="server" Font-Bold="True" Font-Size="20pt" 
                CssClass="style2"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
