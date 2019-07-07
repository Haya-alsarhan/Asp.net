<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.ascx.cs" Inherits="UserControl_ChangePassword" %>

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
            .style2
            {
                width: 293px;
                text-align: left;
            }
            .style3
            {
                text-align: right;
                width: 281px;
            }
            .style4
            {
                text-align: right;
                width: 281px;
                font-family: "Times New Roman", Times, serif;
                font-size: medium;
            }
            .style6
            {
                width: 637px;
                height: 316px;
                margin-left: 42px;
            }
            .style7
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
            .style8
            {
                text-align: center;
                font-family: "Times New Roman", Times, serif;
                font-size: medium;
            }
            .style5
            {
                font-family: "Times New Roman", Times, serif;
                font-size: medium;
                color: #CC3300;
            }
            .style9
            {
                width: 698px;
                height: 391px;
                margin-left: 236px;
            }
            </style>




<fieldset class="style9">

<legend class="legend"> <strong>&nbsp;Change Your Password </strong></legend>
        <br />
   
        

   
        <table class="style6">
            <tr  class="even">
                <td class="style8" colspan="2" >
        <asp:Label ID="Label8" runat="server" ForeColor="#CC3300" CssClass="style5"></asp:Label>
                </td>
            </tr>
            <tr  class="even">
                <td class="style4" >
                    Old Password:</td>
                <td class="style2" >
                    <asp:TextBox ID="TextBox1" runat="server" 
                TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:Label ID="Label12" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="Password Is Required"></asp:Label>
                </td>
            </tr>
            <tr  class="even">
                <td class="style4" >
                    &nbsp;</td>
                <td class="style2" >
                    &nbsp;</td>
            </tr>
            <tr class="add">
                <td class="style4" >
                    New Password:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" 
                TextMode="Password" CssClass="textbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ForeColor="#CC3300" 
                    ToolTip="Password can only be between 6 to 15 characters.!" 
                    ValidationExpression="[\s\S]{6,15}">!</asp:RegularExpressionValidator>
                    <asp:Label ID="Label11" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="New Password Is Required"></asp:Label>
                </td>
            </tr>
            <tr class="add">
                <td class="style4" >
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr class="even">
                <td class="style4" >
                    Confirm New Password:</td>
                <td class="style2" >
                    <asp:TextBox ID="TextBox3" runat="server" 
                TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" ForeColor="#003366" Text="*" 
                        Visible="False" ToolTip="Confirm Password Is Required"></asp:Label>
                </td>
            </tr>
            
            <tr class="even">
                <td class="style4" >
                    &nbsp;</td>
                <td class="style2" >
                    &nbsp;</td>
            </tr>
            
            <tr class="add">
                <td class="style3" >
                    <asp:Button ID="Button1" runat="server" BackColor="#646464" 
                        Font-Names="Calibri" ForeColor="White" onclick="Button1_Click" 
                        Text="Change Password" Height="31px" Width="156px" CssClass="submit" />
                </td>
                <td class="style2" >
                    <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" 
                        Font-Names="Calibri" ForeColor="White" onclick="Button2_Click" Text="Cancel" 
                        Width="156px" Height="33px" CssClass="style7"/>
                </td>
            </tr>
        </table>
   </fieldset>
        

   
        