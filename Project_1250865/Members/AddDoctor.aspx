<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="Project_1250865.Members.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="container" style="width:400px;">
        <div class="col-md-12">
            <h2>Add New Doctor</h2>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Doctor Name" AssociatedControlID="txtDocorName" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtDocorName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Speciality" AssociatedControlID="txtSpeciality" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtSpeciality" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Join Date" AssociatedControlID="TextJoinDate" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="TextJoinDate" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Picture" AssociatedControlID="pPicture" CssClass="control-label"></asp:Label>
                <asp:FileUpload ID="pPicture" runat="server" />
            </div>

            <div class="form-group">
                <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary" OnClick="btnInsert_Click" />
            </div>
        </div>
    </div>

</asp:Content>
