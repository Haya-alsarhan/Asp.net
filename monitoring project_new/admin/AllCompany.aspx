<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="AllCompany.aspx.cs" Inherits="admin_AllCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../gridviewstyle.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            
            .style2{width: 761px;
                height: 481px;
                margin-left: 236px;
            }
            .style3
            {
                color: #333333;
                font-family: "Times New Roman", Times, serif;
                
            }
            </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <fieldset class="style2">
        <legend class="legend"> <strong><span class="style3">organizations</span></strong></legend>
         
      
  
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1"  Width="97%"  AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
             >
               
                <Columns>
                    <asp:BoundField DataField="organization_name" HeaderText="Name" 
                        SortExpression="organization_name">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="organization_description" HeaderText="Description" 
                        SortExpression="organization_description" />
                    <asp:BoundField DataField="country" HeaderText="Country" 
                        SortExpression="country">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="phone_number" HeaderText="Phone Number" 
                        SortExpression="phone_number">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email_o" HeaderText="Email" SortExpression="email_o">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
               
                
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                SelectCommand="SELECT [organization_name], [organization_description], [country], [phone_number], [email_o] FROM [organization]">
            </asp:SqlDataSource>
        </fieldset>
    
    </asp:Content>