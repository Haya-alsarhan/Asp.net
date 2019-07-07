<%@ Page Title="" Language="C#" MasterPageFile="~/Masterinside.master" AutoEventWireup="true" CodeFile="allprojects.aspx.cs" Inherits="manager_allprojects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

       .style5
       {
           width: 874px;
           margin-left: 190px;
       }
       .style6
       {
           width: 829px;
           margin-left: 0px;
       }

       .style7
       {
           width: 825px;
           margin-left: 191px;
       }

   </style> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="accountInfo">
        <fieldset class="style7">
        <legend>My Projects</legend>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
        
        
        SelectCommand="SELECT project.project_name, project.project_description, project.project_id FROM manager INNER JOIN project ON manager.project_id = project.project_id WHERE (manager.manager_id = @account_id)" 
        DeleteCommand="DELETE FROM team WHERE  (project_id = @project_id);
 DELETE FROM [project] WHERE [project_id]=@project_id;" 
       >
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="project_id" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="account_id" 
                SessionField="account_id" />
        </SelectParameters>
    </asp:SqlDataSource>
  
   


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="project_id" DataSourceID="SqlDataSource1"  
            AllowPaging="True" PageSize="5" CellPadding="3" Font-Names="Calibri" ForeColor="White"
  Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" >
            
            <Columns>
                <asp:CommandField SelectText="&gt;&gt;" ShowSelectButton="True" ControlStyle-ForeColor="Black" />
                <asp:BoundField DataField="project_id" HeaderText="Project ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="project_id" Visible="false" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="project_name" HeaderText="Project Name" 
                    SortExpression="project_name" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="project_description" HeaderText="Description" 
                    SortExpression="project_description" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                
                    
              
                <asp:HyperLinkField DataNavigateUrlFields="project_id,project_name" 
                    DataNavigateUrlFormatString="ManageProject.aspx?id={0}&amp;nme={1}" 
                    HeaderText="Manage" Text="Manage" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:HyperLinkField>
            </Columns>
             <EditRowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1"  ForeColor="White" Font-Bold="True" />
            
           
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

              </fieldset>
     </div>	
             

    <div class="style5">
        
        <fieldset class="style6">
        <legend>Team members</legend>
        <asp:GridView ID="GridView2" runat="server"  
            AutoGenerateColumns="False" DataKeyNames="team_id"  
  Font-Names="Calibri" ForeColor="White"
  Width="97%"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
            DataSourceID="SqlDataSource3" CellPadding="3"  
                GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="team_id" HeaderText="ID" SortExpression="team_id" 
                    ReadOnly="True" Visible="false" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Team members" 
                    SortExpression="email" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('Do you want to delete?');" 
                            Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
            </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <EmptyDataTemplate>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="10pt" 
                     ForeColor="Red" Text="No team members added to this  project yet..."></asp:Label>
            </EmptyDataTemplate>
             
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
 
	
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
            
            SelectCommand="SELECT  username + '  / ' + email AS email , team.team_id FROM team INNER JOIN account ON team.team_id = account.account_id WHERE (team.project_id = @project_id)" 
            DeleteCommand="DELETE FROM team WHERE (team_id = @team_id) AND (project_id = @project_id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView2" Name="team_id" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="project_id" 
                    PropertyName="SelectedValue" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="project_id" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
 
	
        <br />
 
	
    </fieldset>
     </div>	
              
         

    
    </asp:Content>

