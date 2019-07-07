using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class logout : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = null;
            SqlConnection con = new SqlConnection(strConnString);
            string sql = string.Format("update history set sign_out='{0}' where account_id={1} and sign_out=sign_time", System.DateTime.Now, Session["account_id"].ToString());
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        catch { }

    //    Session.Clear();
    //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //    Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
    //    Response.Cache.SetNoStore();


        HttpCookie cookie = Request.Cookies["UserDetails"];
        cookie.Value = "false";
        cookie.Expires = DateTime.MaxValue;
        Response.Cookies.Add(cookie);

        Response.Redirect("Default.aspx");





    }
}