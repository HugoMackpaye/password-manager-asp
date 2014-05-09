using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_ChangeAvatar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileName = Page.User.Identity.Name.ToString() + new DateTime().ToString("yyMMddHHmmssffff") + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath("~/uploads/" + fileName));
            imgViewFile.ImageUrl = "~/uploads/" + fileName;
            Preview.Visible = true;

            string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            String select = "SELECT COUNT(*) FROM Avatar WHERE UserId = @UserId";
            String update = "UPDATE Avatar SET ImageUrl = @ImgUrl WHERE UserId = @UserId";
            String insert = "INSERT INTO Avatar(UserId, ImageUrl) VALUES(@UserId, @ImgUrl)";
            using (SqlConnection connection = new SqlConnection(dbstring))
            {
                try
                {
                    SqlCommand selectAvatar = new SqlCommand(select, connection);
                    selectAvatar.Parameters.AddWithValue("@UserId", Page.User.Identity.Name.ToString());
                    connection.Open();
                    int count = (int)selectAvatar.ExecuteScalar();

                    SqlCommand insertAvatar = new SqlCommand(count == 0 ? insert : update, connection);
                    insertAvatar.Parameters.AddWithValue("@UserId", Page.User.Identity.Name.ToString());
                    insertAvatar.Parameters.AddWithValue("@ImgUrl", imgViewFile.ImageUrl);
                    insertAvatar.ExecuteNonQuery();
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}