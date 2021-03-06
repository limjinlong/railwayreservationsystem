﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FD_MasterPage.master" AutoEventWireup="true" CodeFile="FD_Profile.aspx.cs" Inherits="FD_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style21 {
            width: 216px;
        }
        .auto-style17 {
            width: 197px;
        }
        .auto-style15 {
            width: 30px;
        }
        .auto-style22 {
            width: 500px;
        }
        .auto-style23 {
            width: 129px;
        }
        .auto-style24 {
            width: 129px;
            text-align: left;
        }
        .auto-style4 {
            width: 216px;
            height: 19px;
        }
        .auto-style10 {
            width: 197px;
            height: 19px;
        }
        .auto-style12 {
            width: 30px;
            height: 19px;
        }
        .auto-style20 {
            height: 19px;
            width: 500px;
        }
        .auto-style5 {
            height: 19px;
            width: 129px;
        }
        .auto-style30 {
            width: 216px;
            height: 30px;
        }
        .auto-style31 {
            width: 197px;
            height: 30px;
        }
        .auto-style32 {
            width: 30px;
            height: 30px;
        }
        .auto-style33 {
            width: 500px;
            height: 30px;
        }
        .auto-style34 {
            width: 129px;
            text-align: left;
            height: 30px;
        }
        .auto-style35 {
            width: 148px;
            height: 49px;
        }
        .auto-style36 {
            width: 197px;
            font-size: x-large;
        }
        .auto-style37 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1" style="font-size: 40px; text-align: center;">
        <table class="auto-style2">
            <tr>
                <td class="auto-style37">Front Desk Profile</td>
            </tr>
        </table>
    </h1>
    <asp:Panel ID="Panel1" runat="server" Height="337px">
        <table cellspacing="1" class="auto-style2">
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Label ID="Label16" runat="server" Font-Size="X-Large" Text="ID"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label15" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="tb_ID" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style34">
                    <asp:Button ID="btn_Edit" runat="server" Font-Size="Medium" Height="40px" OnClick="btn_Edit_Click" Text="Edit" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Name"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_Name" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_Name" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="NRIC"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="tb_NRIC" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_NRIC" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="tb_NRIC" ErrorMessage="Integer Only!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_Save" runat="server" Font-Size="Medium" Height="40px" OnClick="btn_Save_Click" Text="Update" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="E-mail"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_Email" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_Email" ErrorMessage="Email Incorrect!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Phone No"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label11" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_PhoneNo" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_PhoneNo" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="tb_PhoneNo" ErrorMessage="Integer Only!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style36">Address</td>
                <td class="auto-style15">:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_address" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tb_address" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label12" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:DropDownList ID="ddl_gender" runat="server" Enabled="False">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_Username" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tb_Username" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Password"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label14" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="tb_Password" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="tb_Password" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FrontDesks]"></asp:SqlDataSource>
        <br />
    </asp:Panel>
</asp:Content>

