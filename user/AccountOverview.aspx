﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountOverview.aspx.cs" Inherits="user_AccountOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
        <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
        <asp:BoundField DataField="username" HeaderText="username" 
            SortExpression="username" />
        <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
        <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [name], [description], [password], [username], [url], [login] FROM [Account] ORDER BY [name]">
</asp:SqlDataSource>
    


</asp:Content>
