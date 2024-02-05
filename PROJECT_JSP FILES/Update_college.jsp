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
<h1>Update College</h1>
<hr>
<%
  String cid=request.getParameter("collegeid");

  String name=null;
  String loc=null;
  String hcourse=null;
  String rank=null;
  String image=null;
  String web=null;
  String ai=null;
  String ugc=null;
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from college where id=?");
	pstm.setString(1,cid);
	rs=pstm.executeQuery();
	
	while(rs.next()){
		
		name=rs.getString(2);
		loc=rs.getString(3);
		hcourse=rs.getString(4);
		image=rs.getString(5);
		rank=rs.getString(6);
		web=rs.getString(7);
		ai=rs.getString(8);
		ugc=rs.getString(9);
		%>
<form action="Update_collegedata.jsp" method="post" >
<div id="form">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">College Id:</label>
    <input type="text" class="form-control" id="exampleInputEmail1"  name="cid" value="<%=cid%>">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">College Name:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cname" value="<%=name%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">College Location:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cloc" value="<%=loc%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Highlighted Courses:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="ccourse" value="<%=hcourse%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Rank: </label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="crank" value="<%=rank%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Web Site: </label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cweb" value="<%=web%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">AICTE: </label><br>
    <select name="cai" id="" >
                    <option value="Accredited">Accredited</option>
                    <option value="Non-Accredited">Non-Accredited</option>
                </select>
  </div>
     <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">UGC: </label><br>
    <select name="cugc" id="">
                    <option value="Accredited">Accredited</option>
                    <option value="Non-Accredited">Non-Accredited</option>
                </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Example picture input</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cimg" value="<%=image%>">
  </div>
  <button type="submit" class="btn btn-light">Submit</button>
  </div>
</form>
	<% }
  }
  
  catch(Exception e){}
  
  
  %>
</body>
</html>