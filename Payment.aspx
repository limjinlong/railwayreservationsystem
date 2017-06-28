<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 193px;
        }
        .auto-style7 {
            width: 270px;
        }
        .auto-style9 {
            width: 40px;
        }
        .auto-style12 {
            width: 270px;
            height: 25px;
        }
        .auto-style13 {
            width: 193px;
            height: 25px;
        }
        .auto-style14 {
            width: 40px;
            height: 25px;
        }
        .auto-style15 {
            height: 25px;
            width: 456px;
        }
        .auto-style17 {
            width: 193px;
            font-size: large;
            height: 25px;
        }
        .auto-style18 {
            width: 270px;
            height: 30px;
        }
        .auto-style19 {
            width: 193px;
            font-size: large;
            height: 30px;
        }
        .auto-style20 {
            width: 40px;
            height: 30px;
        }
        .auto-style21 {
            height: 30px;
            width: 456px;
        }
        .auto-style23 {
            width: 456px;
        }
        .auto-style28 {
            width: 89px;
        }
        .auto-style29 {
            width: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="font-size: 40px; text-decoration: underline; text-align: center">Payment</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15" colspan="3"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style17">Credit Cards </td>
            <td class="auto-style14">:</td>
            <td class="auto-style15" colspan="3">
                <asp:CheckBox ID="cb_visa" runat="server" Text="Visa" />
&nbsp;
                <asp:CheckBox ID="cb_master" runat="server" Text="Master" />
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Name on Card</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TextBox1" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Card Number</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TextBox2" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Expiry Date</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TextBox3" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">CVV</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TextBox4" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style23" colspan="3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Proceed" Width="99px" />
            </td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

