using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con = new SqlConnection(strConnString);
        try
        {
            string sql = String.Format("update account  set [password]='{0}' where account_id={1}", txtPass.Text, Request.QueryString["id"]);
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            new Message().ShowMessage("Password is changed");
        }
        catch
        {
            new Message().ShowMessage("Error");
        }
    }
}