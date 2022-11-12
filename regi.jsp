<%-- 
    Document   : regi
    Created on : 21 Oct, 2022, 9:32:50 AM
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
            String fname=request.getParameter("n1");
            String mname=request.getParameter("n2");
            String lname=request.getParameter("n3");
            String dob=request.getParameter("n4");
            String gender=request.getParameter("n5");
            String villege=request.getParameter("n6");
            String tal=request.getParameter("n7");
            String dist=request.getParameter("n8");
            String mob=request.getParameter("n9");
            long mobno=Long.parseLong(mob);
            String emailid=request.getParameter("n10");
            String password=request.getParameter("n11");
            
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
           Statement stmt=con.createStatement();
           int i=stmt.executeUpdate("insert into lagna (regi_id,fname,mname,lname,dob,gender,villege,tal,dist,mobno,emailid,password) values(regi_id.nextval,'"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+gender+"','"+villege+"','"+tal+"','"+dist+"',"+mobno+",'"+emailid+"','"+password+"')");
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
