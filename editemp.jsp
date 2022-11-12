<%-- 
    Document   : editemp
    Created on : 25 Oct, 2022, 7:24:39 PM
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
            String emailid=request.getParameter("n1");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select * from employee where emp_id="+emailid+" ");
        %>
        
        <form action="updateeditemp.jsp">
            <center>
            <table>
                    <% while(rs.next())
                    {
                        
                        %>
                    
                <tr><td>emp_id</td>
                    <td><input type="text" name="n1" value=<%= rs.getInt(1)%> ></td></tr>
                <tr><td>name</td>
                    <td><input type="text" name="n2" value=<%= rs.getString(2)%> ></td>
                    <td>job</td>
                    <td><input type="text" name="n3" value=<%= rs.getString(3)%> ></td>
                    <td>education</td>
                    <td><input type="text" name="n4" value=<%= rs.getString(4)%> ></td></tr>
                <tr><td>Address</td>
                    <td><input type="text" name="n5" value=<%= rs.getString(5)%> ></td>
                    <td>emailid</td>
                    <td><input type="text" name="n6" value=<%= rs.getString(6)%> ></td>
                    <td>password</td>
                    <td><input type="text" name="n7" value=<%= rs.getString(7)%> ></td></tr>
                <tr><td>mobno</td>
                    <td><input type="text" name="n8" value=<%= rs.getString(8)%> ></td></tr>
              
                <tr><td><input type="Submit" value="SAVE" ></td></tr>
                    
                </table>
                </center>
            </form>
                <%   
                }
                %>
    </body>
</html>
