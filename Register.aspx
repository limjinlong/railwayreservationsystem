<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Login_Register_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 403px;
        }
        .auto-style3 {
            width: 24px;
        }
        .auto-style7 {
            width: 365px;
        }
        .auto-style9 {
            width: 365px;
            height: 49px;
        }
        .auto-style10 {
            width: 403px;
            height: 49px;
        }
        .auto-style11 {
            width: 24px;
            height: 49px;
        }
        .auto-style12 {
            height: 49px;
        }
        .auto-style13 {
            width: 365px;
            height: 50px;
        }
        .auto-style14 {
            width: 403px;
            height: 50px;
        }
        .auto-style15 {
            width: 24px;
            height: 50px;
        }
        .auto-style16 {
            height: 50px;
        }
        .auto-style17 {
            width: 365px;
            height: 48px;
        }
        .auto-style18 {
            width: 403px;
            height: 48px;
        }
        .auto-style19 {
            width: 24px;
            height: 48px;
        }
        .auto-style20 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Registeration</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">Name</td>
            <td class="auto-style11">:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_name" runat="server" placeHolder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Username</td>
            <td class="auto-style11">:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_uname" runat="server" placeHolder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">NRIC</td>
            <td class="auto-style15">:</td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_nric" runat="server" placeHolder="Without '-'"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_nric" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txt_nric" ErrorMessage="Integer Only!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">Email</td>
            <td class="auto-style15">:</td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_email" runat="server" placeHolder="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Email Incorrect!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">Phone Number</td>
            <td class="auto-style15">;</td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_num" runat="server" placeHolder="Phone Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_num" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txt_num" ErrorMessage="Integer Only!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">Gender</td>
            <td class="auto-style15">:</td>
            <td class="auto-style16">
                <asp:DropDownList ID="ddl_gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">Password</td>
            <td class="auto-style19">:</td>
            <td class="auto-style20">
                <asp:TextBox ID="txt_pwd" runat="server" placeHolder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_pwd" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Validate Password</td>
            <td class="auto-style11">:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_cpwd" runat="server" placeHolder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_cpwd" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToCompare="txt_pwd" ControlToValidate="txt_cpwd" ErrorMessage="Password Incorrect!" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" Width="110px" OnClick="btn_Submit_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

