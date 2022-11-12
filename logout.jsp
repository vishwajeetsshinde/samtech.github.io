<%-- 
    Document   : logout
    Created on : 21 Oct, 2022, 9:29:39 AM
    Author     : Abhinandan Shinde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.setAttribute("emailid",null);
            session.invalidate();
            response.sendRedirect("index.html");
            %>
    </body>
</html>
