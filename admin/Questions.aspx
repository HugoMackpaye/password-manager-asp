<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="admin_Questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT* FROM questions ORDER BY 1" 
        >
    </asp:SqlDataSource>

     <asp:ListView ID="UsersListView" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>
      <tr>
        <td><%# Eval("id") %></td>
        <td><%# Eval("mail") %></td>
        <td><%# Eval("subject") %></td>
        <td><%# Eval("question") %></td>
        <td><%# Eval("user_question") %></td>
      </tr>
        
      </ItemTemplate>

      
      <EmptyDataTemplate>
         <!-- Defines what should be displayed if no items are returned from the database -->
         <span>No data was returned.</span>
      </EmptyDataTemplate>

      <LayoutTemplate>
        <table class="table">
        <thead><tr>
            <th>id</th>
            <th>Mail adress</th>
            <th>Subject</th>
            <th>Question</th>
             <th>User</th>
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



</asp:Content>

