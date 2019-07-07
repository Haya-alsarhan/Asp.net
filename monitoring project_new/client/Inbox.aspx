<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true"
    CodeFile="Inbox.aspx.cs" Inherits="manager_Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link href="../gridviewstyle.css" rel="stylesheet" type="text/css" />
<style type="text/css">
            
           
            .style51
        {
             height: 420px;
            width: 723px;
            margin-left: 231px;
        }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset class="style51">
               <legend class="legend"> <strong>Inbox</strong></legend>
            <asp:GridView ID="grMessage" runat="server" AutoGenerateColumns="False" 
                     CssClass="mGrid" AllowPaging="True" AllowSorting="True" 
            PagerStyle-CssClass="pgr"  AlternatingRowStyle-CssClass="alt" 
                CellPadding="4" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nme" HeaderText="Name" ReadOnly="True" 
                        SortExpression="nme" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="id,account_from" 
                        DataNavigateUrlFormatString="ShowMessage.aspx?id={0}&amp;f={1}"  
                        Text="show">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                </Columns>
             
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select  id,title,msg,first_name+' '+last_name  as nme ,email,account_from
from message m,account a,profile p
where m.account_from =a.account_id
and a.account_id=p.account_id
and [account_to]=@acc  order by id desc">
                <SelectParameters>
                    <asp:SessionParameter Name="acc" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
   
</asp:Content>
