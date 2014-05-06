using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class user_AccountOverview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataSource1.SelectParameters.Add("UserName", Page.User.Identity.Name.ToString());
            DeleteSuccess.Visible = false;
            DeleteConfirm.Visible = false;
        }
       
    }

    protected void AccountEdit(Object sender, CommandEventArgs e)
    { }


    protected void AccountDelete(Object sender, CommandEventArgs e)
    {
        DeleteConfirm.Visible = true;
        LinkButtonDelete2.CommandArgument = e.CommandArgument.ToString();
        LinkButtonDelete2.CommandName = e.CommandName.ToString();

    }
    protected void AccountDelete2(Object sender, CommandEventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);

        con.Open();


        string sqlStr = "DELETE FROM Account WHERE Account.id = @AccId";
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@AccId", e.CommandArgument.ToString());
        sqlCmd.ExecuteNonQuery();

        

        // Close the connection to the database
        con.Close();

        DeleteSuccess.Visible = true;
        DeleteConfirm.Visible = false;
        AccountsListView.DataBind();
    }
}