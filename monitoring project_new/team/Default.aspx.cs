using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class client_Default : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection conn = new SqlConnection(strConnString);
            string sql = string.Format("select count(*) from message where is_read=0 and account_to={0}",Session["account_id"].ToString());
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            int i = (int)cmd.ExecuteScalar();
            conn.Close();
            if (i > 0)
                new Message().ShowMessage(string.Format("You have {0} unread messages in your inbox",i));
 
        }

    }
}