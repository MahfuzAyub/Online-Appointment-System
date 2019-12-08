<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Project_1250865.WebUserControl1" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>


<asp:DetailsView  ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" DataSourceID="dsPatients" DefaultMode="Insert" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="patientId" Width="616px" >
                        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:TemplateField HeaderText="Patient Id" InsertVisible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("patientId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("patientId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Patient Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("patientName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("patientName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("patientName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="mobile Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Format" ControlToValidate="TextBox2" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Birth">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" TextMode="Date" runat="server" Text='<%# Bind("DateofBirth") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox  ID="TextBox3" TextMode="Date"  runat="server" Text='<%# Bind("DateofBirth") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date of birth Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DateofBirth") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>                                   
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("Gender") %>'>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                    </asp:RadioButtonList>                                   
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                    </asp:DetailsView>

    <asp:SqlDataSource ID="dsPatients" runat="server" ConnectionString="<%$ ConnectionStrings:ClinicDbConnectionString %>" DeleteCommand="DELETE FROM [tblPatients] WHERE [patientId] = @patientId" InsertCommand="INSERT INTO [tblPatients] ([patientName], [dateofBirth], [mobile], [gender]) VALUES (@patientName, @dateofBirth, @mobile, @gender)" SelectCommand="SELECT * FROM [tblPatients]" UpdateCommand="UPDATE [tblPatients] SET [patientName] = @patientName, [dateofBirth] = @dateofBirth, [mobile] = @mobile, [gender] = @gender WHERE [patientId] = @patientId">
        <DeleteParameters>
            <asp:Parameter Name="patientId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="patientName" Type="String" />
            <asp:Parameter DbType="Date" Name="dateofBirth" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="patientName" Type="String" />
            <asp:Parameter DbType="Date" Name="dateofBirth" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="patientId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="dsPatients" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="patientId">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="patientId" HeaderText="patientId" InsertVisible="False" ReadOnly="True" SortExpression="patientId" />
                            <asp:BoundField DataField="patientName" HeaderText="patientName" SortExpression="patientName" />
                            <asp:BoundField DataField="dateofBirth" HeaderText="dateofBirth" SortExpression="dateofBirth" />
                            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="mobile" />
                            
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
            </ContentTemplate>
</asp:UpdatePanel>