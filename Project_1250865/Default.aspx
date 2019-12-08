<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_1250865.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-md-12">
                <h2>Add New</h2>
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
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary" OnClick="btnInsert_Click"/>
                </div>
            </div>
            <div class="col-md-12">
                <h2>Product List</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField DataField="DoctorId" HeaderText="Doctor Id"/>
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name"/>
                        <asp:BoundField DataField="Speciality" HeaderText="Speciality"/>
                        <asp:BoundField DataField="JoinDate" HeaderText="Join Date"/>
                        <asp:TemplateField HeaderText="Picture">
                            <ItemTemplate>
                                <img src='<%# Eval("DoctorId","DbImageHandler.ashx?id={0}")%>' width="50"/>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
