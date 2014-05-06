<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="user_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="form-contact">
<form class="form-signin" role="form">
        <h2 class="form-signin-heading">Contact us</h2>
        

     
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Email" runat="server" required type="mail"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Subject" runat="server" required type="Subject"></asp:TextBox><br />
        <asp:TextBox ID="TextBox3" runat="server" Rows="3" CssClass="form-control" placeholder="Your question ..." runat="server" required type="text"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-lg btn-primary btn-block" OnClick="buttonSentClicked" />
        <asp:Label ID="Label1" runat="server">
            
       
        </asp:Label>
        
      </form>
 </div>
  

</asp:Content>

