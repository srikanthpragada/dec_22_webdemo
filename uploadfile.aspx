<%@ Page Language="C#" %>
<!DOCTYPE>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        string filename;

        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType != "image/jpeg" ||
                   FileUpload1.PostedFile.ContentLength > 50000)
            {
                Label1.Text = "Sorry! An JPG image  of size < 50000 bytes is only acceptable";
                return;
            }

            //convert virtual path to physical path
            // FileUpload1.PostedFile.ContentLength  to get length 


            filename = Request.MapPath("dump/" + FileUpload1.FileName);
            FileUpload1.SaveAs(filename);  // save file in the server 

            Label1.Text = "File Uploaded Successfully  : " + filename +
                  "<br>Length : " + FileUpload1.PostedFile.ContentLength
                  + "<br>Type : " + FileUpload1.PostedFile.ContentType;

        }
        else
            Label1.Text = "Please select a file to upload!";
    }
</script>

<html>
<body>
    <form id="form1" runat="server">
        <h2>Upload File</h2>

        Select File :
                <asp:FileUpload ID="FileUpload1" runat="server"   />
        <p />
        <asp:Button ID="Button1" runat="server" Text="Upload File" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p />
        <a href="dump/zoomit.exe">Download Zoomit</a>
    </form>
</body>
</html>
