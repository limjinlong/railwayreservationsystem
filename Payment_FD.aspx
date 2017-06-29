<%@ Page Title="" Language="C#" MasterPageFile="~/FD_MasterPage.master" AutoEventWireup="true" CodeFile="Payment_FD.aspx.cs" Inherits="Payment" %>

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
        .auto-style30 {
            font-size: large;
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
                <asp:RadioButton ID="rb_visa" runat="server" Checked="True" GroupName="1" Text="Visa" />
&nbsp;
                <asp:RadioButton ID="rb_master" runat="server" GroupName="1" Text="Master" />
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Name on Card</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="txt_name" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Card Number</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="txt_card" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_card" ErrorMessage="Only Number." ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">Expiry Date</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="txt_date" runat="server" Width="192px"></asp:TextBox>
            &nbsp;<span class="auto-style30">/</span>
                <asp:TextBox ID="txt_date0" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txt_date" ErrorMessage="Only Number." ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txt_date0" ErrorMessage="Only Number." ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">CVV</td>
            <td class="auto-style20">:</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="txt_cvv" runat="server" Width="415px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txt_cvv" ErrorMessage="Only Number." ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style23" colspan="3">
                <asp:Label ID="lbl_required" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Proceed" Width="99px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

