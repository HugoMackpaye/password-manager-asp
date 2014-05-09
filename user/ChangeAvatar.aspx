<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeAvatar.aspx.cs" Inherits="user_ChangeAvatar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ScriptManager ID="ScriptManager1" runat="server" />
  <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="conditional">
                        <ContentTemplate>
<form action="" class="form-horizontal" role="form">
  <div class="form-group">
   <asp:Label ID="FileLabel" runat="server" AssociatedControlID="FileUpload1"  CssClass="col-sm-4 control-label">Choose file</asp:Label>
   
    <div class="col-sm-6">
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
  </div>
  <div class="form-group">
    
    <div class="col-sm-10">
     <asp:Button CssClass="btn btn-primary" ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
     <a href="ManageAccount.aspx"><button  type="button" class="btn btn-default">Cancel</button></a>
    </div>
  </div>
  <div class="form-group">
    <asp:PlaceHolder ID="Preview" Visible="false" runat="server">
    <div class="col-sm-offset-2 col-sm-10">
     <asp:Label ID="Label1" runat="server" CssClass="col-sm-4 control-label">Preview</asp:Label>
        <div class="col-sm-6">
         <asp:Image ID="imgViewFile" Width="100px" runat="server" /> 
    </div>
    </div>
    </asp:PlaceHolder>
  </div>
   </ContentTemplate>
                        <Triggers> <asp:PostBackTrigger ControlID="btnUpload" /> </Triggers>
                    </asp:UpdatePanel>
</form>



</asp:Content>

