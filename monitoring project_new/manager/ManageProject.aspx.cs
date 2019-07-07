using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class manager_ManageProject : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string sql = string.Format("select status_id from project where project_id={0}", Request.QueryString["id"]);
                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int i = (int)cmd.ExecuteScalar();
                Session["status_id"] = i;
                con.Close();

                DropDownList1.SelectedValue = i.ToString();
                lbStatus.Text = "The projet status is : " + DropDownList1.SelectedItem.Text;

                if (i == 2 || i == 3)
                    LoginButton.Enabled = false;
                else
                    LoginButton.Enabled = true;
            }
            catch { }
        }

    }
    protected void btnAssign_Click(object sender, EventArgs e)
    {

        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);
        string sql = "update manager set manager_id=@managerId where project_id=@projectId";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@managerId", drManager.SelectedValue);
        cmd.Parameters.AddWithValue("@projectId", Request.QueryString["id"]);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        try
        {
            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress("haya909090@gmail.com");
            // Recipient e-mail address.
            Msg.To.Add(drManager.SelectedItem.Text);
            Msg.Subject = " invation to project";

            Msg.Body = "Hi, <br/>you are invint to manage this  project : " + Request.QueryString["nme"];
            Msg.IsBodyHtml = true;
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("haya909090@gmail.com", "12345_haya");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;
        }
        catch
        {
        }
        lbMessage.Text = "The request is send to the manager...";
        
    }
    protected void btnAcitve_Click(object sender, EventArgs e)
    {
        string sql = String.Format("update project set status_id={1} where project_id={0}", Request.QueryString["id"], DropDownList1.SelectedValue);
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("allprojects.aspx");
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        string name = rnd.Next() + "_" + fuImage.FileName;
        string sql = String.Format("insert into Files(url,title,project_id) values('{0}','{1}',{2})",name,txtTitle.Text,Request.QueryString["id"]);
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
        fuImage.SaveAs(Server.MapPath("../Fiels/" + name));
        lbFileMessage.Text = "The file is uploaded successfuly..";

        grFiles.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = String.Format("insert into delivery(delivery_case,delivery_date,delivery_day,client_id,orgnization_id,project_id) values('{0}','{1}',{2},{3},{4},{5})", 0, txtDate.Text, txtNumDayes.Text, drClient.SelectedValue, drCompany.SelectedValue, Request.QueryString["id"]);
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Random rnd = new Random();
        string name = rnd.Next() + "_" + txtFileTitle.Text + "_" + fuFile.FileName; ;

        sql = String.Format("insert into filee(filee_name,upload_file,delivery_id) values('{0}','{1}',IDENT_CURRENT('delivery'))", txtFileTitle.Text,name);
        cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        fuFile.SaveAs(Server.MapPath("../Fiels/" + name));
        lbMessageTest.Text = "The delivery is done....";
    }
    protected void txtDate_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtNumDayes_TextChanged(object sender, EventArgs e)
    {

    }
}