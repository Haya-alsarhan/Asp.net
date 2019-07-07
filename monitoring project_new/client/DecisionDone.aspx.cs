using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class client_DecisionDone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
            SqlCommand cmd = null;
            SqlConnection con = new SqlConnection(strConnString);
            string sql = string.Format("update delivery set delivery_case={0} where delivery_id={1} ", Request.QueryString["d"], Request.QueryString["id"]);
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lbMssage.Text = "Your Decision is Save ....";
        }
    }
}