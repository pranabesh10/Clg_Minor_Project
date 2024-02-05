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
String id=request.getParameter("cid");
String name=request.getParameter("cname");
String loc=request.getParameter("cloc");
String hcourse=request.getParameter("ccourse");
String image=request.getParameter("cimg");
String rank=request.getParameter("crank");
String web=request.getParameter("cweb");
String ai=request.getParameter("cai");
String ugc=request.getParameter("cugc");

Connection con;
PreparedStatement pstm;

try{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("update college set name=?,location=?,highlighted_courses=?,image=?,rank=?,website=?,AICTE=?,UGC=? where id=?");
	pstm.setString(1,name);
	pstm.setString(2,loc);
	pstm.setString(3,hcourse);
	pstm.setString(4,image);
	pstm.setString(5, rank);
	pstm.setString(6, web);
	pstm.setString(7, ai);
	pstm.setString(8, ugc);
	pstm.setString(9,id);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("view_college.jsp?update=valid");
}catch (Exception e){
	response.sendRedirect("view_college.jsp?update=invalid");
}
%>
</body>
</html>