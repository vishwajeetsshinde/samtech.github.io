<%-- 
    Document   : myprofile
    Created on : 23 Oct, 2022, 11:12:14 AM
    Author     : Abhinandan Shinde
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="form1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
        <script src="myinfopdf.js"></script>
        <script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
    </head>
     <body>
        <%
            String emailid=(String)session.getAttribute("emailid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "lagna","lagna");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from lagna where emailid='"+emailid+"' ");
        %>
        <div class="f1">
        <form action="myinfopdf.js">
            <center>
            <table id="invoice">
                
                
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
                <tr><td>education</td>
                    <td><input type="text" name="n13" value=<%= rs.getString(13)%> ></td>
                    <td>occupation</td>
                    <td><input type="text" name="n14" value=<%= rs.getString(14)%> ></td>
                    <td>annual income</td>
                    <td><input type="text" name="n15" value=<%= rs.getInt(15)%> ></td></tr>
                <tr><td>Detail Address</td>
                    <td><input type="text" name="n16" value=<%= rs.getString(16)%> ></td>
                    <td>look</td>
                    <td><input type="text" name="n17" value=<%= rs.getString(17)%> ></td>
                    <td>properties</td>
                    <td><input type="text" name="n18" value=<%= rs.getString(18)%> ></td></tr>
                <tr><td>car</td>
                    <td><input type="text" name="n19" value=<%= rs.getString(19)%> ></td>
                    <td>formas</td>
                    <td><input type="text" name="n20" value=<%= rs.getString(20)%> ></td>
                    <td>siblings</td>
                    <td><input type="text" name="n21" value=<%= rs.getString(21)%> ></td></tr>
                <tr><td>father name</td>
                    <td><input type="text" name="n22" value=<%= rs.getString(22)%> ></td>    
                    <td>father occupation</td>
                    <td><input type="text" name="n23" value=<%= rs.getString(23)%> ></td>
                    <td>relation</td>
                    <td><input type="text" name="n24" value=<%= rs.getString(24)%> ></td></tr>
                <tr><td><input type="Submit" value="SAVE" onclick="generatePDF()"></td>
                    <td><input type="reset" value="cancle"></td></tr>
                </table>
                </center>
            </form>
                </div>
                <%   
                }
                %>
     </body>
</html>
