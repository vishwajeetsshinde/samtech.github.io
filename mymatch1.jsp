<%-- 
    Document   : mymatch1
    Created on : 26 Oct, 2022, 8:41:38 AM
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
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lagna","lagna");
            Statement stmt=con.createStatement();
            ResultSet x=stmt.executeQuery("select state,dist,education from myexceptations where emailid='"+emailid+"'");
            String state="",dist="",edu="",cast="",occupation="",gender="",salary="";
            int age=0;
            while(x.next())
            {
            state=x.getString(1);
            dist=x.getString(2);
            edu=x.getString(3);
            
            
            
        }
            out.println("salary"+salary);
            out.println("cast"+cast);
            out.println("state"+state);
        String sql="select *from lagna where state='"+state+"' and dist='"+dist+"' and education='"+edu+"' ";
        ResultSet a=stmt.executeQuery(sql);
        
        
        %>
             <table border="2">
             <tr>
                 <th>Email</th>
                <th>Fname</th>
                <th>Lname</th>
                <th>Age</th>
                <th>Gender</th>
                <th>salary</th>
                <th>View</th>
             </tr>
             <%
             while(a.next())
             {
             %>
             <tr>
                 <form action="viewal.jsp" method="post">
                <td><input type="text" value="<%=a.getString(11)%>" name="n1"></td>
                <td><%=a.getString(2)%></td>
                <td><%=a.getString(4)%></td>
                <td><%=a.getInt(25)%></td>
                <td><%=a.getString(6)%></td>
                <td><%=a.getLong(15)%></td>
                <td><a href="viewal.jsp"><input type="submit" value="viewall"></a></td>
                </form>
                </tr>
                <%
                }
                %>
            </table>
            
    </body>
    </body>
</html>
