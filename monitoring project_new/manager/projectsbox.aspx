<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true" CodeFile="projectsbox.aspx.cs" Inherits="manager_projectsbox" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />

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

   textbox:hover,  
textbox:focus {   
    border-color: #C9C9C9;   
    -webkit-box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 8px;  
    }
        .style7
        {
            height: 2px;
            font-family: "Times New Roman", Times, serif;
        }
        .style10
        {
            text-align: center;
        }
        .style15
        {
            height: 784px;
            width: 1102px;
        }
        .style16
        {
            width: 335px;
            text-align: right;
        }
        .style17
        {
            width: 389px;
        }
        .style18
        {
            width: 761px;
            height: 325px;
            margin-left: 253px;
        }
        .style19
        {
            font-size: medium;
        }
        .style20
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
        .style21
        {
            width: 35%;
            font-size: 30pt;
        }
        .style22
        {
            width: 758px;
            margin-left: 0px;
        }
        .style23
        {
            width: 758px;
            margin-left: 253px;
        }
        .style24
        {
            width: 424px;
            height: 86px;
            margin-left: 253px;
        }
        .style25
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
        }
        .style26
        {
            width: 330px;
            text-align: left;
        }
        .style27
        {
            width: 614px;
        }
        .style28
        {
            text-align: right;
            font-family: "Times New Roman", Times, serif;
            width: 281px;
        }
        .style30
        {
            color: #CCCCCC;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .style31
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style32
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

    <div class="style15">
    
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>

            <br />
 <div class="accountInfo">
        <fieldset class="style24">
        <legend>Manage  Projects</legend>
        <table class="style21">
           
            <tr>
                <td class="style10">
                    <asp:Button ID="Button2" runat="server" Height="31px" Width="156px" 
                        CssClass="style20"  BackColor="#CCCCCC" 
                        Font-Names="Calibri" ForeColor="White"
                        Text="Manage Projects" onclick="Button2_Click" 
                        CausesValidation="False" />
                </td>
            </tr>
            
        </table>
    </fieldset>
         <div class="accountInfo">
        <fieldset class="style18">
        <legend>Create a Project</legend>
            <table>
                
                <tr>
                    <td class="style7" colspan="2">
                        <span class="style19">&nbsp;&nbsp;&nbsp;A project is a shared group with your team member. You can create a project 
                        for different area</span><br class="style19" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        
                        <asp:Label ID="Label1" runat="server" Text="ProjectName:"></asp:Label>
                        &nbsp;</td>
                    <td class="style17">
                        <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Project Name Can't Be Blanke" 
                            Display="None" ForeColor="#006699" ValidationGroup="A"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"  TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                      
                        <asp:Label ID="Label4" runat="server" ForeColor="#993300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Label ID="Label2" runat="server" Text="Project Dsecription:"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" 
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Label ID="Label3" runat="server" Text="Organization Name:"></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:DropDownList ID="DropDownList4" runat="server" 
                            DataSourceID="SqlDataSource1org" DataTextField="organization_name" DataValueField="organization_id" 
                         >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1org" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                            SelectCommand="SELECT[organization_id] , [organization_name] FROM [organization] WHERE ([account_id] = @account_id)" 
                            >
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="0" Name="account_id" 
                                    SessionField="account_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        or
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl="~/manager/CreateOrganization.aspx">Create New Orginization</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style10" colspan="2">
                        <asp:Button ID="Button4" runat="server" 
Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                        Font-Names="Calibri" ForeColor="White"
                            onclick="Button4_Click" Text="Create Project" ValidationGroup="A" />
                    </td>
                </tr>
                <tr>
                    <td class="style10" colspan="2">
                        <asp:Label ID="Label6" runat="server" CssClass="style30" 
                            Text="Your Project Created Successfully"></asp:Label>
                    </td>
                </tr>
            </table>
            </fieldset>
            </div>
      
         
                <div class="style23">
        <fieldset class="style22">
        <legend>Invite users</legend>
                <table class="style27" >
                    <tr>
                        <td class="style25" colspan="2">
                            <span class="style19">Invite users to this project by typing&nbsp; email addresses&nbsp; below.</span><br 
                                class="style19" /> </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="2">
                            <table __designer:mapid="18a">
                                <tr __designer:mapid="191">
                                    <td __designer:mapid="192" class="style10" colspan="2">
                                        <span class="style32"><strong>Group</strong></span><strong><br 
                                            __designer:mapid="193" />
                                        <asp:DropDownList ID="drOldusers" runat="server" AppendDataBoundItems="True" 
                                            CssClass="textEntry" DataSourceID="SqlDataSource2" DataTextField="email" 
                                            DataValueField="account_id">
                                            <asp:ListItem>-- Select Member --</asp:ListItem>
                                        </asp:DropDownList>
                                        </strong>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                                            SelectCommand="SELECT username + '  / ' + email AS email ,account.account_id FROM project INNER JOIN team ON project.project_id = team.project_id INNER JOIN manager ON project.project_id = manager.project_id INNER JOIN account ON team.team_id = account.account_id WHERE (manager.manager_id = @account_id)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="account_id" SessionField="account_id" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <strong>
                                        <br __designer:mapid="199" class="style31" />
                                        </strong><span class="style31"><strong>Or New Member</strong></span><strong><br 
                                            __designer:mapid="19a" />
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textEntry" Width="508px"></asp:TextBox>
                                        </strong>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                            ControlToValidate="TextBox3" ErrorMessage="Email  invalid." ForeColor="#CC3300" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <strong>
                            <strong style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; background-repeat: initial initial;" 
                                class="style19">
                            Select The Project:</strong></strong></td>
                        <td class="style26">
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="project_name" DataValueField="project_id" 
                              >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="2">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                                SelectCommand="SELECT project.project_name,project.project_id FROM manager INNER JOIN project ON manager.project_id = project.project_id WHERE (manager.manager_id = @account_id)
AND status_id not in(2,3)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="account_id" 
                                        SessionField="account_id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Button ID="Button6" runat="server" Height="31px" Width="156px" CssClass="submit"  BackColor="#646464" 
                        Font-Names="Calibri" ForeColor="White"
                                onclick="Button6_Click" Text="Send Invitation" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="2">
                            <asp:Label ID="Label5" runat="server" CssClass="style30"></asp:Label>
                        </td>
                    </tr>
                </table>
                </fieldset>
                </div>
   
    </div>
   
</asp:Content>

