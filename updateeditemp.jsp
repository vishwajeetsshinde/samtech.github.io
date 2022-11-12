<%-- 
    Document   : updateeditemp
    Created on : 25 Oct, 2022, 8:53:43 PM
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
            String emp=request.getParameter("n1");
            int emp_id=Integer.parseInt(emp);
            String empname=request.getParameter("n2");
            String job=request.getParameter("n3");
            String education=request.getParameter("n4");
            
            String address=request.getParameter("n5");
            String emailid=request.getParameter("n6");
            String password=request.getParameter("n7");
            String mobno=request.getParameter("n8");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            int i=stmt.executeUpdate("update employee set empname='"+empname+"',education='"+education+"',address='"+address+"',emailid='"+emailid+"',password='"+password+"',mobno='"+mobno+"' where emp_id="+emp_id+" ");
           
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
