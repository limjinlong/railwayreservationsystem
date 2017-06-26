<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_Profile.aspx.cs" Inherits="Member_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 216px;
            height: 19px;
        }
        .auto-style5 {
            height: 19px;
            width: 129px;
        }
        .auto-style10 {
            width: 197px;
            height: 19px;
        }
        .auto-style12 {
            width: 30px;
            height: 19px;
        }
        .auto-style15 {
            width: 30px;
        }
        .auto-style17 {
            width: 197px;
        }
        .auto-style20 {
            height: 19px;
            width: 500px;
        }
        .auto-style21 {
            width: 216px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1" style="font-size: 40px; text-align: center;">Member Profile</h1>
    <asp:Panel ID="Panel1" runat="server" Height="337px">
        <table cellspacing="1" class="auto-style2">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
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
                    <asp:TextBox ID="TextBox1" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="40px" Text="Edit" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="NRIC"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Phone No"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="40px" Text="Save" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="E-mail"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label11" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox4" runat="server" Width="500px"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox5" runat="server" Width="500px"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox6" runat="server" Width="500px"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox7" runat="server" Width="500px"></asp:TextBox>
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
        <br />
    </asp:Panel>
</asp:Content>

