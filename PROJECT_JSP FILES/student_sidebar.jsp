<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String str=(String)session.getAttribute("NAME"); %>
<%String str1= (String)session.getAttribute("EMAIL");%>
<%@page import="java.sql.*" %>
<%@page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>

<head>
<title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
 @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
body {
  margin: 0;
  font-family: 'Domine', serif;

}

.sidebar {
  margin: 0;
  padding: 0;
  width: 250px;
  background-color: #131356;
  position: fixed;
  height: 100%;
  overflow: auto;
  font-family: 'Domine', serif;
  font-size: 15px;
}

.sidebar a {
  display: block;
  color: #fff;
  padding: 16px;
  text-decoration: none;
}
 


.sidebar a:hover:not(.active) {
 	background-color: #fff;
  color: #131356;
  text-decoration: none;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}
.sidebar i{
	margin-left: 30%;
	margin-top: 18%;
}
.sidebar h2{
	font-family: myfont;
	color: #fff;
	margin-left: 8%;
	margin-bottom: 7%;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }

}
</style>
</head>
<body>
<div class="sidebar">
<<i class="fa fa-user" aria-hidden="true" style="color: white; font-size: 100px;"></i>
<h2>Welcome,<br><%=str %></h2>
  <a  href="student_profile.jsp">Dash Board</a>
  <a href="Student_info.jsp">Student Information</a>
  <a href="Student_Document.jsp">Documents</a>
<% 
Connection con=null;
PreparedStatement pstm=null;
ResultSet rs=null;
	try{
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("select * from user_enroll where user_email=?;");
		pstm.setString(1,str1);
		rs=pstm.executeQuery();
	
%>

  <%	if(rs.next())
	  {%> <a href="Afterpayview.jsp">Applied College</a>
	  <%} %>
  <a href="Student_Exams.jsp">Upcoming Exams</a>
 


<%}
	catch(Exception e) {}
	
%>
 </div>

</body>
</html>
