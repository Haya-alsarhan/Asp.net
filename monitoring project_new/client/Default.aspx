<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageclient.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="client_Default" %>
   

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
            
            .style2{width: 705px;
                height: 244px;
                margin-left: 236px;
            }
            .style3
            {
                color: #333333;
                font-family: "Times New Roman", Times, serif;
                
            }
           
.mGrid { width: 100%; background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; }
    .mGrid td { padding: 2px; border: solid 1px #c1c1c1; color: #717171; }
    .mGrid th { padding: 4px 2px; color: #fff; background: #424242 url(images/grd_head.png) repeat-x top; border-left: solid 1px #525252; font-size: 0.9em; }
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr {background: #424242 url(images/grd_pgr.png) repeat-x top; }
    .mGrid .pgr table { margin: 5px 0; }
    .mGrid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }   
    .mGrid .pgr a { color: #666; text-decoration: none; }
    .mGrid .pgr a:hover { color: #000; text-decoration: none; }
     </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <fieldset class="style2">
        <legend class="legend"> <strong><span class="style3">Delivery Request</span></strong></legend>
            
            <asp:GridView ID="grDelivery" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="delivery_id" DataSourceID="SqlDataSource1"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"   Width="97%"
                >
               
                <Columns>
                    <asp:BoundField DataField="delivery_id" HeaderText="ID" ReadOnly="True" 
                        SortExpression="delivery_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="delivery_date" HeaderText="Delivery Date" 
                        SortExpression="delivery_date">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="delivery_day" HeaderText="Delivery Day" 
                        SortExpression="delivery_day">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="filee_name" HeaderText="File Name" 
                        SortExpression="filee_name">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="delivery_id" 
                        DataNavigateUrlFormatString="DecisionDone.aspx?d=1&amp;id={0}" 
                        HeaderText="Accept" Text="Accept">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="delivery_id" 
                        DataNavigateUrlFormatString="DecisionDone.aspx?d=2&amp;id={0}" 
                        HeaderText="Deny" Text="Deny">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="upload_file" 
                        DataNavigateUrlFormatString="../Fiels/{0}" HeaderText="Download" Text="Download">
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
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="select d.delivery_id,delivery_date,delivery_day,filee_name,upload_file
from delivery d, filee f
where d.delivery_id=f.delivery_id
and d.client_id=@client_id and delivery_case=0">
                <SelectParameters>
                    <asp:SessionParameter Name="client_id" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
   
</asp:Content>
