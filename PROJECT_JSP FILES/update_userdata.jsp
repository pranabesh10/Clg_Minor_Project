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
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("uemail");
String phn =request.getParameter("phn");
String gender=request.getParameter("gender");
String password=request.getParameter("pass");
String conpass=request.getParameter("conpass");
String term=request.getParameter("term");

Connection con;
PreparedStatement pstm;
try{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("update user set fname=?,lname=?,phn=?,gender=?,pass=?,conpass=?,term=? where email=?;");
	pstm.setString(1,fname);
	pstm.setString(2,lname);
	pstm.setString(3,phn);
	pstm.setString(4,gender);
	pstm.setString(5,password);
	pstm.setString(6,conpass);
	pstm.setString(7,term);
	pstm.setString(8,email);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("View_user.jsp?update=valid");
}catch (Exception e){
	response.sendRedirect("View_user.jsp?update=valid");
}
%>
</body>
</html>