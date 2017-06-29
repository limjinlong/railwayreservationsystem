<%@ Page Title="" Language="C#" MasterPageFile="~/Member_MasterPage.master" AutoEventWireup="true" CodeFile="Member_Profile.aspx.cs" Inherits="Member_Profile" %>

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
            width: 435px;
        }
        .auto-style21 {
            width: 216px;
        }
        .auto-style23 {
            width: 129px;
        }
        .auto-style24 {
            width: 129px;
            text-align: left;
        }
        .auto-style25 {
            width: 435px;
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
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label16" runat="server" Font-Size="X-Large" Text="ID"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label15" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="tb_ID" runat="server" Enabled="False" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style24">
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
                <td class="auto-style25">
                    <asp:TextBox ID="tb_Name" runat="server" Enabled="False" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_Name" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style24">&nbsp;</td>
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
                    <asp:TextBox ID="tb_NRIC" runat="server" Width="400px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_NRIC" Display="Dynamic" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tb_NRIC" Display="Dynamic" ErrorMessage="Only Number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
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
                <td class="auto-style25">
                    <asp:TextBox ID="tb_Email" runat="server" Width="400px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="Format Not Correct." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Phone No"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label11" runat="server" Font-Size="Large" Text=":"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="tb_PhoneNo" runat="server" Enabled="False" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_PhoneNo" Display="Dynamic" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_PhoneNo" Display="Dynamic" ErrorMessage="Only Number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
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
                <td class="auto-style25">
                    <asp:TextBox ID="tb_Gender" runat="server" Width="400px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_Gender" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
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
                <td class="auto-style25">
                    <asp:TextBox ID="tb_Username" runat="server" Width="400px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_Username" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
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
                <td class="auto-style25">
                    <asp:TextBox ID="tb_Password" runat="server" Width="400px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_Password" ErrorMessage="This Field is required."></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
        <br />
    </asp:Panel>
</asp:Content>

