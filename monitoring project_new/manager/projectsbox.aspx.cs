using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;


public partial class manager_projectsbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label6.Visible = false;
        Label5.Visible = false;
      
       
    }

  
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    protected void Button4_Click(object sender, EventArgs e)
    {

        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand com1;
        SqlCommand insu1 = new SqlCommand();


        SqlDataReader dr1;
        insu1 = new SqlCommand(" select project_name  from project where  project_name='" + TextBox1.Text + "'", con);

        if (con.State == ConnectionState.Closed)
            con.Open();

        dr1 = insu1.ExecuteReader();
        if (dr1.Read())
        {
            Label4.Text = " Project Name already Exit ";
            con.Close();
       
         

        }
        else
        {

            dr1.Close();




            com1 = new SqlCommand();
            com1.Connection = con;
            com1.CommandType = CommandType.Text;
            com1.CommandText = "Insert into project(project_name,project_description,status_id) values(@projectname,@projectdescription,1);SELECT SCOPE_IDENTITY()";
            com1.Parameters.Clear();
            com1.Parameters.AddWithValue("@projectname", TextBox1.Text);
            com1.Parameters.AddWithValue("@projectdescription", TextBox2.Text);

            if (con.State == ConnectionState.Closed)
                con.Open();
            object project_id = com1.ExecuteScalar();
            con.Close();

            com1 = new SqlCommand();
            com1.Connection = con;
            com1.CommandType = CommandType.Text;
            com1.CommandText = "insert into manager values(@managerId,@organizationId,@projectId)";
            com1.Parameters.Clear();
            com1.Parameters.AddWithValue("@managerId", account_id);
            com1.Parameters.AddWithValue("@organizationId", DropDownList4.SelectedValue);
            com1.Parameters.AddWithValue("@projectId", project_id);
            if (con.State == ConnectionState.Closed)
                con.Open();

            com1.ExecuteNonQuery();

            con.Close();
            Label6.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
          
        }


    }



    private void clear()
    {

        TextBox1.Text = "";
        TextBox2.Text = "";

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);




        if (drOldusers.SelectedIndex != 0)
        {

            string sql = "update team set project_id=@projectId where team_id=@teamId";

            SqlCommand com4 = new SqlCommand(sql, con);
            com4.Parameters.Clear();


            com4.Parameters.AddWithValue("@teamId", drOldusers.SelectedValue);
            com4.Parameters.AddWithValue("@projectId", DropDownList3.SelectedValue);

            if (con.State == ConnectionState.Closed)
                con.Open();

            com4.ExecuteNonQuery();
            con.Close();

            Class1.Send_Email("haya909090@gmail.com", drOldusers.SelectedItem.Text, "Hi, <br/>you are invint to the project : " + DropDownList3.SelectedItem.Text + "<br/><br/> please log in the system...", "Project Invitation");

            new Message().ShowMessage(" invitation  was send successfully");

        }

        

            SqlCommand insu4;
            insu4 = new SqlCommand(" select * from account where  email='" + TextBox3.Text + "'", con);
            SqlDataReader dr4;
            if (con.State == ConnectionState.Closed)
                con.Open();

            dr4 = insu4.ExecuteReader();
            if (dr4.Read())
            {
                Label5.Visible = true;
                Label5.Text = "Email aready Exit ";
                dr4.Close();

            }
            else
            {
                dr4.Close();
                if (TextBox3.Text != string.Empty)
                {

                    SqlCommand com3;
                    com3 = new SqlCommand();
                    com3.Connection = con;
                    com3.CommandType = CommandType.Text;
                    com3.CommandText = "Insert into account(email,account_type) values(@email,@accounttype);SELECT SCOPE_IDENTITY()";
                    com3.Parameters.Clear();

                    com3.Parameters.AddWithValue("@email", TextBox3.Text);
                    com3.Parameters.AddWithValue("@accounttype", 3);

                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    object accountid = com3.ExecuteScalar();



                    SqlCommand com4;
                    com4 = new SqlCommand();
                    com4.Connection = con;
                    com4.CommandType = CommandType.Text;
                    com4.CommandText = "insert into team values(@teamId,@projectId)";
                    com4.Parameters.Clear();
                    com4.Parameters.AddWithValue("@teamId", accountid);
                    com4.Parameters.AddWithValue("@projectId", DropDownList3.SelectedValue);

                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    com4.ExecuteNonQuery();

                    con.Close();

                    Class1.Send_Email("haya909090@gmail.com", TextBox3.Text, "Hi, <br/>you are invint to the project : " + DropDownList3.SelectedItem.Text + "<br/><br/> please log in the system...", "Project Invitation");
                    
                    new Message().ShowMessage(" invitation  was send successfully");
                    // Clear the textbox valuess
                    TextBox3.Text = "";

                    Response.Redirect(Session["page"].ToString());


                }
            }
        }
    
   

   

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("allprojects.aspx");
    }




}