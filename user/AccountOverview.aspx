<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountOverview.aspx.cs" Inherits="user_AccountOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <asp:PlaceHolder ID="DeleteSuccess" runat="server" Visible="false">
        <div class="alert alert-success">Account has been deleted!</div>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="DeleteConfirm" runat="server" Visible="false">
    <form action="" method="post" role="form" name="delete">
        <div class="alert alert-warning">
            <strong>Warning!</strong> Do you really want to delete this account? There is no way back!<asp:LinkButton ID="LinkButtonDelete2" OnCommand="AccountDelete2" CssClass="btn-link alert-link" CommandArgument=<%# Eval("id") %> runat="server" CommandName="UserId">Yes!</asp:LinkButton>
        </div>            
    </form>
    </asp:PlaceHolder>

<asp:ListView ID="AccountsListView" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>
      <tr>
        <td><%# Eval("name") %></td>
        <td><%# Eval("description") %></td>
        <td><%# Eval("password") %></td>
        <td><%# Eval("username") %></td>
        <td><%# Eval("url") %></td>
        <td><%# Eval("login") %></td>
        <td><asp:LinkButton ID="LinkButtonDelete" OnCommand="AccountDelete" CommandArgument=<%# Eval("id") %> runat="server" CommandName="AccId"><span class="glyphicon glyphicon-trash"></span></asp:LinkButton></td>
        <td><asp:LinkButton ID="LinkButtonEdit" OnCommand="AccountEdit" CommandArgument=<%# Eval("id") %> runat="server" CommandName="AccId"><span class="glyphicon glyphicon-pencil"></span></asp:LinkButton></td>
      </tr>
        
      </ItemTemplate>

      
      <EmptyDataTemplate>
         <!-- Defines what should be displayed if no items are returned from the database -->
         <span>No data was returned.</span>
      </EmptyDataTemplate>

      <LayoutTemplate>
        <table class="table">
        <thead><tr>
            <th>Name</th>
            <th>Description</th>
            <th>Password</th>
            <th>Username</th>
            <th>Url</th>
            <th>Login</th>
        </tr>
        </thead>
        <tbody>
        <div ID="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
         </div>
         </tbody>
        </table>
         

      </LayoutTemplate>
   </asp:ListView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT a.id, a.name, a.description, a.password, a.username, a.url, a.login 
                   FROM Account AS a WHERE
                   a.userLogin = @UserName">

</asp:SqlDataSource>
    


</asp:Content>

