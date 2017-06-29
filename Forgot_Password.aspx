<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
.style6  
{  
text-align: left;  
font-size: large;  
text-decoration: underline;  
color: #0000FF;  
}  
  
        .style1  
{  
width: 225px;  
}  
.style2  
{  
width: 155px;  
}  
.style6
{
    color: black;
}
        .auto-style1 {
            text-align: center;
            font-size: large;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <caption class="auto-style1">
            Forgot Password</caption>
        <tr>
            <td class="style1"></td>
            <td class="style2"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td class="style2">EmailID: </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td class="style2"></td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lbmsg" runat="server">  
                            </asp:Label>
            </td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back to Login  
                            </asp:LinkButton>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>

