<%@ Page Title="" Language="C#" MasterPageFile="~/Member_MasterPage.master" AutoEventWireup="true" CodeFile="Seat Reservation.aspx.cs" Inherits="Seat_Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            width: 40px;
        }
        .auto-style4 {
            width: 178px;
        }
        .auto-style8 {
            width: 70px;
        }
        .auto-style10 {
            width: 70px;
            height: 30px;
        }
        .auto-style11 {
            width: 130px;
            height: 30px;
        }
        .auto-style12 {
            width: 40px;
            height: 30px;
        }
        .auto-style13 {
            width: 178px;
            height: 30px;
        }
        .auto-style18 {
            width: 70px;
            height: 31px;
        }
        .auto-style19 {
            width: 130px;
            height: 31px;
        }
        .auto-style20 {
            width: 40px;
            height: 31px;
        }
        .auto-style21 {
            width: 178px;
            height: 31px;
        }
        .auto-style22 {
            width: 34px;
        }
        .auto-style23 {
            width: 34px;
            height: 30px;
        }
        .auto-style24 {
            width: 34px;
            height: 31px;
        }
        .auto-style25 {
            width: 54px;
        }
        .auto-style26 {
            width: 54px;
            height: 30px;
        }
        .auto-style27 {
            width: 54px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="font-size: 40px; text-align: center; text-decoration: underline">Seat Reservation</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="3" rowspan="16">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Seat Plan.JPG" />
            </td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Route ID</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddl_routeid" runat="server" Height="22px" Width="145px">
                </asp:DropDownList>
            </td>
            <td class="auto-style26">
                <asp:Button ID="btn_show" runat="server" OnClick="btn_show_Click" Text="Show" />
            </td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24"></td>
            <td class="auto-style19">Origin</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21">
                <asp:TextBox ID="tb_origin" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Destination</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:TextBox ID="tb_destination" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Date</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:TextBox ID="tb_date" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Time</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:TextBox ID="tb_time" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Price</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">RM
                <asp:TextBox ID="tb_price" runat="server" Width="119px"></asp:TextBox>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Coach&nbsp; </td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddl_coach" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Seat (Row)</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddl_seatrow" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td>&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style11">Seat</td>
            <td class="auto-style12">:</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddl_seat" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Btn_AddReservation" runat="server" OnClick="Btn_AddReservation_Click" Text="ADD" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource1" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" SortExpression="Booking_ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Seat_ID" HeaderText="Seat_ID" SortExpression="Seat_ID" />
                        <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"></asp:LinkButton>
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
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="Confirm" />
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [Bookings] ([Seat_ID], [Booking_ID], [Origin], [Destination], [Date], [Time]) VALUES (@Seat_ID, @Booking_ID, @Origin, @Destination, @Date, @Time)" SelectCommand="SELECT [Seat_ID], [Booking_ID], [Origin], [Destination], [Date], [Time] FROM [DummyBookings]" UpdateCommand="UPDATE [Bookings] SET [Seat_ID] = @Seat_ID, [Origin] = @Origin, [Destination] = @Destination, [Date] = @Date, [Time] = @Time WHERE [Booking_ID] = @Booking_ID">
        <DeleteParameters>
            <asp:Parameter Name="Booking_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Seat_ID" Type="String" />
            <asp:Parameter Name="Booking_ID" Type="Int32" />
            <asp:Parameter Name="Origin" Type="String" />
            <asp:Parameter Name="Destination" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Seat_ID" Type="String" />
            <asp:Parameter Name="Origin" Type="String" />
            <asp:Parameter Name="Destination" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Booking_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

