<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="History.aspx.cs" Inherits="manager_History" %>

<%@ Register Src="../UserControl/Historyl.ascx" TagName="Historyl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
            <uc1:Historyl ID="Historyl1" runat="server" />
      
</asp:Content>
