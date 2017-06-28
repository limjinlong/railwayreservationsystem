<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Booking_History.aspx.cs" Inherits="Booking_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 395px;
        }
        .auto-style14 {
            width: 350px;
        }
        .auto-style15 {
            width: 60px;
        }
        .auto-style16 {
            width: 104px;
        }
        .auto-style17 {
            width: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1" style="font-size: 40px">Booking History</h1>
    <table class="auto-style2">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                Search</td>
            <td class="auto-style17"><strong>:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="449px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Button ID="btn_SearchBooking" runat="server" OnClick="btn_SearchBooking_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
    </table>
    <table cellspacing="1" class="auto-style2">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style4" colspan="3">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style4" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Width="635px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource1" AllowPaging="True" Width="599px" PageSize="5" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" SortExpression="Booking_ID" ReadOnly="True" />
                            <asp:BoundField DataField="Member_ID" HeaderText="Member_ID" SortExpression="Member_ID" />
                            <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                            <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:CommandField ShowSelectButton="True" />
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
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Width="598px">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource3" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" InsertVisible="False" ReadOnly="True" SortExpression="Booking_ID" />
                            <asp:BoundField DataField="Member_ID" HeaderText="Member_ID" SortExpression="Member_ID" />
                            <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                            <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:CommandField ShowSelectButton="True" />
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
                </asp:Panel>
            </td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style4" colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Member_ID], [Member_Name], [Booking_ID], [Origin], [Destination], [Date], [Time] FROM [Bookings]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [Bookings] ([Booking_ID], [Seat_ID], [Train_ID], [Train_Name], [Route_ID], [Origin], [Destination], [Date], [Time], [Price], [Member_ID], [Member_Name], [Member_NRIC]) VALUES (@Booking_ID, @Seat_ID, @Train_ID, @Train_Name, @Route_ID, @Origin, @Destination, @Date, @Time, @Price, @Member_ID, @Member_Name, @Member_NRIC)" SelectCommand="SELECT * FROM [Bookings] WHERE ([Booking_ID] = @Booking_ID)" UpdateCommand="UPDATE [Bookings] SET [Seat_ID] = @Seat_ID, [Train_ID] = @Train_ID, [Train_Name] = @Train_Name, [Route_ID] = @Route_ID, [Origin] = @Origin, [Destination] = @Destination, [Date] = @Date, [Time] = @Time, [Price] = @Price, [Member_ID] = @Member_ID, [Member_Name] = @Member_Name, [Member_NRIC] = @Member_NRIC WHERE [Booking_ID] = @Booking_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Booking_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Booking_ID" Type="Int32" />
                        <asp:Parameter Name="Seat_ID" Type="String" />
                        <asp:Parameter Name="Train_ID" Type="String" />
                        <asp:Parameter Name="Train_Name" Type="String" />
                        <asp:Parameter Name="Route_ID" Type="String" />
                        <asp:Parameter Name="Origin" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Member_ID" Type="String" />
                        <asp:Parameter Name="Member_Name" Type="String" />
                        <asp:Parameter Name="Member_NRIC" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="Booking_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Seat_ID" Type="String" />
                        <asp:Parameter Name="Train_ID" Type="String" />
                        <asp:Parameter Name="Train_Name" Type="String" />
                        <asp:Parameter Name="Route_ID" Type="String" />
                        <asp:Parameter Name="Origin" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Member_ID" Type="String" />
                        <asp:Parameter Name="Member_Name" Type="String" />
                        <asp:Parameter Name="Member_NRIC" Type="String" />
                        <asp:Parameter Name="Booking_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Booking_ID], [Member_Name], [Member_ID], [Time], [Date], [Origin], [Destination] FROM [Bookings] WHERE (([Booking_ID] = @Booking_ID) OR ([Destination] = @Destination) OR ([Member_ID] = @Member_ID) OR ([Member_Name] = @Member_Name) OR ([Origin] = @Origin) OR ([Time] = @Time) OR ([Date] = @Date))">
                    <SelectParameters>
                        <asp:Parameter Name="Booking_ID" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Destination" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Member_ID" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Member_Name" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Origin" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Time" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Date" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
            </td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">
                <asp:Panel ID="Panel3" runat="server" Width="305px">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource2" Height="50px" Width="302px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" ReadOnly="True" SortExpression="Booking_ID" />
                            <asp:BoundField DataField="Seat_ID" HeaderText="Seat_ID" SortExpression="Seat_ID" />
                            <asp:BoundField DataField="Train_ID" HeaderText="Train_ID" SortExpression="Train_ID" />
                            <asp:BoundField DataField="Train_Name" HeaderText="Train_Name" SortExpression="Train_Name" />
                            <asp:BoundField DataField="Route_ID" HeaderText="Route_ID" SortExpression="Route_ID" />
                            <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Member_ID" HeaderText="Member_ID" SortExpression="Member_ID" />
                            <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                            <asp:BoundField DataField="Member_NRIC" HeaderText="Member_NRIC" SortExpression="Member_NRIC" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server">
                    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px">
                    </asp:DetailsView>
                </asp:Panel>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

