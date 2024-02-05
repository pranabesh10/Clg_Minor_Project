<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
    <%@page import="org.misc.ConnectionProvider" %>
    <%String str1= (String)session.getAttribute("EMAIL");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String docname=request.getParameter("docname");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from documents where Document_name=? and user_email=?");
	pstm.setString(1, docname);
	pstm.setString(2,str1);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("Student_Document.jsp");
}catch (Exception e){}
%>
</body>
</html>