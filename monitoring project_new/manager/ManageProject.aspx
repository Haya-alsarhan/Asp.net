<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="ManageProject.aspx.cs" Inherits="manager_ManageProject" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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

.mGrid { width: 100%; background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; }
    .mGrid td { padding: 2px; border: solid 1px #c1c1c1; color: #717171; }
    .mGrid th { padding: 4px 2px; color: #fff; background: #424242 url(images/grd_head.png) repeat-x top; border-left: solid 1px #525252; font-size: 0.9em; }
.mGrid .alt { background: #fcfcfc url(images/grd_alt.png) repeat-x top; }
.mGrid .pgr {background: #424242 url(images/grd_pgr.png) repeat-x top; }
    .mGrid .pgr table { margin: 5px 0; }
    .mGrid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
    .mGrid .pgr a { color: #666; text-decoration: none; }
    .mGrid .pgr a:hover { color: #000; text-decoration: none; }

        .style5
        {
            color: #CCCCCC;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
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
        .style6
        {
            width: 766px;
            height: 144px;
        }
        .style7
        {
            width: 801px;
            margin-left: 211px;
        }
        .style8
        {
            width: 769px;
            margin-left: 210px;
        }
        .style9
        {
            width: 80%;
            margin-left: 0px;
        }
        .style10
        {
            width: 63%;
            height: 483px;
            margin-left: 211px;
        }
        .style12
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style15
        {
            width: 788px;
            height: 420px;
            margin-left: 192px;
        }
        .style17
        {
            width: 656px;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style18
        {
            color: #CCCCCC;
            font-size: x-large;
        }
        .style19
        {
            text-align: center;
        }
        .style20
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: center;
            width: 557px;
            margin-left: 213px;
        }
        .style21
        {
            color: #CCCCCC;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <h2 class="style20">
        Manage
        <%=Request.QueryString["nme"] %> project</h2>
    <div class="style7">
        <fieldset class="style6">
            <legend>Assign project to other manager</legend>Manager Name :
            <asp:DropDownList ID="drManager" runat="server" DataSourceID="SqlDataSource1" DataTextField="email"
                DataValueField="account_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                
                SelectCommand="SELECT account_id,username + '  / ' + email AS email FROM account WHERE (account_type = @account_type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="account_type" Type="Int16" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p class="submitButton">
                <asp:Button ID="btnAssign" runat="server" Text="Send Request" OnClick="btnAssign_Click"  
Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                      
  Font-Names="Calibri" ForeColor="White"/>
            </p>
            <p class="submitButton">
            <asp:Label ID="lbMessage" runat="server" Font-Bold="True" Font-Size="12pt" 
                ForeColor="#CCCCCC" CssClass="style21"></asp:Label>
            </p>
        </fieldset>
    </div>
    <div class="style9">
        <fieldset class="style8">
            <legend>Project Status</legend>
            <asp:Label ID="lbStatus" runat="server" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <br />
            <br />
            Change Status:
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                SelectCommand="SELECT [status_id], [active], [inactive], [terminatee], [banding] FROM [status]">
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">active </asp:ListItem>
                <asp:ListItem Value="2">inactive</asp:ListItem>
                <asp:ListItem Value="3">termenate</asp:ListItem>
                <asp:ListItem Value="4">bending</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnAcitve" runat="server" OnClick="btnAcitve_Click" 
                Text="Update" Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                      
  Font-Names="Calibri" ForeColor="White" />
            <br />
        </fieldset>
    </div>
    <div class="style10">
        <fieldset class="login">
            <legend>Upload Files</legend>
            <p>
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="fuImage">File Url:</asp:Label>
                <asp:FileUpload ID="fuImage" runat="server" CssClass="textEntry" />
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="fuImage"
                    CssClass="failureNotification" ErrorMessage=" Name is required." ToolTip="Name is required."
                    ValidationGroup="a" ForeColor="#006699">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="txtTitle">Title:</asp:Label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="textEntry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtTitle"
                    CssClass="failureNotification" ErrorMessage="Title is required." ToolTip="Title is required."
                    ValidationGroup="a" ForeColor="#006699">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="lbFileMessage" runat="server" Font-Bold="True"></asp:Label>
            </p>
            <p class="submitButton">
                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Upload File"
                    ValidationGroup="a" OnClick="LoginButton_Click" Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" />
            </p>
            <p>
                <asp:GridView ID="grFiles" runat="server" AutoGenerateColumns="False" CellPadding="3"
                    DataKeyNames="id" DataSourceID="SqlDataSource3" Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                    OnClientClick="return confirm('DO you realy want to delete');" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="id" Visible="false">
                            <HeaderStyle HorizontalAlign="Left"  />
                        </asp:BoundField>
                        <asp:BoundField DataField="url" HeaderText="File" SortExpression="url">
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title">
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="url" DataNavigateUrlFormatString="../Fiels/{0}"
                            HeaderText="Download" Text="Download">
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:HyperLinkField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                    SelectCommand="SELECT [url], [title], [id] FROM [Files] WHERE ([project_id] = @project_id)"
                    DeleteCommand="delete from Files where id=@id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="grFiles" Name="id" PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="project_id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </fieldset>
    </div>
    
        <fieldset class="style15">
            <legend>Delivery</legend>
            
                <span class="style12">
                <a href="ShowDelivery.aspx?id=<%=Request.QueryString["id"] %> " >
                Show delivery</a>
                
                <table align="center" 
               >
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="drCompany" 
                    CssClass="style12">Company:</asp:Label>
                    </td>
                    <td>
                <asp:DropDownList ID="drCompany" runat="server" CssClass="textEntry" 
                    AutoPostBack="True" DataSourceID="SqlDataSource4" 
                    DataTextField="organization_name" DataValueField="organization_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                    SelectCommand="SELECT [organization_name], [organization_id] FROM [organization] WHERE ([account_id] = @account_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="account_id" SessionField="account_id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
            
                    </td>
                </tr>
                <tr>
                    <td>
            
            
                <asp:Label ID="Label2" runat="server" AssociatedControlID="drClient" 
                    CssClass="style12">Clients:</asp:Label>
                    </td>
                    <td>
                <asp:DropDownList ID="drClient" runat="server" CssClass="textEntry" 
                    DataSourceID="SqlDataSource5" DataTextField="email" DataValueField="client_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select client_id,username + '  / ' + email AS email from
account,client
where account.account_id=client.client_id
and organization_id=@or">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drCompany" Name="or" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
                    </td>
                </tr>
                <tr>
                    <td>
            
                <asp:Label ID="Label3" runat="server" AssociatedControlID="txtDate" 
                    CssClass="style12">Delivery Date:</asp:Label>
                    </td>
                    <td>
                <asp:TextBox ID="txtDate" runat="server" ontextchanged="txtDate_TextChanged" CssClass="textbox" ></asp:TextBox>
                <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                                    Enabled="True" Format="MM/dd/yyyy" PopupPosition="Right" 
                                    TargetControlID="txtDate">
                                </asp:CalendarExtender>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtDate" ForeColor="#CC3300" ToolTip="invalid date" 
                            ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" 
                            ValidationGroup="c">!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            
                <span class="style12">
            
                <asp:Label ID="Label4" runat="server" AssociatedControlID="txtNumDayes">Number of dayes:</asp:Label>
                        </span>
                    </td>
                    <td>
            
                <span class="style12">
                <asp:TextBox ID="txtNumDayes" runat="server" CssClass="textbox" 
                            ontextchanged="txtNumDayes_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtNumDayes" ErrorMessage="*" 
                    ValidationExpression="\d{1,5}" ValidationGroup="c" ForeColor="#CC3300"></asp:RegularExpressionValidator>

            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNumDayes" ErrorMessage="*" ValidationGroup="b" 
                    ForeColor="#006699" ToolTip="Number of Test is Required"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>

            
                <asp:Label ID="Label5" runat="server" AssociatedControlID="fuFile">File Url:</asp:Label>
                    </td>
                    <td>
                <asp:FileUpload ID="fuFile" runat="server" CssClass="textEntry" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fuFile"
                    CssClass="failureNotification" ErrorMessage=" Name is required." ToolTip=" Name is required."
                    ValidationGroup="c" ForeColor="#006699">*</asp:RequiredFieldValidator>
            

                    </td>
                </tr>
                <tr>
                    <td>
            

                <asp:Label ID="Label6" runat="server" AssociatedControlID="txtFileTitle">Title:</asp:Label>
                    </td>
                    <td>
                <asp:TextBox ID="txtFileTitle" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFileTitle"
                    CssClass="failureNotification" ErrorMessage="Title is required." ToolTip="Title is required."
                    ValidationGroup="c" ForeColor="#006699">*</asp:RequiredFieldValidator>
            

                    </td>
                </tr>
                <tr>
                    <td class="style12" colspan="2">
            

            <p class="style17">
                <asp:Button ID="Button1" runat="server" Text=" Delivery " 
                    onclick="Button1_Click"  ValidationGroup="c" 

Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                      
  Font-Names="Calibri" ForeColor="White" />
            </p>
         
            
                    </td>
                </tr>
                <tr>
                    <td class="style19" colspan="2">
         
            
                <asp:Label ID="lbMessageTest" runat="server" Text="" CssClass="style18"></asp:Label>
           
                    </td>
                </tr>
            </table>
            <br />
            </span><br />
&nbsp;<br />
            
            
                <br />

            
                <br />
           
        </fieldset>
    </div>
   
</asp:Content>
