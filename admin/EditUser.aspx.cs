using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_EditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String userId = Request["userId"];
        if (userId != null && userId.Length > 0)
        {
            //load user
        }
        else
        {
            //display error
        }
    }
}