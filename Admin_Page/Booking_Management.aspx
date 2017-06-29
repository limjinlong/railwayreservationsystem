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
        .auto-style21 {
            margin-bottom: 0px;
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
    <asp:Panel ID="Panel1" runat="server" Height="505px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Booking Management<br />
                    <br />
                    Search:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_search" runat="server" CssClass="auto-style21" Width="264px" placeHolder="Enter Details Except Booking ID"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Search" runat="server" OnClick="txt_search_Click" Text="Search" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Refresh" runat="server" Text="Refresh" OnClick="Refresh_Click" />
                    <asp:Label ID="lbl_requiredsearch" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <div class="auto-style12" style="overflow-x: auto;">
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style13" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="16px" OnRowDataBound="GridView1_RowDataBound" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="1149px">
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
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" ForeColor="Black" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                        </asp:Panel>
                    </div>
                     </div>
                    <div class="auto-style12" style="overflow-x: auto;">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style13" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource2" ForeColor="Black" Height="16px" OnRowDataBound="GridView1_RowDataBound" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="1511px">
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
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" ForeColor="Black" Text="Delete"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                    </asp:Panel>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [Bookings] ([Booking_ID], [Seat_ID], [Train_ID], [Train_Name], [Route_ID], [Origin], [Destination], [Date], [Time], [Price], [Member_ID], [Member_Name], [Member_NRIC]) VALUES (@Booking_ID, @Seat_ID, @Train_ID, @Train_Name, @Route_ID, @Origin, @Destination, @Date, @Time, @Price, @Member_ID, @Member_Name, @Member_NRIC)" SelectCommand="SELECT * FROM [Bookings] WHERE (([Date] = @Date) OR ([Destination] = @Destination) OR([Member_ID] = @Member_ID) OR ([Member_Name] = @Member_Name) OR ([Member_NRIC] = @Member_NRIC) OR ([Origin] = @Origin) OR ([Price] = @Price) OR ([Route_ID] = @Route_ID) OR([Seat_ID] = @Seat_ID) OR ([Time] = @Time) OR ([Train_ID] = @Train_ID) OR ([Train_Name] = @Train_Name))" UpdateCommand="UPDATE [Bookings] SET [Seat_ID] = @Seat_ID, [Train_ID] = @Train_ID, [Train_Name] = @Train_Name, [Route_ID] = @Route_ID, [Origin] = @Origin, [Destination] = @Destination, [Date] = @Date, [Time] = @Time, [Price] = @Price, [Member_ID] = @Member_ID, [Member_Name] = @Member_Name, [Member_NRIC] = @Member_NRIC WHERE [Booking_ID] = @Booking_ID">
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
                            <asp:ControlParameter ControlID="txt_search" Name="Date" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Destination" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Member_ID" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Member_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_search" Name="Member_NRIC" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_search" Name="Origin" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Price" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Route_ID" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Seat_ID" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Time" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Train_ID" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txt_search" Name="Train_Name" PropertyName="Text" />
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
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

