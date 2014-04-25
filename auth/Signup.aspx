<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="auth_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CancelDestinationPageUrl="~/auth/Login.aspx" ContinueDestinationPageUrl="~/user/Home.aspx" RequireEmail="True">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>

<!-- form class="form-signin" role="form">
        <h2 class="form-signin-heading">Sign up for your new account</h2>
        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Username" runat="server" required autofocus></asp:TextBox>
        <asp:TextBox  ID="TextBox2" CssClass="form-control" placeholder="Password" runat="server" required type="password"></asp:TextBox>
        <asp:TextBox  ID="TextBox3" CssClass="form-control" placeholder="Repeat password" runat="server" required type="password"></asp:TextBox>
        
        <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Email" runat="server" required type="email"></asp:TextBox>
        <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Repeat email" runat="server" required type="email"></asp:TextBox>
       
        <asp:Button ID="Button1" runat="server" Text="Sign up" CssClass="btn btn-lg btn-primary btn-block" />
        
      </form -->
</asp:Content>

