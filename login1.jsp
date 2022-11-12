<%-- 
    Document   : login1
    Created on : 21 Oct, 2022, 9:22:23 AM
    Author     : Abhinandan Shinde
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String emailid=request.getParameter("n1");
           String password=request.getParameter("n2");
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from lagna where emailid='"+emailid+"' and password='"+password+"' ");
           if(rs.next())
           {
               session.setAttribute("emailid",emailid);
               out.println("welcome "+emailid);
               response.sendRedirect("success.jsp");
           }
           else
           {
               out.println("Invalid Username and password<a href='login.html'> try again</a>");
           }
           %>
    </body>
</html>
