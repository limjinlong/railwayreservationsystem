<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Register_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        height: 270px;
    }
        .auto-style2 {
            width: 530px;
        }
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
            width: 17px;
        }
        .auto-style5 {
            width: 530px;
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
        width: 530px;
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
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        width: 530px;
        height: 169px;
    }
    .auto-style15 {
        width: 179px;
        height: 169px;
    }
    .auto-style16 {
        width: 17px;
        height: 169px;
    }
    .auto-style17 {
        height: 169px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style13">&nbsp;Login</h1>
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
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">Role</td>
            <td class="auto-style11">:</td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddl_roles" runat="server">
                    <asp:ListItem>Members</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>FrontDesk</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;<asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FrontDesks]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

