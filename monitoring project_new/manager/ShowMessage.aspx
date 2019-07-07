<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true"
    CodeFile="ShowMessage.aspx.cs" Inherits="manager_ShowMessage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

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
  
        .style5
        {
            width: 493px;
            height: 162px;
            margin-left: 302px;
        }
        .style6
        {
            text-align: right;
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
        .style7
        {
            width: 838px;
            margin-left: 158px;
        }
        .style8
        {
            width: 68%;
            height: 219px;
            margin-left: 0px;
        }
        .style9
        {
            text-align: center;
            width: 764px;
            height: 40px;
        }
        .style10
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
        .style12
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="style8">
        <fieldset class="style5" >
        <legend class="legend"> <strong>Message Detailes</strong></legend>
            
            <div class="style6">
            
            <asp:DetailsView ID="DetailsView1" runat="server" Height="120px" Width="90%" AutoGenerateRows="False"
                CellPadding="4" DataSourceID="SqlDataSource1"  
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle CssClass="alt" />
                <FieldHeaderStyle ForeColor="#0033CC" />
                <Fields>
                    <asp:BoundField DataField="title" HeaderText="Title:" SortExpression="title">
                        <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email:" SortExpression="email" />
                    <asp:BoundField DataField="msg" HeaderText="Message:" SortExpression="msg" 
                        Visible="False" />
                    <asp:TemplateField HeaderText="Message:">
                    
                        <ItemTemplate>
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("msg") %>'></asp:Literal>
                           
                        </ItemTemplate>
                    
                    </asp:TemplateField>
                </Fields>
              

<PagerStyle CssClass="pgr"></PagerStyle>
              
            </asp:DetailsView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>"
                SelectCommand="SELECT [title], [msg], [account_from],username + '  / ' + email AS email
 FROM [message] m,[account] a
where a.account_id=m.account_from
and m.id=@id">
                <SelectParameters>
                    <asp:QueryStringParameter Name="id" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>

        <fieldset class="style7">
         <legend class="legend"> <strong>Message Replay</strong></legend>
            
          
                
                <asp:TextBox ID="txtTitle" runat="server" Width="40%" Height="38px" 
                CssClass="textbox">Re:</asp:TextBox>
           <p>
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
               </asp:ToolkitScriptManager>
                </p>
            <p>
                &nbsp;</p>
            <cc1:Editor ID="Editor1" runat="server" Height="50%" />
<p class="style9">
    <asp:Button ID="Button1" runat="server" Text="Send Message" 
        onclick="Button1_Click" CssClass="style10" BackColor="#646464" 
        Height="44px" Width="169px"  />
        </p>
        </fieldset>
 
</asp:Content>
