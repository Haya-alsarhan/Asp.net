using System;
using System.Collections;
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

public partial class UserControl_ChangePassword : System.Web.UI.UserControl
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    string str, UserName, Password;
    SqlCommand com;
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Button1_Click(object sender, EventArgs e)
    { // check mandatory fields
        if (TextBox1.Text.Equals(String.Empty) || TextBox2.Text.Equals(String.Empty) || TextBox3.Text.Equals(String.Empty))
        {
            // Label5.Visible = true;
            //  Label6.Visible = true;
            //   Label7.Visible = true;
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            Label8.Text = "You must enter all required fields ";
            return;
        }
        // check matching input
        if (!TextBox2.Text.Equals(TextBox3.Text))
        {
            Label8.Text = "Confim password must match with new password entry ";
            return;
        }
        string oldPassword = TextBox1.Text;
        // must get accountid from session

        // get account with specific id and same password
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "Select * from account where password='" + oldPassword + "'";
        com = new SqlCommand(str);
        sqlda = new SqlDataAdapter(com.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        // check old password
        if (dt.Rows.Count == 0)
        {
            Label8.Text = "Your password is wrong";
            con.Close();
            return;
        }
        // update new password
        com = new SqlCommand();
        com.Connection = con;
        com.CommandType = CommandType.Text;
        com.CommandText = "update account set password='" + TextBox2.Text + "' where account_id="+Session["account_id"].ToString();
        com.ExecuteNonQuery();
        con.Close();

        Label8.Text = "Password is channged";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // clear all textboxes
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        // Label7.Visible = false;
        // Label6.Visible = false;
        // Label5.Visible = false;
        Label8.Text = String.Empty;
    }
}