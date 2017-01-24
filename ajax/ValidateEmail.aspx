<%@ Page Language="C#" ContentType="text/plain" %>

<%
    List<String> emails = new List<String>
                            { "abc@gmail.com", "bbc@yahoo.com", "pqr@gmail.com" };
    String email = Request.QueryString["email"];
    if (emails.Contains(email))
        Response.Write("Yes");
    else
        Response.Write("No");
%>