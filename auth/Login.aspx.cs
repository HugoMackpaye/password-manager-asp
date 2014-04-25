using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;

public partial class auth_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Login_Click(object sender, EventArgs e)
    {
       bool successful = FormsAuthentication.Authenticate(UserName.Text, Password.Text);
       if (successful)
       {
           BadCredentials.Visible = true;
           FormsAuthentication.RedirectFromLoginPage(UserName.Text, false);
       }
       else
       {
           BadCredentials.Visible = true;
       }
       
    }

}