<%-- 
    Document   : addemp
    Created on : 25 Oct, 2022, 6:20:05 PM
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
        <%
            String empname=request.getParameter("n1");
            String job=request.getParameter("n2");
            String education=request.getParameter("n3");
            String address=request.getParameter("n4");
            String emailid=request.getParameter("n5");
            String password=request.getParameter("n6");
            String mobno=request.getParameter("n7");
            
            
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
           Statement stmt=con.createStatement();
           int i=stmt.executeUpdate("insert into employee (emp_id,empname,job,education,address,emailid,password,mobno) values(emp_id.nextval,'"+empname+"','"+job+"','"+education+"','"+address+"','"+emailid+"','"+password+"','"+mobno+"')");
           if(i>0)
           {
               out.println("one record inserted");
           }
           else
           {
               out.println("no record inserted");
           }
        %>
    </body>
</html>
