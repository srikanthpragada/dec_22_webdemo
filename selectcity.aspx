<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("city", ddlCities.SelectedItem.Text);
        c.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(c);
        Response.Redirect("movies.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Select City : 
        <asp:DropDownList ID="ddlCities" runat="server">
            <asp:ListItem  Text="Vizag"></asp:ListItem>
            <asp:ListItem  Text="Hyderabad"></asp:ListItem>
            <asp:ListItem  Text="Bangalore"></asp:ListItem>
            <asp:ListItem  Text="Chennai"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
   
</body>
</html>
