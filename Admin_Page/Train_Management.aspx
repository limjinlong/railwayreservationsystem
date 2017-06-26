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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="562px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">Train Management</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">Train ID</td>
                <td class="auto-style9">:</td>
                <td>
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="6" CellSpacing="4" DataKeyNames="Train_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="737px" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Train_ID" HeaderText="Train_ID" ReadOnly="True" SortExpression="Train_ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
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

