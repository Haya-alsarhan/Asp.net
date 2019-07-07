<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Historyl.ascx.cs" Inherits="UserControl_Historyl" %>

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
        <fieldset class="style2">
        <legend class="legend"> <strong><span class="style3">History</span></strong></legend>
         
      
<asp:GridView ID="grHistory" runat="server" AutoGenerateColumns="False" 
    CellPadding="3" DataKeyNames="history_id" DataSourceID="SqlDataSource1" 
    Width="97%" AllowPaging="True" AllowSorting="True"   CssClass="mGrid" 
                PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" >
   
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="history_id" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="history_id" Visible="false">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="sign_time" HeaderText="Sign in Time" 
            SortExpression="sign_time">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="sign_out" HeaderText="Sign out Time" 
            SortExpression="sign_out">
        <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
    </Columns>
      
</asp:GridView>
  
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringp %>" 
    
    SelectCommand="SELECT [history_id], [sign_out], [sign_time] FROM [history] WHERE ([account_id] = @account_id) order by history_id desc" 
    DeleteCommand="delete from history where history_id=@history_id ">
    <DeleteParameters>
        <asp:ControlParameter ControlID="grHistory" Name="history_id" 
            PropertyName="SelectedValue" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter Name="account_id" SessionField="account_id" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>

</fieldset>
    