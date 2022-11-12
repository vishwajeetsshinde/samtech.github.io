<%-- 
    Document   : success1
    Created on : 25 Oct, 2022, 4:35:07 PM
    Author     : Abhinandan Shinde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="success1.css">
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
        <link href="http://fonts.googleapis.com/css?family=Montserrat|open+Sans" rel="stylesheet">
    </head>
    <body>
        <% if((session.getAttribute("emailid")==null) || (session.getAttribute("emailid")==" "))
        {
            %>
            You are not logged in<br>
            <a href="admin.html">Please log in</a>
            <%
        }
           else
        {
            %>
            
            <div class="menu1">
		<div id="lmenu">
			<lable>Welcome to MajiVali.Com Admin</lable>
		</div>
                    <div id="menu">
			<ul>
                            <li><a href="edite.jsp">EditInfo</a>
                                <ul>
                                    <li><a href="addemp.html">Addemp</a></li>
                                    <li><a href="editemp.html">EditEmpDetails</a></li>
                                    <li><a href="viewall.jsp">ViewEmpDetails</a></li>
                                    <li><a href="delete.jsp">delete</a></li>
				</ul>
                            </li>
                            <li><a href="logout.jsp">log out</a></li>
                        </ul>
                    </div>
            </div>
            <%
        }
            %>
    </body>
</html>
