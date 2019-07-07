<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="client_SendMessage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        .style5
        {
            text-align: right;
        }
        .style6
        {
            text-align: left;
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
          
        .style9
        {
            height: 482px;
            width: 851px;
            margin-left: 183px;
        }
          
        .style10
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style11
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            left: 0px;
            top: 0px;
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <fieldset class="style9">
        <legend class="legend"> <strong>Send Message</strong></legend>
        
                <div class="style6">
            <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    To:</strong></span>
                <asp:DropDownList ID="drTo" runat="server" CssClass="textEntry"  style="font-family: 'Times New Roman', Times, serif; font-size: medium; margin-left: 10px;" 
                    DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="account_id">
                </asp:DropDownList>
                  </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select username + '  / ' + email AS email,a.account_id 
from account a,client c,organization o
where c.organization_id=o.organization_id
and   o.account_id=a.account_id
and   c.client_id=@client">
                    <SelectParameters>
                        <asp:SessionParameter Name="client" SessionField="account_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
          
            <p class="style6">
              <strong>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtTitle"  CssClass="style11" Height="16px" Width="47px">Title:</asp:Label>
                </strong>
                <asp:TextBox ID="txtTitle" runat="server" Width="39%" CssClass="textbox" 
                    Height="18px"></asp:TextBox>
            </p>
           <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            <cc1:Editor ID="Editor1" runat="server" Height="50%" />
            <p class="style5">
                <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" BackColor="#646464" Font-Names="Calibri" 
                    ForeColor="White" Height="34px" Width="133px" CssClass="submit" />
            </p>
        </fieldset>
    
</asp:Content>

