<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="Admin_Page_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 270px;
        }
        .auto-style5 {
            width: 214px;
        }
        .auto-style7 {
            width: 45px;
        }
        .auto-style9 {
            width: 228px;
        }
        .auto-style10 {
            width: 228px;
            text-align: right;
        }
        .auto-style11 {
            width: 270px;
            height: 40px;
        }
        .auto-style12 {
            width: 214px;
            height: 40px;
        }
        .auto-style13 {
            width: 45px;
            height: 40px;
        }
        .auto-style14 {
            width: 228px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <br />
                <br />
                Change Password<br />
                <br />
                <br />
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">Enter Current Password</td>
            <td class="auto-style13">:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tb_currentpassword" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Label ID="lbl_warning1" runat="server" ForeColor="Red" Text="Invalid Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">Enter New Password</td>
            <td class="auto-style13">:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tb_newpassword" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">Retype Password</td>
            <td class="auto-style13">:</td>
            <td class="auto-style14">
                <asp:TextBox ID="tb_retypepassword" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Label ID="lbl_warning2" runat="server" ForeColor="Red" Text="Password Not Match With Your New Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style10">
                <br />
                <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="Confirm" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

