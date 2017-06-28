<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Train_Management.aspx.cs" Inherits="Admin_Page_Train_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 262px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style7 {
            width: 53px;
        }
        .auto-style9 {
            width: 19px;
        }
        .auto-style10 {
            width: 125px;
        }
        .auto-style11 {
            width: 53px;
            height: 37px;
        }
        .auto-style12 {
            width: 125px;
            height: 37px;
        }
        .auto-style13 {
            width: 19px;
            height: 37px;
        }
        .auto-style14 {
            height: 37px;
        }
        .auto-style15 {
            width: 53px;
            height: 38px;
        }
        .auto-style16 {
            width: 125px;
            height: 38px;
        }
        .auto-style17 {
            width: 19px;
            height: 38px;
        }
        .auto-style18 {
            height: 38px;
        }
        .auto-style23 {
            width: 53px;
            height: 24px;
        }
        .auto-style24 {
            width: 125px;
            height: 24px;
        }
        .auto-style25 {
            width: 19px;
            height: 24px;
        }
        .auto-style26 {
            height: 24px;
        }
        .auto-style27 {
            width: 53px;
            height: 29px;
        }
        .auto-style28 {
            width: 125px;
            height: 29px;
        }
        .auto-style29 {
            width: 19px;
            height: 29px;
        }
        .auto-style30 {
            height: 29px;
        }
    </style>
     <script type="text/javascript">
        function ConfirmOnDelete(item)
        {
          if (confirm("Are you sure to delete: " + item + "?")==true)
            return true;
          else
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="547px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">Train Management</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28">Train ID</td>
                <td class="auto-style29">:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tb_trainid" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">Name</td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="tb_trainname" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">Capacity</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:TextBox ID="tb_traincapacity" runat="server" TextMode="Number" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="btn_addtrain" runat="server" Text="Add Train" Width="132px" OnClick="btn_addtrain_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="132px" OnClick="btn_clear_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
                <td class="auto-style26">
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Trains] WHERE [Train_ID] = @Train_ID" InsertCommand="INSERT INTO [Trains] ([Train_ID], [Name], [Capacity]) VALUES (@Train_ID, @Name, @Capacity)" SelectCommand="SELECT * FROM [Trains]" UpdateCommand="UPDATE [Trains] SET [Name] = @Name, [Capacity] = @Capacity WHERE [Train_ID] = @Train_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Train_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Train_ID" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Capacity" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Capacity" Type="Int32" />
                            <asp:Parameter Name="Train_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="6" CellSpacing="4" DataKeyNames="Train_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="521px" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted" OnRowDataBound="GridView1_RowDataBound1">
                        <Columns>
                            <asp:TemplateField HeaderText="Train_ID" SortExpression="Train_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tb_edittrainid" runat="server" Text='<%# Bind("Train_ID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Train_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tb_editname" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Capacity" SortExpression="Capacity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tb_editcapacity" runat="server" Text='<%# Bind("Capacity") %>' TextMode="Number"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Capacity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField ShowHeader="False" AccessibleHeaderText="Delete">
                                
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?'); " ForeColor="Black"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="lbl_feedback1" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

