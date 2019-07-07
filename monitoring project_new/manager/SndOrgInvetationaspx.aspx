<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="SndOrgInvetationaspx.aspx.cs" Inherits="manager_SndOrgInvetationaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            text-align: left;
        }
        .style6
        {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style7
        {
            font-size: medium;
        }
        .style8
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style10
        {
            text-align: center;
            width: 137px;
        }
        .style12
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style14
        {
            text-align: right;
            width: 183px;
        }
        .style15
        {
            text-align: center;
        }
        .style16
        {
            padding: 9px;
            border: solid 1px #E5E5E5;
            outline: 0;
            font: normal 13px/100% Verdana, Tahoma, sans-serif;
            background: #FFFFFF url('bg_form.png') left top repeat-x;
            background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #EEEEEE), to(#FFFFFF));
            background: #FFFFFF url('bg_form.png') repeat-x left top;
            box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
            -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
            -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        }
        .style17
        {
            width: 715px;
        }
        .style18
        {
            width: 880px;
            height: 287px;
            margin-left: 189px;
        }
        .style19
        {
            width: 844px;
            height: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="style18">
        <fieldset class="style19" >
         <legend><strong>Send Invitation</strong></legend>
            <table class="style17"  >
                <tr>
                    <td class="style6" colspan="2">
                        invite client to this orgnization by typing&nbsp; email addresses&nbsp; below.
                        </td>
                </tr>
                <tr>
                    <td class="style14">
                        <span class="style12"><strong>Emails</strong></span>:</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="284px" 
                            CssClass="style16"></asp:TextBox>
                        <asp:Label ID="orlabel0" runat="server" ForeColor="#993300"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                            Display="None" ErrorMessage="Invalid Email" ForeColor="#CC3300" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ToolTip="Invalid Email">!</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ControlToValidate="TextBox2" ForeColor="#006699" 
                            ToolTip="Email is Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        <span class="style8">
                        <strong>
                        <strong style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; background-repeat: initial initial;" 
                            class="style7">Select The </strong></strong><span style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline;
                                background-color: transparent; background-repeat: initial initial;" 
                            class="style7">
                                <strong>Orgnization:</strong></span></span>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource169"
                            DataTextField="organization_name" DataValueField="organization_id" 
                           Height="23px" Width="284px" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource169" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                            SelectCommand="SELECT [organization_name], [organization_id] FROM [organization] WHERE ([account_id] = @account_id)
" >
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="0" Name="account_id" SessionField="account_id" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click"
                            Text="Send Invitation" EnableViewState="False" 
Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                        Font-Names="Calibri" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="style10" colspan="2">
                        <strong>
                            <asp:Label ID="Label10" runat="server" CssClass="style26" 
                            style="color: #CCCCCC"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
