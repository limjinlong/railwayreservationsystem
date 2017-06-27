<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Register_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 475px;
        }
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
            width: 17px;
        }
        .auto-style5 {
            width: 475px;
            height: 49px;
        }
        .auto-style6 {
            width: 179px;
            height: 49px;
        }
        .auto-style7 {
            width: 17px;
            height: 49px;
        }
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            width: 475px;
            height: 51px;
        }
        .auto-style10 {
            width: 179px;
            height: 51px;
        }
        .auto-style11 {
            width: 17px;
            height: 51px;
        }
        .auto-style12 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Login</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">Username</td>
            <td class="auto-style7">:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Password</td>
            <td class="auto-style11">:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

