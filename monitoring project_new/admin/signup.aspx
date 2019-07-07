<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="admin_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    .textbox
    {
        padding: 9px;
        border: solid 1px #E5E5E5;
        outline: 0;
        font: normal 13px/100% Verdana, Tahoma, sans-serif;
        width: 200px;
        background: #FFFFFF url('bg_form.png') left top repeat-x;
        background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #EEEEEE), to(#FFFFFF));
        background: -moz-linear-gradient(top, #FFFFFF, #EEEEEE 1px, #FFFFFF 25px);
        box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
    }
    
    textbox:hover, textbox:focus
    {
        border-color: #C9C9C9;
        -webkit-box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 8px;
    }
    
    
    .submit
    {
        width: auto;
        padding: 9px 15px;
        background: #617798;
        border: 0;
        font-size: 14px;
        color: #FFFFFF;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
    }
         .style6
         {
             width: 751px;
             font-size: large;
             font-family: "Times New Roman", Times, serif;
         }
         .style8
         {
             width: 554px;
             text-align: right;
             font-family: "Times New Roman", Times, serif;
         }
         .style9
         {
             text-align: right;
             font-family: "Times New Roman", Times, serif;
         }
         .style10
         {
             text-align: center;
         }
         .style11
         {
             text-align: left;
         }
         .style12
         {
             text-align: left;
             font-family: "Times New Roman", Times, serif;
         }
         .style13
         {
             padding: 9px;
             border: solid 1px #E5E5E5;
             outline: 0;
             font: normal normal normal medium 100% Times New Roman, Times, serif;
             width: 200px;
             background: #FFFFFF url('bg_form.png') left top repeat-x;
             background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #EEEEEE), to(#FFFFFF));
             background: #FFFFFF url('bg_form.png') repeat-x left top;
             box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
             -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
             -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
         }
         .style14
         {
             font-size: medium;
         }
         .style15
         {
             text-align: left;
             font-family: "Times New Roman", Times, serif;
         
             font-size: medium;
         }
       
         .style17
         {
             text-align: left;
             font-size: medium;
         }
           .style16
         {
             width: 554px;
             
             text-align: right;
             font-family: "Times New Roman";
             font-size: medium;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="style6">Create New Account</h1>

 <table width="100%">
        
        <tr>
            <td  colspan="2" class="style10" >
               
                <b>
               
                <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="The Password and Confirmation Password must match." 
                    ForeColor="#CC3300"></asp:CompareValidator>
                <br />
               
                </b>
               
                <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#CC3300" 
                    Font-Bold="True" ></asp:Label>
                
            </td>
        </tr>
        <tr>
           
            <td colspan="2" class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" >
                UserName:&nbsp;&nbsp;</td>
            <td class="style11" >
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style13" ></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" CssClass="style2" 
                    ErrorMessage="User Name is required" 
                    ToolTip="User Name is required." ForeColor="#006699" 
                   >*</asp:RequiredFieldValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style16" >
                Email:</td>
            <td class="style11" >
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style13"></asp:TextBox>
                <span class="style11"><b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" CssClass="style2" 
                    ErrorMessage="E-mail is required" 
                    ToolTip="E-mail is required" ForeColor="#006699" 
                    >*</asp:RequiredFieldValidator>
                </b></span></td>
        </tr>
        <tr>
            <td class="style16" >
                Frist Name</td>
            <td class="style11" >
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style13"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" 
                    ToolTip="Frist Name Is Required"  ForeColor="#006699" 
                 >*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style17">
            <td class="style8" >
                Gender</td>
            <td class="style11" >
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                     Width="184px" RepeatLayout="Flow" RepeatDirection="Horizontal" 
                    CssClass="textEntry" Height="16px" 
                    style="font-family: 'Times New Roman', Times, serif">
                    <asp:ListItem>Famel</asp:ListItem>
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style16" >
                Password:</td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" 
                    TextMode="Password" CssClass="style13"></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" CssClass="style2" 
                    ErrorMessage="password is required" 
                    ToolTip="password is required" ForeColor="#006699" 
                    >*</asp:RequiredFieldValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style16" >
                Re-Password:<strong>&nbsp; </strong>
            </td>
            <td class="style11" >
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" 
                    CssClass="style13"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Confirm Password is required" 
                    ToolTip="Confirm Password is required" CssClass="style2" 
                    ForeColor="#006699">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style14" >
            <td class="style8"  >
                Account Type:</td>
            <td >
               
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="style12" 
                    Height="44px" RepeatDirection="Horizontal" RepeatLayout="Flow" 
                    Width="323px">
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem Selected="True">Client</asp:ListItem>
                    <asp:ListItem>Team Member</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
       
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" BackColor="#646464" ForeColor="#CCCCCC" 
                    Font-Names="Calibri"  onclick="Button1_Click" Text="signup" 
                    Width="99px" CssClass="submit" />
            </td>
        </tr>
       
    </table>
</asp:Content>

