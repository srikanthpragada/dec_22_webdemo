<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Item item = new Item
        {
            Title = lbBooks.SelectedItem.Text,
            Rate = Int32.Parse(lbBooks.SelectedItem.Value),
            Quantity = Int32.Parse(txtQty.Text)
        };

        List<Item> items;

        // get items from session 
        if (Session["cart"] != null)
        {
            items = Session["cart"] as List<Item>;
        }
        else
        {
            items = new List<Item>();
        }
        
        items.Add(item);

        Session.Add("cart", items);

        Response.Write("Item added successfully to cart!");


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Books</h2>

        <asp:ListBox ID="lbBooks" runat="server">
            <asp:ListItem Value="600">ASP.NET Unleashed</asp:ListItem>
            <asp:ListItem Value="500">C# Complete Ref</asp:ListItem>
            <asp:ListItem Value="300">jQuery in action</asp:ListItem>
        </asp:ListBox>
        <p />
        Quantity : <asp:TextBox ID="txtQty"  style="width:50px" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" OnClick="btnAdd_Click" />
        <p />
        <a href="cart.aspx">Shopping Cart</a>

    </form>
</body>
</html>
