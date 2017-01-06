<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        foreach(String name in Request.Cookies)
        {
            if ( name == "city")
            {
                lblMovies.Text = "Movies in " + Request.Cookies[name].Value;
                return;
            }
        }

        // cookie not found, redirect user to select city
        Response.Redirect("selectcity.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblMovies" runat="server" Text=""></asp:Label>
        <p />
        <a href="selectcity.aspx">Change City</a>
    </form>
</body>
</html>
