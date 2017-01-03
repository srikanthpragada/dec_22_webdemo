<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount, discount;

        amount =  Double.Parse(txtAmount.Text);
        if (amount > 10000)
            discount = amount * 0.20;
        else
            discount = amount * 0.10;

        if (chkRound.Checked)
            discount = Math.Round(discount);

        lblDiscount.Text = "Discount = " + discount;

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discount Calculation</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Discount Calculation</h1>
    Amount : 
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="chkRound" runat="server" Text="Round" />
        <br />
        <br />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <br />
        <br />
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
