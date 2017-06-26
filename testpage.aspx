<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpage.aspx.cs" Inherits="testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--<script src="jquery-1.11.2.js"></script>
    <script src="jquery-ui.js"> </script>
    <link href="jquery-ui.css" rel="stylesheet" /> !
    <script type="text/javascript">
        $(document).ready(function() {
            $('#txtDate').datepicker({
                
            });      
        });  
       </script>-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
    </div>
    </form>
</body>
</html>
