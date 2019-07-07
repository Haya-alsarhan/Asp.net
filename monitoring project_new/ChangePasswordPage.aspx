<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true" CodeFile="ChangePasswordPage.aspx.cs" Inherits="ChangePasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style3
        {
            text-align: right;
        }
        .style4
        {
            text-align: right;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style5
        {
            color: #CC3300;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            text-align: left;
        }
        .style8
        {
            color: #CCCCCC;
            text-align: left;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            &nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#FFFF66" 
        Height="261px" CssClass="style6">
        <asp:Label ID="Label8" runat="server" ForeColor="#CC3300" CssClass="style5"></asp:Label>
        <table style="width:98%; height: 143px;" class="style6">
            <tr  class="even">
                <td class="style4" >
                    Old Password</td>
                <td class="style7" >
                    <asp:TextBox ID="TextBox1" runat="server" 
                TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label12" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="Password Is Required"></asp:Label>
                </td>
            </tr>
            <tr class="add">
                <td class="style4" >
                    New Password</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" 
                TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label11" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="New Password Is Required"></asp:Label>
                </td>
            </tr>
            <tr class="even">
                <td class="style4" >
                    Confirm New Password</td>
                <td class="style7" >
                    <asp:TextBox ID="TextBox3" runat="server" 
                TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="Confirm Password Is Required"></asp:Label>
                </td>
            </tr>
            
            <tr class="add">
                <td class="style3" >
                    <asp:Button ID="Button1" runat="server" BackColor="#646464" 
                        Font-Names="Calibri" ForeColor="White" onclick="Button1_Click" 
                        Text="Change Password" />
                </td>
                <td class="style7" >
                    <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" 
                        Font-Names="Calibri" ForeColor="White" onclick="Button2_Click" Text="Cancel" 
                        Width="82px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
   
    <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" Height="85px" 
        Visible="False" CssClass="style6" style="background-color: #FFFFFF">
        <table style="width:100%; height: 91px;">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" CssClass="style11" 
                        Text="Password is changed succesfully"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#006699" ForeColor="White" 
                        onclick="Button3_Click" Text="Continue" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

