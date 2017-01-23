<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtPwd.Text == "123")
        {
            // creates cookie .ASPXAUTH  and redirects to ReturnURL parameter
            FormsAuthentication.RedirectFromLoginPage("admin", false);
        }
        else
            lblMsg.Text = "Sorry! Invalid Login. Try Again!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
    Password : <asp:TextBox ID="txtPwd"  TextMode="Password"  runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
