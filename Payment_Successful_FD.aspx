<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment_Successful_FD.aspx.cs" Inherits="Payment_Successful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1>Thank for your purchase.</h1>
        <br />
        <h2>Your Payment have been successful.<br />
        </h2>
        <br />
        <br />
        <br />
        <asp:Button ID="btn_ok" runat="server" OnClick="btn_ok_Click" Text="OK" />
    
    </div>
    </form>
</body>
</html>
