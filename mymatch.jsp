<%-- 
    Document   : mymatch
    Created on : 25 Oct, 2022, 8:47:53 AM
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
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select state,dist,education,cast,salary,occupation,age,gender from myexceptations where emailid='"+emailid+"' ");
            String state="",dist="",education="",cast="",occupation="",gender="";
            int salary=0, age=0;
            while(rs.next())
            {   
                state=rs.getString(1);
                dist=rs.getString(2);
                education=rs.getString(3);
                cast=rs.getString(4);
                salary=rs.getInt(5);
                occupation=rs.getString(6);
                age=rs.getInt(7);
                gender=rs.getString(8);
            }
            
            String sql="select * from myexceptations where state='"+state+"' and dist='"+dist+"' and education='"+education+"' and cast='"+cast+"' and salary="+salary+" and occupation='"+occupation+"' and age="+age+" and gender='"+gender+"' ";
            ResultSet a=stmt.executeQuery(sql);
        %>
            <% 
                while(a.next())
                {
                    %>
                <tr>
                    <td>state</td>
                    <td><input type="text" name="n1" value=<%= rs.getString(26)%> ></td>
                    <td>Dist</td>
                    <td><input type="text" name="n2" value=<%= rs.getString(9)%> ></td>
                    <td>education</td>
                    <td><input type="text" name="n3" value=<%= rs.getString(13)%> ></td></tr>
                <tr><td>cast</td>
                    <td><input type="text" name="n4" value=<%= rs.getString(5)%> ></td>
                    <td>salary</td>
                    <td><input type="text" name="n5" value=<%= rs.getInt(6)%> ></td>
                    <td>occupation</td>
                    <td><input type="text" name="n6" value=<%= rs.getString(8)%> ></td></tr>
                <tr><td>age</td>
                    <td><input type="text" name="n7" value=<%= rs.getInt(9)%> ></td>
                    <td>gender</td>
                    <td><input type="text" name="n8" value=<%= rs.getString(11)%> ></td>
                  
                <%
            }
        %>
    </body>
</html>
