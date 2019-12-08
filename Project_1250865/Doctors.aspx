<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="Project_1250865.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    
    <div class="container " style="width:400px; display:none">
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
    <br />
    <br />
    <div class="col-md-12">
        <h2 class="text-center">Doctor's List</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DoctorId" HeaderText="Doctor Id" />
                <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                <asp:BoundField DataField="Speciality" HeaderText="Speciality" />
                <asp:BoundField DataField="JoinDate" HeaderText="Join Date" />
                <asp:TemplateField HeaderText="Picture">
                    <ItemTemplate>
                        <img src='<%# Eval("DoctorId","DbImageHandler.ashx?id={0}")%>' width="50" />
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
     </ContentTemplate>
            </asp:UpdatePanel>
 

   
</asp:Content>
