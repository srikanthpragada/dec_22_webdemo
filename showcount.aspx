﻿<%@ Page Language="C#" Trace="true" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblCount.Text = "Session Count : " + Application["count"];
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
