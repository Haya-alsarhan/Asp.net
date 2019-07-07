using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class manager_InviteMeeting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    SqlCommand com;

    protected void Button1_Click(object sender, EventArgs e)
    {
        


        SqlConnection con = new SqlConnection(strConnString);
        string sql = string.Format("insert into  participants(account_id,meeting_id,status) values({0},{1},{2})", drTeamMember.SelectedValue, Request.QueryString["id"], 0);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        lbMessage.Text = "Invitation sent successfully.";

        sql = String.Format("select * from meeting where meeting_id={0}", Request.QueryString["id"]);
        cmd = new SqlCommand(sql, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Class1.Send_Email("haya909090@gmail.com", drTeamMember.SelectedItem.Text, String.Format("you invite to attend meeting<br/> {0}<br/> in day{1}<br/> and location {2}<br/>{3} <br/> at time{4}<br/>", dr["meeting_titel"].ToString(), dr["meeting_day"].ToString(), dr["meeting_location"].ToString(), dr["meeting_description"].ToString(), dr["meeting_time"].ToString()), "Meeting Invitation");
        }
        con.Close();
    }
    
}