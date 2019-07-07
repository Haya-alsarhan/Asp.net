using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;

public partial class manager_SndOrgInvetationaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    SqlCommand com;
    protected void Button5_Click(object sender, EventArgs e)
    {
        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);

        SqlCommand insu4;
        insu4 = new SqlCommand(" select email from account where  email='" + TextBox2.Text + "'", con);
        SqlDataReader dr4;
        if (con.State == ConnectionState.Closed)
            con.Open();

        dr4 = insu4.ExecuteReader();
        if (dr4.Read())
        {
            orlabel0.Text = "Email aready Exit ";
            dr4.Close();



        }
        else
        {
            dr4.Close();
            SqlCommand com4;
            com4 = new SqlCommand();
            com4.Connection = con;
            com4.CommandType = CommandType.Text;
            com4.CommandText = "Insert into account(email,account_type) values(@email,@accounttype);SELECT SCOPE_IDENTITY()";
            com4.Parameters.Clear();

            com4.Parameters.AddWithValue("@email", TextBox2.Text);
            com4.Parameters.AddWithValue("@accounttype", 2);

            if (con.State == ConnectionState.Closed)
                con.Open();
            object accountid = com4.ExecuteScalar();



            SqlCommand com5;
            com5 = new SqlCommand();
            com5.Connection = con;
            com5.CommandType = CommandType.Text;
            com5.CommandText = "insert into client values(@clientId,@organizationId)";
            com5.Parameters.Clear();
            com5.Parameters.AddWithValue("@clientId", accountid);
            com5.Parameters.AddWithValue("@organizationId", DropDownList2.SelectedValue);
          
            if (con.State == ConnectionState.Closed)
                con.Open();

            com5.ExecuteNonQuery();

            con.Close();

           MailMessage Msg = new MailMessage();
          //   Sender e-mail address.
           Msg.From = new MailAddress(TextBox2.Text);
           // Recipient e-mail address.
           Msg.To.Add(TextBox2.Text);
            Msg.Subject = " invation to orgnization";

            Msg.Body = "Hi, <br/>you are invited to the <br/>orgnization: " + DropDownList2.SelectedItem + " please visit the site to complete your registration";
            Msg.IsBodyHtml = true;
          // your remote SMTP server IP.
          SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
          smtp.Port = 587;
           smtp.Credentials = new System.Net.NetworkCredential("haya909090@gmail.com", "12345_haya");
           smtp.EnableSsl = true;
            smtp.Send(Msg);
           Msg = null;
            Label10.Visible = true;
            Label10.Text = "The invitation was sent successfully";
            // Clear the textbox valuess
            TextBox2.Text = "";


        }
    }

  
   
}