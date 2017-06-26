<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Route_Management.aspx.cs" Inherits="Admin_Page_Route_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 575px;
        }
        .auto-style4 {
            width: 53px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 70px;
        }
        .auto-style7 {
            width: 180px;
        }
        .auto-style9 {
            width: 43px;
        }
        .auto-style10 {
            height: 31px;
            width: 43px;
        }
        .auto-style11 {
            width: 70px;
            height: 32px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="579px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style18" colspan="4">Route Management</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Route ID</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tb_routeid" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style12">Origin</td>
                <td class="auto-style10">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tb_origin" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Destination</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tb_destination" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Date</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">                  
                    <asp:TextBox ID="tb_date" runat="server" TextMode="Date" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">Time</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:TextBox ID="tb_time" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">Train ID</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:DropDownList ID="ddl_trainid" runat="server" Width="149px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style12">Price</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="RM"></asp:Label>
                    <asp:TextBox ID="tb_price" runat="server" Width="258px" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btn_addroute" runat="server" Text="Add Route" Width="132px" OnClick="btn_addroute_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="132px" />
                    <br />
                    <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
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
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Routes]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Train_ID] FROM [Trains]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

