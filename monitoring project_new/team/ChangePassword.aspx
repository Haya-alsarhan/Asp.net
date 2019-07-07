<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="manager_ChangePassword" %>

<%@ Register src="../UserControl/ChangePassword.ascx" tagname="ChangePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ChangePassword ID="ChangePassword1" runat="server" />
</asp:Content>

