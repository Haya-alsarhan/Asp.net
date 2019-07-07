using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class UserControl_EditProfile : System.Web.UI.UserControl
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    string str;
    SqlCommand com;
    SqlDataAdapter sqlda;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int account_id = int.Parse(Session["account_id"].ToString());
            // get profile with specific accountid
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "Select * from profile where account_id='" + account_id + "'";
            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();
            sqlda.Fill(dt);
            int RowCount;
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["first_name"].ToString();
                TextBox2.Text = dt.Rows[0]["last_name"].ToString();
                gender.SelectedIndex = int.Parse(dt.Rows[0]["gender"].ToString());
                TextBox7.Text = dt.Rows[0]["social_network1"].ToString();
                TextBox8.Text = dt.Rows[0]["social_network2"].ToString();
                TextBox9.Text = dt.Rows[0]["social_network3"].ToString();
                TextBox10.Text = dt.Rows[0]["country"].ToString();
                TextBox6.Text = dt.Rows[0]["phone_number"].ToString();
                TextBox5.Text = dt.Rows[0]["profile_description"].ToString();
            }
            con.Close();

        }
    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);
        // update profile
        com = new SqlCommand();
        com.Connection = con;
        com.CommandType = CommandType.Text;
        con.Open();
        com.CommandText = "update profile set first_name='" + TextBox1.Text + "',last_name='" + TextBox2.Text + "',gender='" + gender.SelectedIndex + "',social_network1='" + TextBox7.Text + "',social_network2='" + TextBox8.Text + "',social_network3='" + TextBox9.Text + "',country='" + TextBox10.Text + "',profile_description='" + TextBox5.Text + "',phone_number='" + TextBox6.Text + "' where account_id='" + account_id + "'";
        com.ExecuteNonQuery();
        con.Close();

        Response.Redirect(Session["page"].ToString());
    }
}