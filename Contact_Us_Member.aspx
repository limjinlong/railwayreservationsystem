<%@ Page Title="" Language="C#" MasterPageFile="~/Member_MasterPage.master" AutoEventWireup="true" CodeFile="Contact_Us_Member.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit" Height="653px">
        <p>
            Contact Us</p>
        <p class="auto-style1">
            Please Fill the Following to Send Mail.</p>
        <p style="text-align:center" class="auto-style1">
            Your name:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="YourName" ErrorMessage="*Required" ValidationGroup="save" ForeColor="Red" />
            <br />
            <asp:TextBox ID="YourName" runat="server" Width="350px" />
        </p>
        <p class="auto-style1" style="text-align:center">
            <br />
            Your email address:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YourEmail" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="save" />
            <br />
            <asp:TextBox ID="YourEmail" runat="server" Width="350px" />
        </p>
        <p style="text-align:center">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="YourEmail" Display="Dynamic" SetFocusOnError="true" Text="Example: username@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="save" />
        </p>
        <p style="text-align:center">
            <br />
            Subject:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="YourSubject" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="save" />
            <br />
            <asp:TextBox ID="YourSubject" runat="server" Width="350px" />
        </p>
        <p style="text-align:center">
            <br />
            Your Question:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Comments" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="save" />
            <br />
            <asp:TextBox ID="Comments" runat="server" Rows="10" TextMode="MultiLine" Width="350px" />
        </p>
        <p class="auto-style1">
            <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Send" ValidationGroup="save" Width="175px" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
        </p>
    </asp:Panel>
</asp:Content>

