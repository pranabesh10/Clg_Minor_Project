<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String courseId=request.getParameter("courseid");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from course where course_id=?");
	pstm.setString(1, courseId);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("View_Course.jsp");
}catch (Exception e){}
%>
</body>
</html>