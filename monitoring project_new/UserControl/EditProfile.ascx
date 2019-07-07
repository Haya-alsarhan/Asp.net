<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditProfile.ascx.cs" Inherits="UserControl_EditProfile" %>
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
    .style5
    {
        color: #000000;
        font-family: "Times New Roman" , Times, serif;
        font-size: medium;
    }
    .style6
    {
        width: 775px;
        height: 396px;
        margin-left: 199px;
    }
    .style9
    {
        font-family: "Times New Roman" , Times, serif;
        font-size: medium;
    }
    .style12
    {
        text-align: right;
        height: 66px;
    }
    .style13
    {
        text-align: left;
        width: 709px;
    }
    .style16
    {
        text-align: right;
        width: 611px;
    }
    .style17
    {
        text-align: right;
    }
    .style18
    {
        width: 755px;
        height: 352px;
        margin-left: 9px;
    }
    .style19
    {
        text-align: right;
        width: 709px;
    }
    .style20
    {
        height: 66px;
        width: 709px;
    }
</style>
<fieldset class="style6">
   <legend class="legend"> <strong>&nbsp;Update Your Profile  </strong></legend>
        <br />
    <table class="style18">
        <tr>
            <td class="style17">
                <asp:Label ID="Label7" runat="server" AssociatedControlID="TextBox1" ForeColor="#333333"
                    CssClass="style9">First Name:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="23px" Width="184px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label8" runat="server" AssociatedControlID="TextBox2" ForeColor="#333333"
                    CssClass="style9">Last Name:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="gender" ForeColor="#333333"
                    CssClass="style9">Gender:</asp:Label>
            </td>
            <td class="style13">
                <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow"
                    Style="display: inline" ForeColor="#333333">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox10" ForeColor="#333333"
                    CssClass="style9">Country:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox10" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="TextBox5" ForeColor="#333333"
                    CssClass="style9">Description:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox5" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label4" runat="server" AssociatedControlID="TextBox6" ForeColor="Black"
                    CssClass="style9">Phone Number:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#CC3300" ToolTip="invalid number" ValidationExpression="^[0-9]+$">!</asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label5" runat="server" AssociatedControlID="TextBox7" CssClass="style5">Social Networke:</asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox> &nbsp;<br />
<asp:TextBox ID="TextBox9" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox> &nbsp;<br />
                <asp:TextBox ID="TextBox8" runat="server" Height="23px" Width="184px" CssClass="textbox"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style20">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#646464" ForeColor="#CCCCCC"
                    CssClass="submit" onclick="LinkButton1_Click1">Update Profile</asp:LinkButton>
            </td>
        </tr>
    </table>
</fieldset>
