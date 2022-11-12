<%--   
    Document   : success
    Created on : 21 Oct, 2022, 9:27:47 AM
    Author     : Abhinandan Shinde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="success.css">
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
        <link href="http://fonts.googleapis.com/css?family=Montserrat|open+Sans" rel="stylesheet">
    </head>
    <body>
        <% if((session.getAttribute("emailid")==null) || (session.getAttribute("emailid")==" "))
        {
            %>
            You are not logged in<br>
            <a href="login1.html">Please log in</a>
            <%
        }
           else
        {
            %>
            
            <div class="menu1">
		<div id="lmenu">
			<lable>Welcome to MajiVali.Com</lable>
		</div>
                    <div id="menu">
			<ul>
                            <li><a href="edite.jsp">EditInfo</a>
                                <ul>
                                    <li><a href="edite.jsp">EditProfile</a></li>
                                    <li><a href="editminfo.html">AddMoreInfo</a></li>
                                    <li><a href="editminfo1.jsp">EditMoreInfo</a></li>
				</ul>
                            </li>
                            <li><a href="myprofile.jsp">MyProfile</a></li>
                            <li><a href="mymatch1.jsp">mymatch</a></li>
                            <li><a href="search.jsp">search</a>
                                <ul>
                                    <li><a href="byname.html">SearchByName</a></li>
                                    <li><a href="bydist.html">ByDist</a></li>
                                    <li><a href="byeducation.html">ByEducation</a></li>
                                </ul>
                            </li>
                            <li><a href="addprofile.jsp">addprofile</a></li>
                            <li><a href="search.jsp">inbox</a></li>
                            <li><a href="logout.jsp">log out</a></li>
                        </ul>
                    </div>
            </div>
            <%
        }
            %>
    </body>
</html>
