using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_AddAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addAccountButtonClicked(object sender, EventArgs e)
    {
          // Gets the default connection string/path to our database from the web.config file
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        // The SQL statement to insert a booking. By using prepared statements,
        // we automatically get some protection against SQL injection.
        string sqlStr = "INSERT  INTO  Account (name,description,password,url,userName,userLogin) VALUES (@name, @description, @password, @url, @userNameforAnAccount, @userLogin)";

        // Open the database connection
        con.Open();

        // Create an executable SQL command containing our SQL statement and the database connection
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);

        // Fill in the parameters in our prepared SQL statement

        sqlCmd.Parameters.AddWithValue("@userLogin", this.User.Identity.Name);

        sqlCmd.Parameters.AddWithValue("@name", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@description", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@userNameforAnAccount", TextBox4.Text);
        sqlCmd.Parameters.AddWithValue("@password", TextBox3.Text);
        sqlCmd.Parameters.AddWithValue("@url",TextBox5.Text);
        
       
      
        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

        // Show the user that the booking has been added
       
    }
}