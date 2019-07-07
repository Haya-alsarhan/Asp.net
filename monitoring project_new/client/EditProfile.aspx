<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="manager_EditProfile" %>

<%@ Register src="../UserControl/EditProfile.ascx" tagname="EditProfile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    <uc1:EditProfile ID="EditProfile1" runat="server" />
    

</asp:Content>

