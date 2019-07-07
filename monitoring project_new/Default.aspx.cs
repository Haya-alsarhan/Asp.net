using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        // Check if the browser supports cookies
        if (Request.Browser.Cookies)
        {
            if (Request.QueryString["CheckCookie"] == null)
            {
                // Create the test cookie object
                HttpCookie cookie = new HttpCookie("TestCookie", "1");
                Response.Cookies.Add(cookie);
                // Redirect to the same webform
                Response.Redirect("Default.aspx?CheckCookie=1");
            }
            else
            {
                //Check the existence of the test cookie
                HttpCookie cookie = Request.Cookies["TestCookie"];
                if (cookie == null)
                {
                    Label4.Text = "We have detected that, the cookies are disabled on your browser. Please enable cookies.";
                }
            }
        }
        else
        {
            Label4.Text = "Browser doesn't support cookies. Please install one of the modern browser's that support cookies.";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ConnectionString;
        string UserName, Password;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;

        SqlConnection con = new SqlConnection(strConnString);


        con.Open();
        cmd = new SqlCommand(" select   *  from account where  (username = @userName) and (password=@password)");

        cmd.Parameters.Clear();
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        sqlda.SelectCommand.Parameters.AddWithValue("@userName", TextBox1.Text);
        sqlda.SelectCommand.Parameters.AddWithValue("@password", TextBox2.Text);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        if (RowCount > 0)
        {
            UserName = dt.Rows[0]["username"].ToString();
            Password = dt.Rows[0]["password"].ToString();
            Session["account_id"] = dt.Rows[0]["account_id"].ToString();
         
            HttpCookie cookie = new HttpCookie("UserDetails", "true");
            cookie["Name"] = TextBox1.Text;
            cookie["password"] = TextBox2.Text;
            // Cookie will be persisted for 30 days
            cookie.Expires = DateTime.MaxValue;
            // Add the cookie to the client machine
            Response.Cookies.Add(cookie);

            string sql = String.Format("insert into history(sign_out,sign_time,account_id) values('{0}','{0}',{1})",System.DateTime.Now,Session["account_id"].ToString());
            cmd = new SqlCommand(sql,con);
            con.Close();
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows[0]["account_type"].ToString() == "1")

                Response.Redirect("~/manager/");
            else if (dt.Rows[0]["account_type"].ToString() == "3")
                Response.Redirect("~/team/");
            else if (dt.Rows[0]["account_type"].ToString() == "2")
                Response.Redirect("~/client/");
            else if (dt.Rows[0]["account_type"].ToString() == "4")
                Response.Redirect("~/admin/admin.aspx");

        }
        else

            Label4.Text = "Invalid username or password ";



        con.Close();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("getpassword.aspx");
    }
}