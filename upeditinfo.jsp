<%-- 
    Document   : upeditinfo
    Created on : 23 Oct, 2022, 11:39:50 AM
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
            String regi=request.getParameter("n1");
            int regi_id=Integer.parseInt(regi);
            String fname=request.getParameter("n2");
            String mname=request.getParameter("n3");
            String lname=request.getParameter("n4");
            String dob=request.getParameter("n5");
            String gender=request.getParameter("n6");
            String villege=request.getParameter("n7");
            String tal=request.getParameter("n8");
            String dist1=request.getParameter("n9");
            String mob=request.getParameter("n10");
            long mobno=Long.parseLong(mob);
            String emailid=request.getParameter("n11");
            String password=request.getParameter("n12");
            
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
           Statement stmt=con.createStatement();
           int i=stmt.executeUpdate("update lagna set regi_id="+regi_id+",fname='"+fname+"',mname='"+mname+"',lname='"+lname+"',dob='"+dob+"',gender='"+gender+"',villege='"+villege+"',tal='"+tal+"',dist='"+dist1+"',mobno="+mobno+",emailid='"+emailid+"',password='"+password+"' where regi_id="+regi_id+" ");
           if(i>0)
           {
               out.println("one record updated");
           }
           else
           {
               out.println("no record updated");
           }
        %>
    </body>
</html>
