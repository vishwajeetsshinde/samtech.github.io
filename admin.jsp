 <%-- 
    Document   : admin
    Created on : 25 Oct, 2022, 4:13:04 PM
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
           String job=request.getParameter("n3");
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from employee where emailid='"+emailid+"' and password='"+password+"' and job='"+job+"' ");
           if(job.equals("director")&& rs.next())
           {
               session.setAttribute("emailid",emailid);
               out.println("welcome "+emailid);
               response.sendRedirect("success1.jsp");
           }
           else if(job.equals("manager")&& rs.next())
           {
               session.setAttribute("emailid",emailid);
               out.println("welcome "+emailid);
               response.sendRedirect("success1.jsp");
           }
           else
           {
              out.println("Invalid Username and password<a href='admin.html'> try again</a>"); 
           }
    
           %>
    </body>
</html>
