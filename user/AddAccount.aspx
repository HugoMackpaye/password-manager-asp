﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddAccount.aspx.cs" Inherits="user_AddAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

Add an account :

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Name of the account</label> <asp:TextBox ID="TextBox1" runat="server"  placeholder="Name of the account"  type="Text"></asp:TextBox>
  </div><div class="form-group">
   <label for="inputEmail3" class="col-sm-2 control-label">Description </label>  <asp:TextBox ID="TextBox2" runat="server"  placeholder="Description of the account" type="Text" ></asp:TextBox>
    </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Username </label> <asp:TextBox ID="TextBox4" runat="server"  placeholder="Username" type="Text"></asp:TextBox>
    </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Password</label> <asp:TextBox ID="TextBox3" runat="server"  placeholder="Password" type="Password"></asp:TextBox>
    </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Password</label> <asp:TextBox ID="TextBox6" runat="server"  placeholder="Password" type="Password"></asp:TextBox>
    </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">URL</label> <asp:TextBox ID="TextBox5" runat="server"  placeholder="Url of the website" type="url"></asp:TextBox>
    </div>
    <div id="buttoncontent">   <asp:Button ID="BookingButton" runat="server"  CssClass="btn btn-lg btn-primary btn-block" Text="Add Account" onclick="addAccountButtonClicked" />
</div>
 



</asp:Content>

