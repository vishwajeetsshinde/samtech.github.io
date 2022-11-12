<%-- 
    Document   : moreinfo
    Created on : 21 Oct, 2022, 1:35:08 PM
    Author     : Abhinandan Shinde
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="form.css">
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String education=request.getParameter("n13");
            String occupation=request.getParameter("n14");
            String aincome=request.getParameter("n15");
            int annualincome=Integer.parseInt(aincome);
            String daddress=request.getParameter("n16");
            String look=request.getParameter("n17");
            String properties=request.getParameter("n18");
            String car=request.getParameter("n19");
            String forms=request.getParameter("n20");
            String sibling=request.getParameter("n21");
            String fathername=request.getParameter("n22");
            String foccupation=request.getParameter("n23");
            String relation=request.getParameter("n24");
            String a=request.getParameter("n25");
            long age=Integer.parseInt(a);
            String state=request.getParameter("n26");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            int i=stmt.executeUpdate("update lagna set education='"+education+"',occupation='"+occupation+"',annualincome="+annualincome+",daddress='"+daddress+"',look='"+look+"',properties='"+properties+"',car='"+car+"',forms='"+forms+"',siblings='"+sibling+"',fathername='"+fathername+"',fatheroccupation='"+foccupation+"',relation='"+relation+"',age="+age+",state='"+state+"' where emailid='"+email+"' ");
           
            if(i>0)
            {
                out.println("one record inserted");
                response.sendRedirect("myexceptation.html");
            }
            else
            {
                out.println("no record inserted");
            }
        %>
    </body>
</html>
