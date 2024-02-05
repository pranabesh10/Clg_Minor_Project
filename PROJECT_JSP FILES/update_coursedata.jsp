<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String courseid=request.getParameter("c_id");
String coursename=request.getParameter("c_name");
String sempay=request.getParameter("sem_pay");
String nosem=request.getParameter("nosem");
String yrpay=request.getParameter("yr_pay");

Connection con;
PreparedStatement pstm;
try{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("update course set course_name=?,s_pay=?,no_sem=?,t_pay=? where course_id=?");
	pstm.setString(1,coursename);
	pstm.setString(2,sempay);
	pstm.setString(3,nosem);
	pstm.setString(4,yrpay);
	pstm.setString(5,courseid);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("View_Course.jsp?update=valid");
}catch (Exception e){
	response.sendRedirect("View_Course.jsp?update=valid");
}
%>
</body>
</html>