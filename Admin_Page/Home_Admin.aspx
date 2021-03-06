﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home_Admin.aspx.cs" Inherits="Home_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 421px;
    }
    .auto-style2 {
        width: 203px;
    }
    .auto-style5 {
        width: 18px;
    }
    .auto-style6 {
        width: 168px;
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
    }
    .auto-style10 {
        width: 203px;
        height: 38px;
    }
    .auto-style17 {
        width: 168px;
        height: 38px;
    }
    .auto-style18 {
        width: 18px;
        height: 38px;
    }
    .auto-style19 {
        height: 38px;
    }
    .auto-style20 {
        height: 28px;
    }
        .auto-style21 {
            width: 168px;
            height: 33px;
        }
        .auto-style22 {
            width: 18px;
            height: 33px;
        }
        .auto-style23 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" Height="426px" BorderColor="Black">
    <table class="auto-style1">
        <tr>
            <td class="auto-style20" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personal Information</td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style7">Admin ID</td>
            <td class="auto-style8">:</td>
            <td class="auto-style9">
                <asp:Label ID="lbl_adminid" runat="server" Text="[ID]"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Name</td>
            <td class="auto-style5">:</td>
            <td>
                <asp:TextBox ID="tb_adminname" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_adminname" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Gender</td>
            <td class="auto-style8">:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddl_gender" runat="server" Width="149px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">NRIC</td>
            <td class="auto-style5">:</td>
            <td>
                <asp:TextBox ID="tb_nric" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_nric" Display="Dynamic" ErrorMessage="Please Enter Valid NRIC Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="1"></asp:CompareValidator>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_nric" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Email</td>
            <td class="auto-style22">:</td>
            <td class="auto-style23">
                <asp:TextBox ID="tb_email" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Please Enter Valid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">H/P No.</td>
            <td class="auto-style5">:</td>
            <td>
                <asp:TextBox ID="tb_phone" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_nric" Display="Dynamic" ErrorMessage="Please Enter Valid Phone Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="1"></asp:CompareValidator>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_phone" Display="Dynamic" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style17">Address</td>
            <td class="auto-style18">:</td>
            <td class="auto-style19">
                <asp:TextBox ID="tb_address" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_address" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
            </td>
            <td class="auto-style17">Username</td>
            <td class="auto-style18">:</td>
            <td class="auto-style19">
                <asp:TextBox ID="tb_username" runat="server" Width="308px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_username" ErrorMessage="*This Field Is Required" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btn_change" runat="server" Text="Change Username / Password" Width="308px" OnClick="btn_change_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btn_save" runat="server" Text="Save" Width="148px" OnClick="btn_save_Click" ValidationGroup="1"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="127px" OnClick="btn_reset_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

