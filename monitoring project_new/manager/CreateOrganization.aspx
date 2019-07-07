<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="CreateOrganization.aspx.cs" Inherits="manager_CreateOrganization" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../StyleSheet.css" rel="Stylesheet" />
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
        
        
        
        .mGrid
        {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
        }
        .mGrid td
        {
            padding: 2px;
            border: solid 1px #c1c1c1;
            color: #717171;
        }
        .mGrid th
        {
            padding: 4px 2px;
            color: #fff;
            background: #424242 url(images/grd_head.png) repeat-x top;
            border-left: solid 1px #525252;
            font-size: 0.9em;
        }
        .mGrid .alt
        {
            background: #fcfcfc url(images/grd_alt.png) repeat-x top;
        }
        .mGrid .pgr
        {
            background: #424242 url(images/grd_pgr.png) repeat-x top;
        }
        .mGrid .pgr table
        {
            margin: 5px 0;
        }
        .mGrid .pgr td
        {
            border-width: 0;
            padding: 0 6px;
            border-left: solid 1px #666;
            font-weight: bold;
            color: #fff;
            line-height: 12px;
        }
        .mGrid .pgr a
        {
            color: #666;
            text-decoration: none;
        }
        .mGrid .pgr a:hover
        {
            color: #000;
            text-decoration: none;
        }
        
        
        
        .style4
        {
            width: 769px;
            font-family: "Times New Roman" , Times, serif;
            font-size: medium;
        }
        .style5
        {
            width: 769px;
            margin-left: 156px;
        }
        .style6
        {
            font-family: "Times New Roman" , Times, serif;
        }
        
        
        
        .style7
        {
            font-family: "Times New Roman" , Times, serif;
            font-size: x-large;
        }
        
        
        
        .style9
        {
            width: 570px;
        }
        .style10
        {
            width: 570px;
            margin-left: 156px;
        }
        .style11
        {
            width: 740px;
            height: 177px;
            margin-left: 98px;
        }
        .style12
        {
            width: 322px;
            margin-left: 156px;
            text-align: right;
        }
        
        
        
        .style13
        {
            width: 851px;
            margin-left: 155px;
        }
        .style15
        {
            width: 41%;
            margin-left: 154px;
        }
        
        
        
        .style16
        {
            font-family: "Times New Roman" , Times, serif;
            font-size: medium;
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
        
        
        .style17
        {
            width: 570px;
            text-align: left;
        }
        .style18
        {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            width: auto;
            padding: 9px 15px;
            background: #006699;
            font-size: 14px;
            color: #FFFFFF;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
        }
        .style19
        {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            padding: 9px 15px;
            background: #006699;
            font-size: 14px;
            color: #FFFFFF;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
        }
        .style20
        {
            width: 836px;
            margin-left: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
    </asp:ToolkitScriptManager>
    <div class="style15">
        <fieldset class="login">
            <legend>Manage Orgnization </legend>
            <asp:Button ID="Button2" runat="server" Text="Send Invitation" OnClick="Button2_Click"
                CausesValidation="False" CssClass="style18"  BackColor="#CCCCCC" Font-Names="Calibri"
                            ForeColor="White"  Height="31px" Width="156px"/>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="My Clients" CssClass="style19"  BackColor="#CCCCCC"  Font-Names="Calibri"
                            ForeColor="White"  Height="31px" Width="156px" />
            <br />
        </fieldset>
    </div>
    <div class="style13">
        <fieldset class="login">
            <legend>Create Orgnization </legend>
            <table class="style11">
                <tr>
                    <td class="style12">
                        <asp:Label ID="Label4" runat="server" CssClass="style4" Font-Bold="False" ForeColor="Black"
                            Text="Organization Name:" Width="147px"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="txt_OrganizationName" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_OrganizationName"
                            ForeColor="#003366" ErrorMessage="Orgnization Name Can't Be Blanke" 
                            Display="None" ValidationGroup="b"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                        <asp:Label ID="lblmsg1" runat="server" ForeColor="#993300" CssClass="style6"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" ForeColor="Black" Text="Description:"
                            Width="100px" CssClass="style16"></asp:Label>
                        <span class="style16"></span></span>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="txt_Description" runat="server" CssClass="textbox" Style="font-family: 'Times New Roman', Times, serif;
                            font-size: medium" Height="20px" TextMode="MultiLine" Width="152px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" ForeColor="Black" Text="Country:"
                            Width="100px" CssClass="style4"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="txt_Country" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        <asp:Label ID="Label6" runat="server" Font-Bold="False" ForeColor="Black" Text="Email:"
                            Width="100px" CssClass="style4"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="txt_Email" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Email"
                            ErrorMessage=" Email Can't Be Blanke" ForeColor="#003366" Display="None" 
                            ValidationGroup="b"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
                            ErrorMessage="Invalid Email" ForeColor="#006699" ControlToValidate="txt_Email"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="b"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RegularExpressionValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        <asp:Label ID="Label9" runat="server" Font-Bold="False" ForeColor="Black" Text="PhoneNumber:"
                            Width="100px" CssClass="style16"></asp:Label>
                        <span class="style16"></span></span>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="txt_PhoneNumber" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txt_PhoneNumber" ForeColor="#CC3300" 
                            ToolTip="invalid number" ValidationExpression="^[0-9]+$" ValidationGroup="b">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                    </td>
                    <td class="style10">
                        <asp:Button ID="btn_CreateOrg" runat="server" BackColor="#646464" Font-Names="Calibri"
                            ForeColor="White" OnClick="btn_register_Click" Height="31px" Width="156px" CssClass="submit"
                            Text="Create Organization" ValidationGroup="b" />
                    </td>
                </tr>
                <tr>
                    <td class="style6" colspan="2">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    <div class="accountInfo">
        <fieldset class="style20">
            <legend>&nbsp;Orgnization </legend>
            <asp:SqlDataSource ID="SqlDataSource168" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                SelectCommand="SELECT [organization_id], [organization_name], [organization_description], [country], [phone_number], [email_o] FROM [organization] WHERE ([account_id] = @account_id)"
                DeleteCommand="DELETE FROM [organization] WHERE [organization_id] = @organization_id"
                InsertCommand="INSERT INTO [organization] ([organization_name], [organization_description], [country], [phone_number], [email_o]) VALUES (@organization_name, @organization_description, @country, @phone_number, @email_o)"
                UpdateCommand="UPDATE [organization] SET [organization_name] = @organization_name, [organization_description] = @organization_description, [country] = @country, [phone_number] = @phone_number, [email_o] = @email_o WHERE [organization_id] = @organization_id">
                <DeleteParameters>
                    <asp:Parameter Name="organization_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="organization_name" Type="String" />
                    <asp:Parameter Name="organization_description" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="phone_number" Type="Int32" />
                    <asp:Parameter Name="email_o" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="account_id" SessionField="account_id"
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="organization_name" Type="String" />
                    <asp:Parameter Name="organization_description" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="phone_number" Type="Int32" />
                    <asp:Parameter Name="email_o" Type="String" />
                    <asp:Parameter Name="organization_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource168"
                HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                DataKeyNames="organization_id" CellPadding="3" Width="97%" CssClass="mGrid" PagerStyle-CssClass="pgr"
                AlternatingRowStyle-CssClass="alt" AllowPaging="True">
                <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="organization_id" HeaderText="Id" SortExpression="organization_id"
                        InsertVisible="False" ReadOnly="True" Visible="false">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="organization_name" HeaderText="Name" SortExpression="organization_name">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="organization_description" HeaderText="Description" SortExpression="organization_description">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="phone_number" HeaderText="Phone Number" SortExpression="phone_number">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email_o" HeaderText="Email" SortExpression="email_o">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:CommandField>
                   
                </Columns>
                <PagerStyle CssClass="pgr"></PagerStyle>
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </fieldset>
    </div>
</asp:Content>
