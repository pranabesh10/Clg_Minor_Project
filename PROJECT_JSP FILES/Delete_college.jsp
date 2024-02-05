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
String collegeId=request.getParameter("collegeid");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from college where id=?");
	pstm.setString(1, collegeId);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("view_college.jsp");
}catch (Exception e){}
%>
</body>
</html>