<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="user_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="left"> <br />
<h2>Introduction</h2> 
<h5>Welcome on your password manager account, this web app can help you to store and to not forget the passwords of all your web sites account. You can have an overview of your
<br /><br />
On this app you can store all your password but also some information about each account like :
<ul>
<li>Your password and your login</li>
<li>A personalize name</li>
<li>A description </li>
<li>A link to the website </li>
</ul> </h5></div>
<div id="right"><a href="AddAccount.aspx"><button type="button" class="btn btn-default btn-lg" >
  <span class="glyphicon glyphicon-user"></span>  You don't know what to do, start here ! 
</button></a>
<br />
<br />
<a href="AccountOverview.aspx"><button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-list"></span>  Overview of all my accounts
</button></a>
<br />
<br />
<a href="ManageAccount.aspx"><button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-user"></span> Manage my account settings
</button>
<br />
<br />

</div>


</asp:Content>

