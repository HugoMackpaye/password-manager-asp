using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_memberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DeleteSuccess.Visible = false;
        }
    }

    protected void UserEdit(Object sender, CommandEventArgs e)
    {
        //Label1.Text = "You chose: " + e.CommandName + " Item " + e.CommandArgument;
    }

    protected void UserDelete(Object sender, CommandEventArgs e)
    {

        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);
        
        
        con.Open();


        string sqlStr = "DELETE FROM aspnet_UsersInRoles WHERE aspnet_UsersInRoles.UserId = @userId";
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@userId", e.CommandArgument.ToString());
        sqlCmd.ExecuteNonQuery();

        sqlStr = "DELETE FROM aspnet_Membership WHERE aspnet_Membership.UserId = @userId";
        sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@userId", e.CommandArgument.ToString());
        sqlCmd.ExecuteNonQuery();

        sqlStr = "DELETE FROM aspnet_Users WHERE aspnet_Users.UserId = @userId";
        sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@userId", e.CommandArgument.ToString());
        sqlCmd.ExecuteNonQuery();


        // Close the connection to the database
        con.Close();

        DeleteSuccess.Visible = true;
        UsersListView.DataBind();
    }

}