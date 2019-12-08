<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Project_1250865.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <br />
    <h3>Create An Appointment</h3>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        
        
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="appointmentId" DataSourceID="dsAppointment" DefaultMode="Insert" ForeColor="#333333" GridLines="None" CssClass="table table-secondary" Width="586px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="appointmentId" HeaderText="appointmentId" InsertVisible="False" ReadOnly="True" SortExpression="appointmentId" />
            <asp:TemplateField HeaderText="Doctor Name" SortExpression="doctorName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("doctorId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("doctorId") %>' AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DoctorName" DataValueField="DoctorId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClinicDbConnectionString %>" SelectCommand="SELECT [DoctorId], [DoctorName] FROM [Doctors]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("doctorId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="patientId" HeaderText="Patient Id" SortExpression="patientId" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

    </asp:DetailsView>
    <asp:SqlDataSource ID="dsAppointment" runat="server" ConnectionString="<%$ ConnectionStrings:ClinicDbConnectionString %>" DeleteCommand="DELETE FROM [tblAppointment] WHERE [appointmentId] = @appointmentId" InsertCommand="INSERT INTO [tblAppointment] ([doctorId], [patientId]) VALUES (@doctorId, @patientId)" SelectCommand="select a.appointmentId, p.patientName,d.DoctorName,d.Speciality from tblAppointment a inner join
tblPatients p on p.patientId=a.patientId inner join 
Doctors d on d.DoctorId=a.doctorId" UpdateCommand="UPDATE [tblAppointment] SET [doctorId] = @doctorId, [patientId] = @patientId WHERE [appointmentId] = @appointmentId">
        <DeleteParameters>
            <asp:Parameter Name="appointmentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="doctorId" Type="Int32" />
            <asp:Parameter Name="patientId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="doctorId" Type="Int32" />
            <asp:Parameter Name="patientId" Type="Int32" />
            <asp:Parameter Name="appointmentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h3>Appointment Details</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="appointmentId" DataSourceID="dsAppointment" CssClass="table table-hover" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="appointmentId" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="appointmentId" />
            <asp:BoundField DataField="patientName" HeaderText="Patient Name" SortExpression="patientName" />
            <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" SortExpression="DoctorName" />
            <asp:BoundField DataField="Speciality" HeaderText="Speciality" SortExpression="Speciality" />
        </Columns>

        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />

    </asp:GridView>
    <asp:SqlDataSource ID="dsAppointGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ClinicDbConnectionString %>" SelectCommand="select a.appointmentId, p.patientName,d.DoctorName,d.Speciality from tblAppointment a inner join
tblPatients p on p.patientId=a.patientId inner join 
Doctors d on d.DoctorId=a.doctorId"></asp:SqlDataSource>
 </ContentTemplate>
    </asp:UpdatePanel>          
</asp:Content>
