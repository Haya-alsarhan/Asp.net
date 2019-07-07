<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="InviteMeeting.aspx.cs" Inherits="manager_InviteMeeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style5
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #CCCCCC;
        }
        .style7
        {
            margin-left: 206px;
            width: 782px;
        }
        .style8
        {
            width: 788px;
            margin-left: 203px;
        }
        .style10
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style8">
            <legend>Create Meeting</legend>
            <p>
                <asp:Label ID="Label4" runat="server" AssociatedControlID="drTeamMember" 
                    CssClass="style4">Member:</asp:Label>
                <asp:DropDownList ID="drTeamMember" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="email" DataValueField="account_id" CssClass="textEntry">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text=">>" onclick="Button1_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                    
                    SelectCommand="SELECT account.account_id,username + '  / ' + email AS email FROM project INNER JOIN team ON project.project_id = team.project_id INNER JOIN manager ON project.project_id = manager.project_id INNER JOIN account ON team.team_id = account.account_id WHERE (manager.manager_id = @account_id)" 
                   >
                    <SelectParameters>
                        <asp:SessionParameter Name="account_id" SessionField="account_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="drClient" 
                    CssClass="style4">Clients:</asp:Label>
                <asp:DropDownList ID="drClient" runat="server" DataSourceID="SqlDataSource2" DataTextField="email"
                    DataValueField="account_id" CssClass="textEntry" style="margin-left: 12px">
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" Text=">>" onclick="Button2_Click" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                    
                    SelectCommand="SELECT distinct account.account_id,username + '  / ' + email AS email FROM account INNER JOIN client ON account.account_id = client.client_id INNER JOIN manager ON client.organization_id = manager.organization_id INNER JOIN organization ON client.organization_id = organization.organization_id AND manager.organization_id = organization.organization_id WHERE (manager.manager_id = @account_id)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="account_id" 
                            SessionField="account_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
            
            
                <span class="style10">Mangers</span>:<asp:DropDownList ID="DropDownList1" 
                    runat="server" DataSourceID="SqlDataSource3d" DataTextField="email" 
                    DataValueField="account_id">
                </asp:DropDownList>
                <asp:Button ID="Button3" runat="server" Text=">>" onclick="Button2_Click1" />
                <asp:SqlDataSource ID="SqlDataSource3d" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                    SelectCommand="SELECT account_id, username + '  / ' + email AS email FROM account WHERE (account_type = @account_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="account_type" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
            
            </p>
            <p>
            
            
                &nbsp;</p>
        </fieldset>
    </div>
    <div class="accountInfo">
        <fieldset class="style7">
            <legend>Invitations Status</legend>
            <asp:Label ID="lbMessage" runat="server" Font-Bold="True" Font-Size="20pt" 
                CssClass="style5"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
