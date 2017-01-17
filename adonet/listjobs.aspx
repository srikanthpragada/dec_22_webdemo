<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OracleClient" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection("user id=hr;password=hr");
        OracleDataAdapter da = new OracleDataAdapter("select * from jobs", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "jobs");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
   }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
