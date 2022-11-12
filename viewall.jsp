<%-- 
    Document   : viewall
    Created on : 25 Oct, 2022, 9:22:11 PM
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
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select * from employee");
        %>
        
        <form action="updateeditemp.jsp">
            
            <table>
                <tr><th>emp_id</th>
                    <th>name</th>
                    <th>job</th>
                    <th>education</th>
                    <th>Address</th>
                    <th>emailid</th>
                    <th>password</th>
                    <th>mobno</th></tr>
                    <% while(rs.next())
                    {
                        
                        %>
                    
                    <tr><td><input type="text" name="n1" value=<%= rs.getInt(1)%> ></td>
                
                        <td><input type="text" name="n2" value=<%= rs.getString(2)%> ></td>
                    
                        <td><input type="text" name="n3" value=<%= rs.getString(3)%> ></td>
                    
                        <td><input type="text" name="n4" value=<%= rs.getString(4)%> ></td>
                
                        <td><input type="text" name="n5" value=<%= rs.getString(5)%> ></td>
                    
                        <td><input type="text" name="n6" value=<%= rs.getString(6)%> ></td>
                   
                        <td><input type="text" name="n7" value=<%= rs.getString(7)%> ></td>
                
                        <td><input type="text" name="n8" value=<%= rs.getString(8)%> ></td></tr>
                    
                </table>
                
            </form>
                <%   
                }
                %>
    </body>
</html>
