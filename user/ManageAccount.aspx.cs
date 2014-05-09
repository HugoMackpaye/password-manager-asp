using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_ManageAccount : System.Web.UI.Page
{
    String defaultAvatar = "~/pictures/avatar.png/";

    protected void Page_Load(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        String select = "SELECT COUNT(*) FROM Avatar WHERE UserId = @UserId";
        String select2 = "SELECT ImageUrl FROM Avatar WHERE UserId = @UserId";
        using (SqlConnection connection = new SqlConnection(dbstring))
        {
            try {
                SqlCommand selectAvatar = new SqlCommand(select, connection);
                selectAvatar.Parameters.AddWithValue("@UserId", Page.User.Identity.Name.ToString());
                connection.Open();

                int count = (int)selectAvatar.ExecuteScalar();

                if (count > 0)
                {
                    selectAvatar.CommandText = select2;
                    String userAvatarUrl = (String)selectAvatar.ExecuteScalar();
                    ImgAvatar.ImageUrl = userAvatarUrl;
                }
                else
                {
                    ImgAvatar.ImageUrl = defaultAvatar;
                }


            }
            finally
            {
                connection.Close();
            }
        }

    }
}