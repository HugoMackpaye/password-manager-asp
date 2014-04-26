<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberList.aspx.cs" Inherits="admin_memberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Member list</h1>

    <asp:PlaceHolder ID="DeleteSuccess" runat="server" Visible="false">
        <div class="alert alert-success">User has been deleted!</div>
    </asp:PlaceHolder>


     <asp:ListView ID="UsersListView" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>
      <tr>
        <td><%# Eval("UserName") %></td>
        <td><%# Eval("RoleName") %></td>
        <td><%# Eval("LastActivityDate") %></td>
        <td><a href="EditUser.aspx?user=<%# Eval("UserName") %>"><span class="glyphicon glyphicon-pencil"></span></a></td>
         
        <td><asp:LinkButton ID="LinkButtonDelete" OnCommand="UserDelete" CommandArgument=<%# Eval("UserId") %> runat="server" CommandName="UserId"><span class="glyphicon glyphicon-trash"></span></asp:LinkButton></td>
      </tr>
        
      </ItemTemplate>

      
      <EmptyDataTemplate>
         <!-- Defines what should be displayed if no items are returned from the database -->
         <span>No data was returned.</span>
      </EmptyDataTemplate>

      <LayoutTemplate>
        <table class="table">
        <thead><tr>
            <th>Username</th>
            <th>Role</th>
            <th>Last activity</th>
            <th>Edit</th>
            <th>Delete</th>
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
        
        SelectCommand="SELECT aspnet_Users.UserName, aspnet_Roles.RoleName, aspnet_Users.LastActivityDate, aspnet_Users.UserId FROM aspnet_Roles INNER JOIN aspnet_UsersInRoles ON aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId INNER JOIN aspnet_Users ON aspnet_UsersInRoles.UserId = aspnet_Users.UserId" 
        >
    </asp:SqlDataSource>

</asp:Content>

