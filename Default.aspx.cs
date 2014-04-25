using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    /**
     * We need this page to determine if the logged user is
     * admin or user. They will be redirected to different locations.
     * If the user is no logged in, then he will be redirected to
     * the login page.
     * 
     */
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (User.IsInRole("admin"))
            {
                Response.Redirect("admin/MemberList.aspx", true);
            }
            else if (User.IsInRole("user"))
            {
                Response.Redirect("user/Home.aspx", true);
            }

        }
        else
        {
            Response.Redirect("auth/Login.aspx", true);
        }
    }
}