<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="DesicionDone.aspx.cs" Inherits="manager_DesicionDone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style5
        {
            width: 333px;
            height: 44px;
            margin-left: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="accountInfo">
        <fieldset class="style5">
            
            <asp:Label ID="lbMssage" runat="server" Font-Size="20pt" CssClass="style4"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
