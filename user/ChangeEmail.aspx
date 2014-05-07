<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeEmail.aspx.cs" Inherits="user_ChangeEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
    <h3>Change e-mail and security question</h3>
<asp:PlaceHolder ID="ChangeSuccess" runat="server" Visible="false">
        <div class="alert alert-success">Your E-Mail and Password-Question/Answer has been changed!</div>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="ChangeError" runat="server" Visible="false">
        <div class="alert alert-warning">
            There was an error with your provided information! Please check your password.
        </div>            
 
    </asp:PlaceHolder>

                                 <div class="form-group">

                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="col-sm-4 control-label">E-mail:</asp:Label>
                     
                      <div class="col-sm-6">
                                <asp:TextBox ID="Email" runat="server" CssClass="form-control" ValidationGroup="ChangeEmailValidationGroup"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="ChangeEmailValidationGroup">Email is required.</asp:RequiredFieldValidator>
                                   </div> </div>


                                    <div class="form-group">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" CssClass="col-sm-4 control-label">Security Question:</asp:Label>
 <div class="col-sm-6">
                                <asp:TextBox ID="Question" runat="server" CssClass="form-control" ValidationGroup="ChangeEmailValidationGroup"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="ChangeEmailValidationGroup">Security Question is required.</asp:RequiredFieldValidator>
                                   </div> </div>


                                    <div class="form-group">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" CssClass="col-sm-4 control-label">Security Answer:</asp:Label>

                                 <div class="col-sm-6">
                                <asp:TextBox ID="Answer" runat="server" CssClass="form-control" ValidationGroup="ChangeEmailValidationGroup"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="ChangeEmailValidationGroup">Security answer is required</asp:RequiredFieldValidator>
                                  </div>  </div>

                                    <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="col-sm-4 control-label">Password:</asp:Label>

                                 <div class="col-sm-6">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" ValidationGroup="ChangeEmailValidationGroup" AutoPostBack="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"  
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="ChangeEmailValidationGroup">Password is required.</asp:RequiredFieldValidator>
                                    </div></div>

<div class="form-group">
                        <asp:Button runat="server" OnCommand="SaveChanges" Text="Save changes" CssClass="btn btn-primary" ValidationGroup="ChangeEmailValidationGroup" />
                        <asp:LinkButton PostBackUrl="~/user/ManageAccount.aspx" Text="Cancel" runat="server" CssClass="btn btn-default" />
                        </div>
                        
                        </div>
</asp:Content>

