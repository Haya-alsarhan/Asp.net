using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class client_DesicionMeetingDone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
            SqlCommand cmd = null;
            SqlConnection con = new SqlConnection(strConnString);
            string sql = string.Format("update participants set status={0} where meeting_id={1} and account_id={2}", Request.QueryString["d"], Request.QueryString["id"], Session["account_id"].ToString());
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lbMssage.Text = "Your Decision save ..";
        }
    }
}