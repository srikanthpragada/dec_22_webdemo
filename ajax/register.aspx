<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <script>
        var xhr;

        function check()
        {
            var email = document.getElementById("txtEmail").value;
            xhr = new XMLHttpRequest();
            xhr.open("get", "validateemail.aspx?email=" + email, true);
            xhr.onreadystatechange = update;
            xhr.send(null);
        }

        function update()
        {
            console.log(xhr.readyState);
            if ( xhr.readyState == 4)
            {
                var message = document.getElementById("message");
                if (xhr.responseText == "Yes")
                    message.innerText = "Email already exists!";
                else
                    message.innerText = "Valid Email!";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration</h2>
        Email Address 
        <br />
        <asp:TextBox ID="txtEmail" onBlur="check()" runat="server"></asp:TextBox>
        <span id="message"></span>
        <p />
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
