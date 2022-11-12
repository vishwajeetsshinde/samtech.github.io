
<%-- 
    Document   : edite
    Created on : 21 Oct, 2022, 11:28:43 AM
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
            String emailid=(String)session.getAttribute("emailid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from lagna where emailid='"+emailid+"' ");
        %>
        <center>
            <div class="form">
        <form action="upeditinfo.jsp">
            <table>
                
                
                    <% while(rs.next())
                    {
                        %>
                <tr><td>Registration ID</td>
                    <td><input type="text" name="n1" value=<%= rs.getInt(1)%> ></td>
                    <td>First name</td>
                    <td><input type="text" name="n2" value=<%= rs.getString(2)%> ></td>
                    <td>Middle name</td>
                    <td><input type="text" name="n3" value=<%= rs.getString(3)%> ></td></tr>
                <tr><td>last name</td>
                    <td><input type="text" name="n4" value=<%= rs.getString(4)%> ></td>
                    <td>DOB</td>
                    <td><input type="text" name="n5" value=<%= rs.getString(5)%> ></td>
                    <td>gender</td>
                    <td><input type="text" name="n6" value=<%= rs.getString(6)%> ></td></tr>
                <tr><td>Village</td>
                    <td><input type="text" name="n7" value=<%= rs.getString(7)%> ></td>
                    <td>Tal</td>
                    <td><input type="text" name="n8" value=<%= rs.getString(8)%> ></td>
                    <td>Dist</td>
                    <td><input type="text" name="n9" value=<%= rs.getString(9)%> ></td></tr>
                <tr><td>Mobile No</td>
                    <td><input type="text" name="n10" value=<%= rs.getLong(10)%> ></td></tr>    
                <tr><td>Email ID</td>
                    <td><input type="text" name="n11" value=<%= rs.getString(11)%> ></td></tr>
                <tr><td>Password</td>
                    <td><input type="text" name="n12" value=<%= rs.getString(12)%> ></td></tr>
                <tr><td><input type="Submit" value="SAVE"></td>
                    <td><input type="reset" value="cancle"></td></tr>
                </table>
            </form>
                </center>
                </center>
                <%   
                }
                %>
            
       
    </body>
</html>
