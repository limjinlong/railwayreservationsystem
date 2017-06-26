﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_New_User.aspx.cs" Inherits="Admin_Page_Create_New_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        width: 100%;
        height: 421px;
    }
    .auto-style20 {
        height: 28px;
    }
    .auto-style2 {
        width: 203px;
    }
    .auto-style7 {
        width: 168px;
        height: 37px;
    }
    .auto-style8 {
        width: 18px;
        height: 37px;
    }
    .auto-style9 {
            height: 37px;
            width: 503px;
        }
    .auto-style5 {
        width: 18px;
    }
    .auto-style10 {
        width: 203px;
        height: 38px;
    }
    .auto-style18 {
        width: 18px;
        height: 38px;
    }
    .auto-style19 {
            height: 38px;
            width: 503px;
        }
        .auto-style21 {
            width: 503px;
        }
        .auto-style22 {
            margin-left: 33px;
        }

    </style>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style22">
            &nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create New User</td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="200px" style="text-align: center" Width="150px" />
                    </td>
                    <td class="auto-style7">Role</td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Admin" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Front Desk" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">ID:</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox9" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Name</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox2" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Gender</td>
                    <td class="auto-style8">:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="149px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">NRIC</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox4" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox5" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">H/P No.</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox6" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="197px" />
                    </td>
                    <td class="auto-style7">Address</td>
                    <td class="auto-style18">:</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox7" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="4">&nbsp;</td>
                    <td class="auto-style7">Username</td>
                    <td class="auto-style18">:</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox8" runat="server" Width="308px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox10" runat="server" Width="308px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Confirm Password</td>
                    <td class="auto-style5">:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox11" runat="server" Width="308px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style21">
                        <asp:Button ID="Button2" runat="server" Text="Add" Width="148px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" Width="127px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
        </div>
</body>
</html>
