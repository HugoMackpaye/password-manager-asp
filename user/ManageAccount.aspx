<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageAccount.aspx.cs" Inherits="user_ManageAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="left"> <div><b>My account </b>:</div>
<br />
<div id="avatar"><asp:Image ID="ImgAvatar" Width="100px" runat="server" /></div>
<div id="contentnextavatar"><b>Login </b>: foulo005 <br />
<b>Password</b> : ******* <br />
<b>Mail adress</b> : nicolas.foulon2@hotmail.fr <br />
<b>Number of accounts</b> :<br />
</div>
</div>

<div id="right">

<a href="ChangePassword.aspx"><button type="button" class="btn btn-default btn-lg" >
  <span class="glyphicon glyphicon-tower"></span> Change my password
</button></a> <br /> <br />

<a href="ChangeEmail.aspx"><button type="button" class="btn btn-default btn-lg" >
  <span class="glyphicon glyphicon-send"></span>    Change my email address 
</button></a> <br /> <br />


<a href="ChangeAvatar.aspx"><button type="button" class="btn btn-default btn-lg" >
  <span class="glyphicon glyphicon-picture"></span> Change my avatar
</button></a> <br /> <br />


</div>





</asp:Content>

