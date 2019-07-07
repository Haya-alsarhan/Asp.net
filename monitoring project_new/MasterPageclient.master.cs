using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageclient : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["account_id"] == null)
            Response.Redirect("../Default.aspx");


        Session["page"] = Request.Url.AbsolutePath;

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        HttpCookie cookie = Request.Cookies["UserDetails"];
        if (cookie != null)
        {
            lbUser.Text = cookie["Name"];
        }
        if (cookie.Value == "false")
        {
            Response.Redirect("../Default.aspx", true);
        }
    }
}
