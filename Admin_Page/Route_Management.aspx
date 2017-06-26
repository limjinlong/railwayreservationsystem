<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Route_Management.aspx.cs" Inherits="Admin_Page_Route_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 575px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 70px;
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
        .auto-style16 {
            width: 300px;
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
                <td class="auto-style3" colspan="4">Route Management</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Route ID</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style12">Origin</td>
                <td class="auto-style10">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Destination</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Date</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">                  
                    <input type="text" id="datepicker" class="auto-style16" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">Time</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">Train ID</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="149px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Price</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="Add Route" Width="132px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Clear" Width="132px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

