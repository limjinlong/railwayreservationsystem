<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpage.aspx.cs" Inherits="testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView Data Manipulation</title>
    <script src="jquery-1.11.2.js"></script>
    <script src="jquery-ui.js"> </script>
    <link href="jquery-ui.css" rel="stylesheet" /> &nbsp;
  <script type="text/javascript">
      function ConfirmOnDelete(item) {
          if (confirm("Are you sure to delete: " + item + "?") == true)
              return true;
          else
              return false;
      }
    </script>

</head><body><form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="6" CellSpacing="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="521px" OnRowDataBound="GridView1_RowDataBound1">
    <Columns>
    <asp:BoundField DataField="CustomerID" HeaderText="ID" ReadOnly="true" />
    <asp:BoundField DataField="CompanyName" HeaderText="Company"/>
    <asp:BoundField DataField="ContactName" HeaderText="Name"/>
    <asp:BoundField DataField="ContactTitle" HeaderText="Title" />
    <asp:BoundField DataField="Address" HeaderText="Address"/>
    <asp:BoundField DataField="Country" HeaderText="Country"/>
    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
</Columns>
            </asp:GridView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
