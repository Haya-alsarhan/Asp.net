using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;


public partial class manager_CreateOrganization : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
    SqlCommand com;


    protected void btn_register_Click(object sender, EventArgs e)
    {

        int account_id = int.Parse(Session["account_id"].ToString());
        SqlConnection con = new SqlConnection(strConnString);


        SqlCommand insu2;
        SqlDataReader dr2;
        insu2 = new SqlCommand(" select organization_name from organization where  organization_name='" + txt_OrganizationName.Text + "'", con);

        if (con.State == ConnectionState.Closed)
            con.Open();

        dr2 = insu2.ExecuteReader();
        if (dr2.Read())
        {
            lblmsg1.Text = " Organization Name aready Exit ";
            con.Close();


        }
        else
        {

            dr2.Close();


            com = new SqlCommand();
            com.Connection = con;
            com.CommandType = CommandType.Text;
            com.CommandText = "Insert into organization values(@organizationname,@organizationdescription,@country,@phonenumber,@email,@account_id);SELECT SCOPE_IDENTITY()";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@organizationname", txt_OrganizationName.Text);
            com.Parameters.AddWithValue("@organizationdescription", txt_Description.Text);
            com.Parameters.AddWithValue("@email", txt_Email.Text);
            com.Parameters.AddWithValue("@country", txt_Country.Text);
            com.Parameters.AddWithValue("@phonenumber", txt_PhoneNumber.Text);
            com.Parameters.AddWithValue("@account_id", account_id);




            if (con.State == ConnectionState.Closed)
                con.Open();

            com.ExecuteNonQuery();


            object organization_id = com;

            con.Close();

            clear();

            GridView1.DataBind();

        }
    }
    private void clear()
    {
        txt_OrganizationName.Text = "";
        txt_Description.Text = "";
        txt_Email.Text = "";
        txt_Country.Text = "";
        txt_PhoneNumber.Text = "";
        lblmsg1.Text = "";

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        int account_id = int.Parse(Session["account_id"].ToString());
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

   

  
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SndOrgInvetationaspx.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Clients.aspx");
    }
}
