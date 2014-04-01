<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="auth_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form class="form-signin" role="form">
        <h2 class="form-signin-heading">Please sign in</h2>
        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Username" runat="server" required autofocus></asp:TextBox>
        <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" runat="server" required></asp:TextBox>
        
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" CssClass="checkbox" />

        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-lg btn-primary btn-block" />
        <asp:Label ID="Label1" runat="server">
            
        Don't have an account? <asp:HyperLink ID="HyperLink1" runat="server">Sign up</asp:HyperLink>
        </asp:Label>
        
      </form>

</asp:Content>

