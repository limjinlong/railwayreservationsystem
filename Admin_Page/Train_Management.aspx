<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Train_Management.aspx.cs" Inherits="Admin_Page_Train_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 424px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style7 {
            width: 53px;
        }
        .auto-style9 {
            width: 19px;
        }
        .auto-style10 {
            width: 125px;
        }
        .auto-style11 {
            width: 53px;
            height: 37px;
        }
        .auto-style12 {
            width: 125px;
            height: 37px;
        }
        .auto-style13 {
            width: 19px;
            height: 37px;
        }
        .auto-style14 {
            height: 37px;
        }
        .auto-style15 {
            width: 53px;
            height: 38px;
        }
        .auto-style16 {
            width: 125px;
            height: 38px;
        }
        .auto-style17 {
            width: 19px;
            height: 38px;
        }
        .auto-style18 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="426px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">Train Management</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">Train ID</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:TextBox ID="tb_trainid" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">Name</td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="tb_trainname" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">Capacity</td>
                <td class="auto-style9">:</td>
                <td>
                    <asp:TextBox ID="tb_traincapacity" runat="server" TextMode="Number" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="btn_addtrain" runat="server" Text="Add Train" Width="132px" OnClick="btn_addtrain_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="132px" OnClick="btn_clear_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_feedback" runat="server" ForeColor="Lime" Text="[Feedback Msg]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Trains]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

