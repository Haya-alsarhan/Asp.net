<%@ Page Title="" Language="C#" MasterPageFile="~/Masterall.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>3 boxes</title>
 <link href="signup.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <fieldset class="style17">

<legend class="legend"> Account 
                Information</legend>

<table class="style9">
        
        <tr>
            <td  colspan="2" class="style15">
               
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="The Password and Confirmation Password must match." 
                    ForeColor="#CC3300" CssClass="style11"></asp:CompareValidator>
                <span class="style24"><strong>
                <br />
                </strong>
               
                <asp:Label ID="Label1" runat="server" ForeColor="#CC3300" 
                    Font-Bold="True" CssClass="style11"></asp:Label>
                
                </span>&nbsp;</td>
        </tr>
        <tr>
            <td class="style10" >
                UserName:&nbsp;&nbsp;</td>
            <td class="style8" >
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style21"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" CssClass="style11" 
                    ErrorMessage="User Name is required" 
                    ToolTip="User Name is required." ForeColor="#006699" Height="16px" 
                    Width="16px">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Email:</td>
            <td class="style8" >
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style21"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" CssClass="style11" 
                    ErrorMessage="E-mail is required" 
                    ToolTip="E-mail is required" Height="16px" Width="16px" 
                    ForeColor="#006699">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid Email" 
                    ToolTip="Invalid Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="style11" ForeColor="#CC3300">Invalid Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Frist Name:</td>
            <td class="style8" >
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style21"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" 
                    ToolTip="Frist Name Is Required" ForeColor="#006699" CssClass="style11">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Gender:&nbsp;&nbsp; </td>
            <td class="style20" >
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow" 
                    CssClass="style18" TextAlign="Left">
                    <asp:ListItem>Famel</asp:ListItem>
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBox4" runat="server" 
                    TextMode="Password" CssClass="style21"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" CssClass="style11" 
                    ErrorMessage="password is required" 
                    ToolTip="password is required" ForeColor="#006699" Height="16px" 
                    Width="20px">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" ForeColor="#CC3300" 
                    ToolTip="Password can only be between 6 to 15 characters.!" 
                    ValidationExpression="[\s\S]{6,15}">!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Re-Password:&nbsp;
            </td>
            <td class="style8" >
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" 
                    CssClass="style21"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Confirm Password is required" 
                    ToolTip="Confirm Password is required" ForeColor="#006699" 
                    CssClass="style11">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" >
                Account Type:</td>
            <td class="style8" >
               
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  
                    Height="16px" RepeatDirection="Horizontal" RepeatLayout="Flow" 
                    Width="269px" CssClass="style11">
                    <asp:ListItem Selected="True">Manager</asp:ListItem>
                    <asp:ListItem>Client</asp:ListItem>
                    <asp:ListItem>Team </asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
       
        <tr>
            <td colspan="2" align="center" class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#4A4A4A" 
                    Font-Names="Calibri" ForeColor="White" onclick="Button1_Click" Text="signup" 
                    Width="99px" CssClass="submit" />
            </td>
        </tr>
       
    </table>
  </fieldset>
   &nbsp;
    </asp:Content>
    
 

