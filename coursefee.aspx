<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">


    protected void rbOnline_CheckedChanged(object sender, EventArgs e)
    {
        cbOldStudent.Enabled = false;
    }

    protected void rbClassroom_CheckedChanged(object sender, EventArgs e)
    {
        cbOldStudent.Enabled = true;
    }


    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double  fee;

        fee = Double.Parse(ddlCourses.SelectedItem.Value);

        if (rbOnline.Checked)
            fee = fee * 1.5;
        else
        {
            if (cbOldStudent.Checked)
                fee = fee * 0.9;
        }

        lblResult.Text = "Course Fee : " + Math.Round(fee);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Postback : " + Page.IsPostBack);

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Course Fee Calculator</h2>
        Select Course <br />
        <asp:DropDownList ID="ddlCourses" runat="server">
            <asp:ListItem Value="3500">Java SE 8.0</asp:ListItem>
            <asp:ListItem Value="4000">Java EE 7.0</asp:ListItem>
            <asp:ListItem Value="5500">Microsoft.NET</asp:ListItem>
        </asp:DropDownList>
        <p />
        Student Type <asp:RadioButton ID="rbClassroom" runat="server" Checked="True" GroupName="stype" Text="Classroom" OnCheckedChanged="rbClassroom_CheckedChanged" AutoPostBack="True" />
        &nbsp;<asp:RadioButton ID="rbOnline" runat="server" GroupName="stype"
             OnCheckedChanged="rbOnline_CheckedChanged" Text="Online" AutoPostBack="True" />
        <p />
        <asp:CheckBox ID="cbOldStudent" runat="server"
            Text="Old Student" />
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
             OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <p />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/fee.jpg" OnClick="ImageButton1_Click" />
    </form>
</body>
</html>
