<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("You cancelled the process");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 191px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Validation Controls</h3>
        <p>
            <table style="height: 138px; width: 734px">
                <tr>
                    <td class="style1">
                        Enter your name
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        *
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter name!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="style1" >
                        Enter your code (1 to 100)</td>
                    <td >
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="Invalid Code" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td class="style1" >
                        Enter Min and Max Qty
                    </td>
                    <td style="height: 26px" >
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Min must be <= Max" ControlToCompare="TextBox4" ControlToValidate="TextBox3" Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" >
                        Enter Pin Code</td>
                    <td >
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        *
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Invalid Pincode" ControlToValidate="TextBox5" 
                            ValidationExpression="530\d{3}" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5"
                            ErrorMessage="Pincode is mandatory"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" 
                CausesValidation="False" Text="Cancel" 
                onclick="Button2_Click" />&nbsp;&nbsp;</p>
    
    </div>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator2" runat="server"  
        ControlToValidate="TextBox6" ErrorMessage="Must be a number" 
        Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    </form>
</body>
</html>
