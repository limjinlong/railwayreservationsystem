<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Route_Management.aspx.cs" Inherits="Admin_Page_Route_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            height: 502px;
        }
        .auto-style4 {
            width: 53px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style7 {
            width: 180px;
        }
        .auto-style9 {
            width: 43px;
        }
        .auto-style10 {
            height: 31px;
            width: 50px;
        }
        .auto-style12 {
            width: 180px;
            height: 32px;
        }
        .auto-style13 {
            width: 43px;
            height: 32px;
        }
        .auto-style14 {
            height: 32px;
        }
        .auto-style12 {
        }
        .auto-style17 {
            margin-left: 10px;
        }
        .auto-style18 {
            height: 12px;
        }
        .auto-style19 {
            width: 53px;
            height: 32px;
        }
        .auto-style20 {
            width: 53px;
        }
        .auto-style21 {
            width: 76px;
            height: 32px;
        }
        .auto-style22 {
            width: 76px;
            height: 31px;
        }
        .auto-style23 {
            width: 76px;
        }
    </style>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
         <script type="text/javascript">
             function ConfirmOnDelete(item) {
                 if (confirm("Are you sure to delete: " + item + "?") == true)
                     return true;
                 else
                     return false;
             }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="698px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style18" colspan="4">Route Management</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Route ID</td>
                <td class="auto-style21">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tb_routeid" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style12">Origin</td>
                <td class="auto-style22">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tb_origin" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Destination</td>
                <td class="auto-style21">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tb_destination" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Date</td>
                <td class="auto-style21">:</td>
                <td class="auto-style14">                  
                    <asp:TextBox ID="tb_date" runat="server" TextMode="Date" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">Time</td>
                <td class="auto-style23">:</td>
                <td>
                    <asp:TextBox ID="tb_time" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">Train ID</td>
                <td class="auto-style23">:</td>
                <td>
                    <asp:DropDownList ID="ddl_trainid" runat="server" Width="149px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Price</td>
                <td class="auto-style21">:</td>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="RM"></asp:Label>
                    <asp:TextBox ID="tb_price" runat="server" Width="258px" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btn_addroute" runat="server" Text="Add Route" Width="132px" OnClick="btn_addroute_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="132px" />
                    <br />
                    <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style7">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style23">&nbsp;</td>
                <td>
                    <div style="overflow-x: auto;  width:800px";>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Route_ID" DataSourceID="SqlDataSource1" ForeColor="Black" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" OnRowDataBound="GridView1_RowDataBound" Width="744px">
                        <Columns>
                            <asp:BoundField DataField="Route_ID" HeaderText="Route_ID" ReadOnly="True" SortExpression="Route_ID" />
                            <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:BoundField DataField="Train_ID" HeaderText="Train_ID" SortExpression="Train_ID" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
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
                        </div>
                    <br />
                    <asp:Label ID="lbl_feedback1" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Routes] WHERE [Route_ID] = @Route_ID" InsertCommand="INSERT INTO [Routes] ([Route_ID], [Origin], [Destination], [Date], [Time], [Train_ID], [Price]) VALUES (@Route_ID, @Origin, @Destination, @Date, @Time, @Train_ID, @Price)" SelectCommand="SELECT * FROM [Routes]" UpdateCommand="UPDATE [Routes] SET [Origin] = @Origin, [Destination] = @Destination, [Date] = @Date, [Time] = @Time, [Train_ID] = @Train_ID, [Price] = @Price WHERE [Route_ID] = @Route_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Route_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Route_ID" Type="String" />
                            <asp:Parameter Name="Origin" Type="String" />
                            <asp:Parameter Name="Destination" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Time" Type="String" />
                            <asp:Parameter Name="Train_ID" Type="String" />
                            <asp:Parameter Name="Price" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Origin" Type="String" />
                            <asp:Parameter Name="Destination" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Time" Type="String" />
                            <asp:Parameter Name="Train_ID" Type="String" />
                            <asp:Parameter Name="Price" Type="String" />
                            <asp:Parameter Name="Route_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Train_ID] FROM [Trains]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

