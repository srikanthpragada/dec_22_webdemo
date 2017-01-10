<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePrice.aspx.cs" Inherits="adonet_UpdatePrice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Product Price</title>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Update Product Price</h2>
     Product Id <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
     New Price <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnChange" runat="server" Text="Change Price" OnClick="btnChange_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
