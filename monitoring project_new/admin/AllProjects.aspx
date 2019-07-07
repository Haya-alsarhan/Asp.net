<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="AllProjects.aspx.cs" Inherits="admin_AllProjects" %>

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
        <legend class="legend"> <strong><span class="style3">projects</span></strong></legend>
         
      
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="3" DataKeyNames="project_id" Width="97%"  AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                DataSourceID="SqlDataSource1" >
               
                <Columns>
                    <asp:BoundField DataField="project_id" HeaderText="Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="project_id">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="project_name" HeaderText="Project Name" 
                        SortExpression="project_name">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="project_description" 
                        HeaderText="Project Description" SortExpression="project_description">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sname" HeaderText="Status" SortExpression="sname">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
                
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" SelectCommand="SELECT  project.project_id, project.project_name, project.project_description, p_status.sname FROM project INNER JOIN p_status ON project.status_id = p_status.id
order by project.project_id desc"></asp:SqlDataSource>
        </fieldset>
</asp:Content>

