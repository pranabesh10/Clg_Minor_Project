<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*" %>
    	<%@page import="org.misc.ConnectionProvider" %>
    	 <%String str= (String)session.getAttribute("NAME");%>
    		<%String str1= (String)session.getAttribute("EMAIL");%>
        <jsp:include page="student_sidebar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="student.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
<style>
	#form1{
		font-size: 18px;
		width: 70%;
		margin-left: 25%;
		background-color: #dcdcde;
		border-radius: 15px;
		margin-bottom: 4%;
		font-family: 'Domine', serif;
		padding: 3%;
		}
	#form1 span{
		color: #038f1a;
	}
</style>
</head>
<body>
<div id="empty"></div>
<div id="stutitle"><h2>Applied College</h2><hr></div>
<div class="Container" id="form1">
<%
	String collegename=null;
	String coursename=null;
	
	Connection con=null;
	PreparedStatement pstm=null;
	ResultSet rs=null;
	try{
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("select college_name, course_name from user_enroll where user_email=?;");
		pstm.setString(1,str1);
		rs=pstm.executeQuery();
		rs.next();
		collegename=rs.getString(1);
		coursename=rs.getString(2);
	
%>
<span>Congratulations <%=str %>,</span> we are thrilled to announce your have been successfully enrolled into <%=collegename %> for <%=coursename %> .<br><br> For now, just sit back and relax.<br><br> You will be notified here for any future updates. 
</div>
<%}
	catch(Exception e) {}
	
%>
</body>
</html>