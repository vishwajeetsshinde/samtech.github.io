<%-- 
    Document   : myexceptation
    Created on : 22 Oct, 2022, 6:32:10 PM
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
            String emailid=(String)session.getAttribute("emailid");
            String regi=request.getParameter("n1");
            int regi_id=Integer.parseInt(regi);
            request.setAttribute("regi_id",regi_id);
            String state=request.getParameter("n2");
            request.setAttribute("state",state);
            String dist=request.getParameter("n3");
            request.setAttribute("dist",dist);
            String education=request.getParameter("n4");
            request.setAttribute("education",education);
            String cast=request.getParameter("n5");
            request.setAttribute("cast",cast);
            String sal=request.getParameter("n6");
            int salary=Integer.parseInt(sal);
            request.setAttribute("salary",salary);
            String aincome=request.getParameter("n7");
            int annualincome=Integer.parseInt(aincome);
            request.setAttribute("annualincome",annualincome);
            String occupation=request.getParameter("n8");
            request.setAttribute("salary",salary);
            String ag=request.getParameter("n9");
            int age=Integer.parseInt(ag);
            request.setAttribute("age",age);
            String gender=request.getParameter("n10");
            request.setAttribute("gender",gender);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            int i=stmt.executeUpdate("insert into myexceptations values("+regi_id+",'"+state+"','"+dist+"','"+education+"','"+cast+"',"+salary+","+annualincome+",'"+occupation+"',"+age+",'"+emailid+"','"+gender+"')");
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
