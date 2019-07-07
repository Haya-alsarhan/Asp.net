<%@ Page Title="" Language="C#" MasterPageFile="~/Masterall.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>3 boxes</title>
    <style type="text/css">
        
         .textbox {   
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
 
   textbox:hover,  
textbox:focus {   
    border-color: #C9C9C9;   
    -webkit-box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 8px;  
    }  
  
  
.submit  {  
    width: auto;  
    padding: 9px 15px;  
    background: #617798;  
    border: 0;  
    font-size: 14px;  
    color: #FFFFFF;  
    -moz-border-radius: 5px;  
    -webkit-border-radius: 5px;  
    }  
        .style5
        {
            font-size: medium;
            height: 54px;
            font-family: "Times New Roman", Times, serif;
            color: #CCCCCC;
            width: 351px;
        }
        .style6
        {
            font-family: "Times New Roman", Times, serif;
            color: #000000;
        }
        .style7
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style8
        {
            font-family: "Times New Roman", Times, serif;
            color: #000000;
            font-size: medium;
        }
        .style9
        {
            color: #CC3300;
            font-family: "Times New Roman", Times, serif;
        }
        .style12
        {
            text-align: right;
            width: 603px;
        }
        .style13
        {
            width: 525px;
            height: 233px;
        }
        .style14
        {
            text-align: left;
        }
        .style15
        {
            text-align: right;
        }
    .style16
    {
        border-style: none;
        border-color: inherit;
        border-width: 0;
        padding: 9px 15px;
        background: #617798;
        font-size: 14px;
        color: #FFFFFF;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
                <fieldset class="login">
    <table class="style13">
  
        <tr class="even">
            <td  colspan="4">
                <span class="style3">&nbsp; </span>
                <span class="style5">
                <div class="style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dont&nbsp; have account?<asp:LinkButton ID="LinkButton2" 
                    runat="server" onclick="LinkButton2_Click" CausesValidation="False">sign up</asp:LinkButton>
                </div>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#CC3300" 
                    CssClass="style9"></asp:Label>
                </span>
            </td>
        </tr>
        
        <tr class="add">
            <td class="style15" >
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Username:" 
                    CssClass="style7"></asp:Label>
            </td>
            <td  colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#006699"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr class="even">
            <td class="style15" >
                <asp:Label ID="Label3" runat="server" CssClass="style8" Font-Size="Medium" 
                    Text="Password:"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="165px" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#006699"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr class="add">
            <td colspan="2" class="style7">
                &nbsp;</td>
            <td colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style4" 
                    Font-Size="Medium" ForeColor="Silver" onclick="LinkButton1_Click" 
                    CausesValidation="False">forgot password</asp:LinkButton>
            </td>
        </tr>
        <tr class="even">
            <td align="char" class="style14" colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#4A4A4B" 
                    Font-Names="Calibri" ForeColor="White" onclick="Button1_Click" Text="log in" 
                    Width="125px" CssClass="style16" Height="35px" />
            </td>
        </tr>
        
    </table>

                    <br />
                    <br />
    </fieldset>
    </div>
</asp:Content>

