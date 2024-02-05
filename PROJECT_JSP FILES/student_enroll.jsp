<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    	<%@page import="org.misc.ConnectionProvider" %>
     	 <%String str= (String)session.getAttribute("NAME");%>
    		<%String str1= (String)session.getAttribute("EMAIL");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String collegename=request.getParameter("college");
	String coursename=request.getParameter("course");
	String courseid=request.getParameter("courseid");
	String coid=request.getParameter("collegeid");
	
	int collegeid=Integer.parseInt(coid);
	
	Connection con=null;
	PreparedStatement pstm=null;
	int i;
	
	try{
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("insert into user_enroll values (?,?,?,?,?,?);");
		pstm.setString(1,str);
		pstm.setString(2,str1);
		pstm.setInt(3,collegeid);
		pstm.setString(4,collegename);
		pstm.setString(5,courseid);
		pstm.setString(6,coursename);
		i=pstm.executeUpdate();
		
		if(i!=0){
			response.sendRedirect("Afterpayview.jsp?");
			
		}
	}
	catch(Exception e) {}
	
%>

</body>
</html>