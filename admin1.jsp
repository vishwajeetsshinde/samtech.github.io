<%-- 
    Document   : admin1
    Created on : 31 Oct, 2022, 12:18:27 PM
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
            
            String password1=request.getParameter("n2");
            String admin=request.getParameter("n3");
            String manager=request.getParameter("n4");
            String emailid1=request.getParameter("n1");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lagna","lagna");
            Statement stmt=con.createStatement();
            ResultSet x=stmt.executeQuery("select * from employee where emailid='"+emailid1+"'");
            String job="",password="",emailid="";
            
            while(x.next())
            {
            job=x.getString(1);
            emailid=x.getString(2);
            password=x.getString(3);
           
            
            
            
        }
            if((emailid1.equals(emailid)) && password.equals(password1) && job.equals(manager))
            {
                response.sendRedirect("success1.jsp");
            }
            else{
                response.sendRedirect("index.");
            }
                
            out.println("salary"+job);
            out.println("cast"+password);
            out.println("state"+emailid);
        
        
        
        %>
    </body>
</html>
