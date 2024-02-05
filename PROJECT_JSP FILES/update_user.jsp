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

<h1>Update Users</h1>
<hr>
<%
String uemail=request.getParameter("email");
String firstname=null;
String lastname=null;
String phno=null;
String gender=null;
String password=null;
String conpassword=null;
String term=null;
Connection con=null;
PreparedStatement pstm=null;
ResultSet rs=null;

try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from user where email=?;");
	pstm.setString(1,uemail);
	rs=pstm.executeQuery();
	
	while(rs.next()){
		firstname=rs.getString(1);
		lastname=rs.getString(2);
		phno=rs.getString(4);
		gender=rs.getString(5);
		password=rs.getString(6);
		conpassword=rs.getString(7);
		term=rs.getString(8);
		%>
	
<form action="update_userdata.jsp" method="post" >
<div id="form">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">First Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1"  name="fname" value="<%=firstname%>">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Last Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="lname" value="<%=lastname%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">email</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="uemail" value="<%=uemail%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Phone</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="phn" value="<%=phno%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Gender</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="gender" value="<%=gender%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password </label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="pass" value="<%=password%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="conpass" value="<%=conpassword%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Term</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="term" value="<%=term%>">
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