<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Booking_Management.aspx.cs" Inherits="Admin_Page_Booking_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 333px;
        }
        .auto-style4 {
            width: 40px;
        }
        .auto-style12 {
        width: 800px;
    }
    .auto-style13 {
        margin-top: 0px;
    }
    .auto-style14 {
        width: 40px;
        height: 44px;
    }
    .auto-style15 {
        height: 44px;
    }
    .auto-style16 {
        width: 40px;
        height: 38px;
    }
    .auto-style17 {
        height: 38px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="505px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Booking Management<div class="auto-style12" style="overflow-x: auto;">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style13" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource1" Height="16px" Width="1149px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
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
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </div>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [Bookings] ([Booking_ID], [Seat_ID], [Train_ID], [Train_Name], [Route_ID], [Origin], [Destination], [Date], [Time], [Price], [Member_ID], [Member_Name], [Member_NRIC]) VALUES (@Booking_ID, @Seat_ID, @Train_ID, @Train_Name, @Route_ID, @Origin, @Destination, @Date, @Time, @Price, @Member_ID, @Member_Name, @Member_NRIC)" SelectCommand="SELECT * FROM [Bookings]" UpdateCommand="UPDATE [Bookings] SET [Seat_ID] = @Seat_ID, [Train_ID] = @Train_ID, [Train_Name] = @Train_Name, [Route_ID] = @Route_ID, [Origin] = @Origin, [Destination] = @Destination, [Date] = @Date, [Time] = @Time, [Price] = @Price, [Member_ID] = @Member_ID, [Member_Name] = @Member_Name, [Member_NRIC] = @Member_NRIC WHERE [Booking_ID] = @Booking_ID">
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
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

