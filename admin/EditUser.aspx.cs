using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class admin_EditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String userName = Request["user"];
        if (userName != null && userName.Length > 0)
        {
            MembershipUserCollection userList = Membership.FindUsersByName(userName);
            MembershipUser membershipUser = null;
            foreach (MembershipUser user in userList)
            {
                membershipUser = user;
                break;
            }

            if (membershipUser != null)
            {
                if (IsPostBack)
                {
                    membershipUser.Email = Email.Text;
                    membershipUser.ChangePassword(membershipUser.GetPassword(), Password.Text);
                    membershipUser.ChangePasswordQuestionAndAnswer(Password.Text, Question.Text, Answer.Text);

                    Membership.UpdateUser(membershipUser);

                    Roles.RemoveUserFromRoles(userName, Roles.GetRolesForUser(userName));
                    Roles.AddUserToRole(userName, RoleList.SelectedValue);
                    UpdateSuccess.Visible = true;    
                }
                else 
                {
                    UpdateSuccess.Visible = false;
                    UserName.Text = membershipUser.UserName;
                    Email.Text = membershipUser.Email;
                    Question.Text = membershipUser.PasswordQuestion;

                    RoleList.DataSource = Roles.GetAllRoles();
                    RoleList.DataBind();

                    String[] rolesForUser = Roles.GetRolesForUser(userName);
                    for (int i = 0; i < RoleList.Items.Count; i++)
                    {
                        if (rolesForUser.Contains(RoleList.Items[i].Value))
                        {
                            RoleList.SelectedIndex = i;
                        }
                    }
                }
                
                

            }


            //load user
        }
        else
        {
            //display error
        }
    }
}