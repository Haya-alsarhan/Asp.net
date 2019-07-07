<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="client_Default" %>

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
            .style2{width: 607px;
                height: 351px;
                margin-left: 285px;
            }
            .style3
            {
                color: #333333;
                font-family: "Times New Roman", Times, serif;
                
            }
            .style5
            {
                width: 602px;
                height: 340px;
                margin-left: 288px;
            }
            .style7
            {
                width: 596px;
                height: 180px;
                margin-left: 290px;
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <fieldset class="style2">
        <legend class="legend"> <strong><span class="style3">My Project</span></strong></legend>
           <asp:GridView ID="grDelivery" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="project_id" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None"  CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
             
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
             
<Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="&lt;&lt;" />
                    <asp:BoundField DataField="project_id" HeaderText="ID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="project_id" Visible="false" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="project_name" HeaderText="Project" 
                        SortExpression="project_name" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="project_description" 
                        HeaderText="Description" SortExpression="project_description" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Manager Email" 
                        SortExpression="email" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nme" HeaderText="Manager Name" ReadOnly="True" 
                        SortExpression="nme" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sname" HeaderText="Status" SortExpression="sname" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
               
<PagerStyle CssClass="pgr"></PagerStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
                SelectCommand="SELECT p.project_id, p.project_name, p.project_description, a.email, pp.first_name + ' ' + pp.last_name AS nme, p_status.sname FROM team AS t INNER JOIN project AS p ON t.project_id = p.project_id INNER JOIN manager AS m ON p.project_id = m.project_id INNER JOIN account AS a ON m.manager_id = a.account_id INNER JOIN profile AS pp ON a.account_id = pp.account_id INNER JOIN p_status ON p.status_id = p_status.id WHERE (t.team_id = @team)">
                <SelectParameters>
                    <asp:SessionParameter Name="team" SessionField="account_id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>

  
        <fieldset class="style5" >
           <legend class="legend"> <strong><span class="style3">Project Team</span></strong></legend>
           <asp:GridView ID="GridView2" runat="server"   Width="97%" AllowPaging="True" AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"  CellPadding="3"
            AutoGenerateColumns="False" DataKeyNames="team_id" 
            DataSourceID="SqlDataSource3" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="team_id" HeaderText="ID" SortExpression="team_id" 
                    ReadOnly="True" Visible="false">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email" 
                    SortExpression="email" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
            </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <EmptyDataTemplate>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="10pt" 
                     ForeColor="Red" Text="No team members added to this  project yet..."></asp:Label>
            </EmptyDataTemplate>
             
        </asp:GridView>
 
	
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
            
            SelectCommand="SELECT account.email, team.team_id FROM team INNER JOIN account ON team.team_id = account.account_id WHERE (team.project_id = @project_id)" 
            DeleteCommand="DELETE FROM team WHERE (team_id = @team_id) AND (project_id = @project_id)">
            
            <SelectParameters>
                <asp:ControlParameter ControlID="grDelivery" Name="project_id" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
 
        </fieldset>
    <fieldset class="style7">
    <legend>files of project</legend>
    
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
           Width="97%" AllowPaging="True" AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"  CellPadding="3" DataSourceID="SqlDataSource2" 
            >
          
            <Columns>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="url" 
                    DataNavigateUrlFormatString="../Fiels/{0}" HeaderText="Download" 
                    Text="Download">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
            SelectCommand="SELECT [url], [title] FROM [Files] WHERE ([project_id] = @project_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="grDelivery" Name="project_id" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </fieldset>
</asp:Content>
