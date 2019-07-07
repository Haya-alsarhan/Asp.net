<%@ Page Title="" Language="C#" MasterPageFile="~/Masterall.master" AutoEventWireup="true" CodeFile="getpassword.aspx.cs" Inherits="getpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            width: 100%;
            height: 402px;
        }
        .style11
        {
            text-align: center;
        }
        .style7
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12">
        <tr>
            <td class="style11">
                <h1 style="margin: 15px 0px 0px; padding: 10px 0px 5px; border: 0px; font-family: 'Lucida Grande', lucida, sans-serif; font-size: 40px; font-style: normal; font-variant: normal; font-weight: bold; line-height: inherit; vertical-align: baseline; text-align: center; color: rgb(49, 49, 49); letter-spacing: -0.05em; text-shadow: rgb(255, 255, 255) 0px 1px 1px; position: relative; z-index: 2; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">
                    So you forgot your password?</h1>
                <p class="subtitle" 
                    style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: 'Lucida Grande', lucida, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; line-height: 24px; vertical-align: baseline; color: rgb(83, 83, 83); text-align: center; clear: left; position: relative; z-index: 2; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">
                    <asp:Label ID="Label1" runat="server" CssClass="style10" 
                        Text="Enter your registered email address:"></asp:Label>
                </p>
                <asp:Label ID="Label4" runat="server" CssClass="style10" ForeColor="#CC3300" 
                    style="font-family: 'Times New Roman', Times, serif; color: #CC3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style7" 
                  Width="275px"></asp:TextBox>
                &nbsp; </strong>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#4A4A4A" 
                    Font-Names="Calibri" ForeColor="White" onclick="Button1_Click" Text="send" 
                    Width="90px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

