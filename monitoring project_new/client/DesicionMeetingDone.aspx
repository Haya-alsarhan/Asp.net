<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true" CodeFile="DesicionMeetingDone.aspx.cs" Inherits="client_DesicionMeetingDone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            color: #CCCCCC;
        }
        .style3
        {
            width: 380px;
            height: 64px;
            margin-left: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="accountInfo">
        <fieldset class="style3">
           
            <asp:Label ID="lbMssage" runat="server" Font-Size="20pt" CssClass="style2"></asp:Label>
        </fieldset>
    </div>
</asp:Content>

