using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Xml;

public partial class getpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();

            SqlCommand cmd = new SqlCommand();


            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;

            {
                con.Open();

                cmd = new SqlCommand(" select username,password  from account where email ='" + TextBox1.Text + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(TextBox1.Text);
                // Recipient e-mail address.
                Msg.To.Add(TextBox1.Text);
                Msg.Subject = " Password retrieval";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["UserName"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("haya909090@gmail.com", "12345_haya");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                Response.Redirect("passwordsend.aspx");
                // Clear the textbox valuess
                TextBox1.Text = "";
            }
            else
            {
                Label4.Text = "We can't find a user with that email Please check the email address and try again.";
            }
        }

        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Defualt.aspx");
    }
}
