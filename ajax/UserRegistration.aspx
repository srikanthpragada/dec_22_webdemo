<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnValidate_Click(object sender, EventArgs e)
    {
        List<String> emails = new List<String>
                            { "abc@gmail.com", "bbc@yahoo.com", "pqr@gmail.com" };
        String email = txtEmail.Text;
        if (emails.Contains(email))
            lblMsg.Text = "Email already exists!";
        else
            lblMsg.Text = "Valid Email!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h2>Registration</h2>
                Email Address 
                <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:Button ID="btnValidate" runat="server" Text="Validate" OnClick="btnValidate_Click" />
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                <p />
            </ContentTemplate>
        </asp:UpdatePanel>

        Password 
                <br />
        <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
        <p />
        Confirm Password
                <br />
        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Register" />
    </form>
</body>
</html>
