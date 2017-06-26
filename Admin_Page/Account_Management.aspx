<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Account_Management.aspx.cs" Inherits="Admin_Page_Account_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 57px;
        }
        .auto-style3 {
            text-align: right;
            height: 43px;
        }
    .auto-style20 {
        height: 28px;
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
    .auto-style6 {
        width: 168px;
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
    }
        .auto-style21 {
            height: 28px;
            width: 57px;
        }
        .auto-style23 {
            width: 57px;
            height: 38px;
        }
        .auto-style24 {
            width: 57px;
            height: 43px;
        }
        .auto-style25 {
            width: 57px;
            height: 54px;
        }
        .auto-style26 {
            height: 54px;
        }
        .auto-style27 {
            width: 100%;
            height: 172px;
        }
    </style>
        <script type="text/javascript">
        function OpenNewWindow() {
            window.open('Create_New_User.aspx', '_blank', 'location=no,resizable=no,fullscreen=no,menubar=no');
            
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="610px">
        <table class="auto-style27">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>Account Management</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="OpenNewWindow()" Text="Create New User" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26">Role:<asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NRIC:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Filter" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style26">Result:<asp:DropDownList ID="DropDownList2" runat="server" Width="355px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20" colspan="4">Account Information</td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="6">&nbsp;</td>
                <td class="auto-style2" rowspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="200px" style="text-align: center" Width="150px" />
                </td>
                <td class="auto-style7">&nbsp;ID</td>
                <td class="auto-style8">:</td>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="[ID]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Name</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="[Name]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Gender</td>
                <td class="auto-style8">:</td>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="[Gender]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">NRIC</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="[NRIC]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="[Email]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">H/P No.</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="[H/P No.]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">Address</td>
                <td class="auto-style18">:</td>
                <td class="auto-style19">
                    <asp:Label ID="Label7" runat="server" Text="[Address]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="2">&nbsp;</td>
                <td class="auto-style2" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Delete" Width="148px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

