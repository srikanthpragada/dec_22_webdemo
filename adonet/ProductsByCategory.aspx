<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product By Category</title>
</head>
<body>
    <form id="form1" runat="server">
    Select Category : 
        <asp:DropDownList ID="DropDownList1" runat="server" 
             AutoPostBack="True"
             DataSourceID="SqlDataSource1" 
             DataTextField="CatDesc" 
             DataValueField="CatCode"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
              ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
              SelectCommand="SELECT * FROM [Categories] where catcode in (select catcode from products) "></asp:SqlDataSource>
        <p />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdId"
             RepeatLayout="Flow"
             DataSourceID="sdsProducts">
            <HeaderTemplate>
                <h2>List of Products</h2>
                <hr />
            </HeaderTemplate>
            <ItemTemplate>
                <h3><%# Eval("ProdName") %></h3>
                <%# Eval("Price") %>,<%# Eval("Qoh") %>
                <br />
                <a href='editproduct.aspx?prodid=<%# Eval("prodid") %>'>Edit Product</a>
                <p />
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="sdsProducts" runat="server"
                 ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>"
                 SelectCommand="SELECT * FROM [Products] WHERE ([CatCode] = @CatCode)">
                <SelectParameters>
                    <asp:ControlParameter 
                         ControlID="DropDownList1" 
                         Name="CatCode"
                         PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
