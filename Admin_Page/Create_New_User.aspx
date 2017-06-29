<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_New_User.aspx.cs" Inherits="Admin_Page_Create_New_User" %>

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
    .auto-style9 {
            height: 37px;
            width: 503px;
        }
    .auto-style10 {
        width: 203px;
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

        .auto-style23 {
            height: 37px;
            width: 341px;
        }
        .auto-style24 {
            width: 341px;
        }
        .auto-style25 {
            height: 38px;
            width: 341px;
        }
        .auto-style26 {
            width: 198px;
            height: 37px;
        }
        .auto-style27 {
            width: 39px;
            height: 37px;
        }
        .auto-style28 {
            width: 39px;
        }
        .auto-style29 {
            width: 39px;
            height: 38px;
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
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style26">Role</td>
                    <td class="auto-style27">:</td>
                    <td class="auto-style23">
                        <asp:RadioButton ID="rb_admin" runat="server" Text="Admin" Checked="True" GroupName="1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rb_frontdesk" runat="server" Text="Front Desk" GroupName="1" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">ID:</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="tb_id" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_id" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">Name</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tb_name" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_name" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">Gender</td>
                    <td class="auto-style27">:</td>
                    <td class="auto-style23">
                        <asp:RadioButton ID="rb_male" runat="server" Text="Male" Checked="True" GroupName="2" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rb_female" runat="server" Text="Female" GroupName="2" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">NRIC</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tb_nric" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_nric" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_nric" Display="Dynamic" ErrorMessage="Please Enter Valid NRIC Number" ForeColor="Red" Type="Integer" Operator="DataTypeCheck" ValidationGroup="1"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">Email</td>
                    <td class="auto-style27">:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="tb_email" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Please Enter Valid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">H/P No.</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tb_phone" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_phone" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_phone" Display="Dynamic" ErrorMessage="Please Enter Valid Phone Number" ForeColor="Red" Type="Integer" Operator="DataTypeCheck" ValidationGroup="1"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style26">Address</td>
                    <td class="auto-style29">:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tb_address" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_address" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="4">&nbsp;</td>
                    <td class="auto-style26">Username</td>
                    <td class="auto-style29">:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tb_username" runat="server" Width="308px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_username" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">Password:</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tb_password" runat="server" Width="308px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tb_password" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">Confirm Password</td>
                    <td class="auto-style28">:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tb_confirmpassword" runat="server" Width="308px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="tb_username" ControlToValidate="tb_confirmpassword" ErrorMessage="Password Not Match" ForeColor="Red" ValidationGroup="1"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style24">
                        <asp:Button ID="btn_add" runat="server" Text="Add" Width="148px" OnClick="btn_add_Click" ValidationGroup="1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                    </td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FrontDesks]"></asp:SqlDataSource>
</body>
</html>
