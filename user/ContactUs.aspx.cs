using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void buttonSentClicked(object sender, EventArgs e)
    {
           // Gets the default connection string/path to our database from the web.config file
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // Creates a connection to our database
        SqlConnection con = new SqlConnection(dbstring);

       

        string sqlStr = "INSERT  INTO  questions (mail,subject,question,user_question) VALUES (@mail, @subject, @question, @user_question)";

        // Open the database connection
        con.Open();

        // Create an executable SQL command containing our SQL statement and the database connection
        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);

        // Fill in the parameters in our prepared SQL statement

        sqlCmd.Parameters.AddWithValue("@user_question", this.User.Identity.Name);

        sqlCmd.Parameters.AddWithValue("@mail", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@subject", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@question", TextBox3.Text);
        // Execute the SQL command
        sqlCmd.ExecuteNonQuery();

        // Close the connection to the database
        con.Close();

        // Show the user that the booking has been added
       
    
    }


}