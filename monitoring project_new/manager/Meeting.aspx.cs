using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;

public partial class manager_Meeting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    SqlCommand com;

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        string sql = string.Format("insert into meeting (meeting_titel,meeting_day,meeting_location,meeting_description,meeting_time,account_id) values('{0}','{1}','{2}','{3}','{4}',{5})", txtTitle.Text, txtDate.Text, txtLoc.Text, txtDescription.Text, DropDownList1.SelectedItem, Session["account_id"].ToString());
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        grMeeting.DataBind();
        txtTitle.Text = String.Empty; ;
        txtDate.Text = String.Empty; ;
        txtDescription.Text = String.Empty; ;
        txtDescription.Text = String.Empty;
        txtLoc.Text = String.Empty;
        DropDownList1.SelectedValue = String.Empty;
       
    }
}