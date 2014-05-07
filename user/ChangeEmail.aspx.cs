using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class user_ChangeEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser mu = Membership.GetUser();
        Email.Text = mu.Email.ToString();
        Question.Text = mu.PasswordQuestion.ToString();

        if (!this.IsPostBack) {
            ChangeError.Visible = false;
            ChangeSuccess.Visible = false;
        }
    }

    protected void SaveChanges(Object sender, CommandEventArgs e)
    {
        
        MembershipUser mu = Membership.GetUser();
        if (mu.ChangePasswordQuestionAndAnswer(Password.Text, Question.Text, Answer.Text))
        {
            ChangeSuccess.Visible = true;
            ChangeError.Visible = false;
        }
        else 
        {
            ChangeError.Visible = true;
            ChangeSuccess.Visible = false;
        }
    }
}