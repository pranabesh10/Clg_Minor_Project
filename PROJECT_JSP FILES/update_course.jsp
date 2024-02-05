<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
 @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Medium-Trial.otf);
        }
        body{
        background-color: #131356;
        }
   h1{
     font-family: myfont;
     text-align: center;
     color: white;
     }
     #form{
     	margin-left: 18%;
     
     }
     #form label{
     	color:white;
     }
     #form input{
     	width: 80%;
     }
</style>
</head>
<body>
<h1>Update Course</h1>
	<hr>
	<br>
<%
  String courseid=request.getParameter("cid");
  String coursename=null;
  String sempay=null;
  String nosem=null;
  String yrpay=null;
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from course where course_id=?");
	pstm.setString(1,courseid);
	rs=pstm.executeQuery();
	
	while(rs.next()){
		coursename=rs.getString(2);
		sempay=rs.getString(3);
		nosem=rs.getString(4);
		yrpay=rs.getString(5);
		%>
	<form action="update_coursedata.jsp" method="post" >
<div id="form">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Course ID</label>
    <input type="text" class="form-control" id="exampleInputEmail1"  name="c_id" value="<%=courseid%>">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Course Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="c_name" value="<%=coursename%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Semester pay</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="sem_pay" value="<%=sempay%>">
  </div>
  <div class="mb-3">
  <label for="exampleInputPassword1" class="form-label">Yearly pay</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="nosem" value="<%=nosem%>">
  </div>
  <div class="mb-3">
  <label for="exampleInputPassword1" class="form-label">Yearly pay</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="yr_pay" value="<%=yrpay%>">
  </div>
  <button type="submit" class="btn btn-light" style="margin-top: 3%;">Submit</button>
  </div>
</form>
	<% }
  }
  catch(Exception e){}
%>

</body>
</html>