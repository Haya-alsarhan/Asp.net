using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class client_SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
        SqlCommand cmd = null;
        string sql = String.Format("insert into message(title,msg,account_from,[account_to],is_read)values('{0}','{1}',{2},{3},0)", txtTitle.Text, Editor1.Content, Session["account_id"].ToString(), drTo.SelectedValue);
        SqlConnection con = new SqlConnection(strConnString);
        cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Inbox.aspx?s=1");
    }
   
}