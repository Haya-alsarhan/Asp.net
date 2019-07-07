using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class admin_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnStringqq = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;

        SqlConnection con = new SqlConnection(strConnStringqq);
        SqlCommand com;
        SqlCommand profileCom = new SqlCommand();
        SqlCommand insu = new SqlCommand();
        SqlDataReader dr;



        insu = new SqlCommand(" select username from account, profile  where account.account_id=profile.account_id and  email='" + TextBox3.Text + "'", con);

        if (con.State == ConnectionState.Closed)
            con.Open();

        dr = insu.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = " username or Email is aready Exit ";
            con.Close();

            return;

        }

        con.Close();





        com = new SqlCommand();
        com.Connection = con;
        com.CommandType = CommandType.Text;

        com.CommandText = "insert into account(username,email,password,account_type)  values (@UserName , @email,@Password,@accounttype) ";
        com.Parameters.Clear();
        com.Parameters.AddWithValue("@UserName", TextBox2.Text);
        com.Parameters.AddWithValue("@Password", TextBox4.Text);
        com.Parameters.AddWithValue("@email", TextBox3.Text);
        com.Parameters.AddWithValue("@accounttype", RadioButtonList1.SelectedIndex + 1);

        profileCom.Connection = con;
        profileCom.CommandType = CommandType.Text;
        profileCom.CommandText = "Insert into profile (first_name,gender,account_id) " +
        " values(@frist_name,@gender,@accountid)";
        profileCom.Parameters.Clear();

        profileCom.Parameters.AddWithValue("@frist_name", TextBox6.Text);
        profileCom.Parameters.AddWithValue("@gender", RadioButtonList2.SelectedIndex);


        String str = "Select account_id from account where email='" + TextBox3.Text + "'";
        SqlCommand selectCom = new SqlCommand(str, con);
        if (con.State == ConnectionState.Closed)
            con.Open();

        com.ExecuteNonQuery();


        int accountid = -1;
        SqlDataReader reader = selectCom.ExecuteReader();





        if (reader.Read())
        {
            accountid = reader.GetInt32(0);

        }

        reader.Close();

        if (accountid != -1)
        {

            profileCom.Parameters.AddWithValue("@accountid", accountid);

            profileCom.ExecuteNonQuery();
        }

        Response.Redirect("admin.aspx");
        con.Close();




    }
    private void clear()
    {

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        RadioButtonList2.SelectedIndex = 0;
    }
}