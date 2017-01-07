<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        List<Item> cart = Session["cart"] as List<Item>;
        if ( cart == null || cart.Count == 0)
        {
            lblCart.Text = "Cart Is Empty!";
            return;
        }

        String output = "<table border='1' class='table'><tr class='redwhite'><th>Title</th><th>Rate </th><th>Qty</th><th>Amout</th></tr>";
        foreach(Item item in cart)
        {
            output = output + "<tr><td>" + item.Title + "</td><td>" + item.Rate
                  + "</td><td>" + item.Quantity + "</td><td>" + item.Rate * item.Quantity
                  + "</td></tr>";
        }

        output = output + "</table>";

        lblCart.Text = output;

    }

    protected void lbEmpty_Click(object sender, EventArgs e)
    {
        Session.Remove("cart");
        Response.Redirect("products.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <style>
        .table { font-family :Verdana; font-size : 12pt }
        .redwhite { background-color:red; color:white;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Cart</h2>
     <asp:Label ID="lblCart" runat="server" Text=""></asp:Label> 
     <p />
     <asp:LinkButton ID="lbEmpty" runat="server" OnClick="lbEmpty_Click">Empty Cart</asp:LinkButton>
     <p />    
     <a href="products.aspx">Continue Shopping</a>
    </form>
</body>
</html>
