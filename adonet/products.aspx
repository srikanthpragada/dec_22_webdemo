<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Products</h2>

        <asp:GridView ID="GridView1" Width="100%" runat="server"
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdId" 
                DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:######.00}"  SortExpression="Price" />
                <asp:BoundField DataField="Qoh" HeaderText="Qoh" SortExpression="Qoh" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                <asp:BoundField DataField="CatCode" HeaderText="CatCode" SortExpression="CatCode" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>"
             SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

    </form>
</body>
</html>
