<%-- 
    Document   : match
    Created on : 27 Oct, 2022, 10:05:44 AM
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
            String state=(String)session.getAttribute("state");
            String dist=(String)session.getAttribute("dist");
            String education=(String)session.getAttribute("education");
            String gender=(String)session.getAttribute("ender");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select state, dist,education,gender from lagna where state='"+state+"' and dist='"+dist+"' and education='"+education+"' and gender='"+gender+"' ");
        %>
        
        <form action="updateeditemp.jsp">
            
            <table border="1">
                <tr><th>state</th>
                    <th>dist</th>
                    <th>education</th>
                    <th>gender</th>
                    </tr>
                    <% while(rs.next())
                    {
                        
                        %>
                    
                     <tr><td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(5)%></td>
                        
                        </tr>
                </table>
                
            </form>
                <%   
                }
                %>
    </body>
</html>
