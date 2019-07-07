<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true"
    CodeFile="Meeting.aspx.cs" Inherits="manager_Meeting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


<style type="text/css">



.mGrid { width: 100%; background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; }
    .mGrid td { padding: 2px; border: solid 1px #c1c1c1; color: #717171; }
    .mGrid th { padding: 4px 2px; color: #fff; background: #424242 url(images/grd_head.png) repeat-x top; border-left: solid 1px #525252; font-size: 0.9em; }
.mGrid .alt { background: #fcfcfc url(images/grd_alt.png) repeat-x top; }
.mGrid .pgr {background: #424242 url(images/grd_pgr.png) repeat-x top; }
    .mGrid .pgr table { margin: 5px 0; }
    .mGrid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
    .mGrid .pgr a { color: #666; text-decoration: none; }
    .mGrid .pgr a:hover { color: #000; text-decoration: none; }
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
        .style12
        {
          width: 95%;
            height: 350px;
        }
        .style13
        {
            width: 108px;
            text-align: right;
        }
        .style11
        {
            width: 108px;
        }
        .style14
    {
        width: 771px;
    }
    .style15
    {
        width: 536px;
            height: 436px;
            margin-left: 344px;
    }
    .style17
    {
        width: 942px;
    }
    .style18
    {
   width: 541px;
            margin-left: 347px;
    }
      
            
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/team/MyMeeting.aspx">My Meetings</asp:HyperLink>
   
        <fieldset class="style15">
            <legend>Create Meeting</legend>
            <table class="style12">
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label6" runat="server" Height="16px" Text="Title" Width="93px"></asp:Label>
                        :</td>
                    <td class="style14">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtTitle" ErrorMessage="*" ForeColor="#006699" 
                            ToolTip="Title is Required" ValidationGroup="b"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label7" runat="server" Height="16px" Text="Date:" Width="93px"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtDate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                            Enabled="True" Format="MM/dd/yyyy" PopupPosition="Right" 
                            TargetControlID="txtDate">
                        </asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtDate" ErrorMessage="*" ForeColor="#006699" 
                            ToolTip="Date is Required" ValidationGroup="b"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtDate" ForeColor="#CC3300" ToolTip="invalid date" 
                            ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" 
                            ValidationGroup="b">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label8" runat="server" Height="16px" Text="Time:" Width="93px"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label9" runat="server" Height="16px" Text="Location " 
                            Width="93px"></asp:Label>
                        :</td>
                    <td class="style14">
                        <asp:TextBox ID="txtLoc" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtLoc" ErrorMessage="*" ForeColor="#006699" 
                            ToolTip="Location is Required" ValidationGroup="b"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label5" runat="server" AssociatedControlID="txtDescription" 
                            Height="16px" Width="93px">Description:</asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" 
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style14">
                <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click"
                    ValidationGroup="b"  Font-Names="Calibri" ForeColor="White"  
                         Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <strong __designer:mapid="167">
                        <asp:Label ID="lblMialStatus" runat="server" CssClass="style17"></asp:Label>
                        <br />
                        </strong>
                        <asp:Label ID="lblSMSStatus" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
        </fieldset>
    
        <fieldset class="style18">
            <legend>Meetings</legend>

            <asp:GridView ID="grMeeting" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="meeting_id" DataSourceID="SqlDataSource1" 
             Width="97%" AllowPaging="True"  CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" 
               >
               
                <Columns>
                    <asp:BoundField DataField="meeting_id" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="meeting_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_titel" HeaderText="Titel" 
                        SortExpression="meeting_titel">
                    <FooterStyle HorizontalAlign="Left" />
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_day" HeaderText="Day" 
                        SortExpression="meeting_day">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_location" HeaderText="Location" 
                        SortExpression="meeting_location" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_time" HeaderText="Time" 
                        SortExpression="meeting_time">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="meeting_description" HeaderText="Description" 
                        SortExpression="meeting_description">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="meeting_id" 
                        DataNavigateUrlFormatString="InviteMeeting.aspx?id={0}" HeaderText="Invite" 
                        Text="Invite">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="meeting_id" 
                        DataNavigateUrlFormatString="ShowMetting.aspx?id={0}" HeaderText="Show" 
                        Text="Show">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                </Columns>
               
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                SelectCommand="SELECT [meeting_titel], [meeting_day], [meeting_location], [meeting_time], [meeting_description], [meeting_id] FROM [meeting] WHERE ([account_id] = @account_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="account_id" SessionField="account_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
   
</asp:Content>
