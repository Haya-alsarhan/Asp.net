using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class manager_ShowMessage : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = null;
        string sql = String.Format("insert into message(title,msg,account_from,[account_to],is_read)values('{0}','{1}',{2},{3},0)", txtTitle.Text, Editor1.Content, Session["account_id"].ToString(), Request.QueryString["f"]);
        SqlConnection con = new SqlConnection(strConnString);
        cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Inbox.aspx?s=1");

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = null;
        string sql = String.Format("update message set is_read=1 where id={0}", Request.QueryString["id"]);
        SqlConnection con = new SqlConnection(strConnString);
        cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}