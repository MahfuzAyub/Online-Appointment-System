<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project_1250865.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    
        <h2 style="text-align:left; color:forestgreen">  &nbsp;&nbsp;Register a new user</h2>
        
    <div class="container">
        <div class="form-group" style="width:300px;">
            <asp:Literal runat="server" ID="StatusMessage"  />
        </div> 
        <br />
        <div class="form-group" style="width:300px;">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="control-label">User name</asp:Label>
            
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control"/>                
            </div>
        
        <div class="form-group" style="width:300px;" >
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Password</asp:Label>
            
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />                
            </div>
        
        <div class="form-group" style="width:300px;">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="control-label">Confirm password</asp:Label>
            
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />                
            </div>
           
           <asp:Button ID="CreateUser" runat="server" onclick="CreateUser_Click" Text="Register" CssClass="btn btn-success"  />
                </div>
              
                
            
        
  
</asp:Content>
