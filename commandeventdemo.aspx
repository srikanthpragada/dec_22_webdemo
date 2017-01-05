<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">


    protected void Navigate(object sender, CommandEventArgs e)
    {
        Response.Write(e.CommandArgument);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("You clicked on Button3");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Button ID="Button1" runat="server" CommandArgument="-1"  Text="Prev"
               OnCommand="Navigate" />
        <asp:Button ID="Button2" runat="server" CommandArgument="1" Text="Next"
               OnCommand="Navigate" />
        <p />

        <asp:Button ID="Button3" Text="Button3" runat="server" OnClick="Button3_Click"/>
   
    </form>
</body>
</html>
