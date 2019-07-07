<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true" CodeFile="DesicionMeetingDone.aspx.cs" Inherits="client_DesicionMeetingDone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style3
        {
            width: 388px;
            height: 30px;
            margin-left: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="accountInfo">
        <fieldset class="style3">
            <legend></legend>
            <asp:Label ID="lbMssage" runat="server" Font-Size="20pt" CssClass="style2"></asp:Label>
        </fieldset>
    </div>
</asp:Content>

