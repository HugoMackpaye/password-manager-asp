<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="auth_Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>User: user, PW: 123456789, Role: user</p>
    <p>User: admin, PW: 123456789, Role: admin</p>

   <asp:Login ID="Login1" runat="server" Font-Names="Verdana"  
        Font-Size="10pt" DestinationPageUrl="~/user/Home.aspx" 
        DisplayRememberMe="False">
      <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
   </asp:Login> 

<!--
<LayoutTemplate>
        <h2 class="form-signin-heading">Please sign in</h2>
   
        
        <asp:TextBox ID="UserName" CssClass="form-control" placeholder="Username" runat="server" autofocus></asp:TextBox>
        <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="*"></asp:requiredfieldvalidator>
        <asp:Label ID="BadCredentials" runat="server" Text="The username/password is not correct." Visible="false"></asp:Label>

        <asp:TextBox ID="Password" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
        <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="*"></asp:requiredfieldvalidator>

        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" CssClass="checkbox" />

        <asp:Literal id="FailureText" runat="server"></asp:Literal>

        <asp:Button ID="Login" CommandName="Login" runat="server" Text="Login" 
            CssClass="btn btn-lg btn-primary btn-block" onclick="Login_Click" />


        <asp:Label ID="Label1" runat="server">
            
        Don't have an account? <asp:HyperLink ID="HyperLink1" runat="server">Sign up</asp:HyperLink>
        </asp:Label>
        </LayoutTemplate>
        </asp:Login>

      </form>
      -->
</asp:Content>

