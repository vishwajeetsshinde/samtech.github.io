<%-- 
    Document   : byeducation
    Created on : 27 Oct, 2022, 9:43:00 AM
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
            String education=request.getParameter("n1");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select fname,lname,dob,gender,dist,education,occupation from lagna where education='"+education+"' ");
        %>
        
        <form action="updateeditemp.jsp">
            
            <table border="1">
                <tr><th>fname</th>
                    <th>lname</th>
                    <th>dob</th>
                    <th>gender</th>
                    <th>dist</th>
                    <th>education</th>
                    <th>occupation</th></tr>
                    <% while(rs.next())
                    {
                        
                        %>
                    
                     <tr><td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        </tr>
                </table>
                
            </form>
                <%   
                }
                %>
    </body>
</html>
