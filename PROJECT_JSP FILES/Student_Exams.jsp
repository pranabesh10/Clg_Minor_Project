<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="student_sidebar.jsp"/>
          <%@ page import="java.sql.*" %>
    <%@ page import="org.misc.ConnectionProvider" %>
    
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
<style>

	#exams p{
	font-family: 'Domine', serif;
	}
	
	#exams a{
	text-decoration: none;
	color: #131356;
	font-family: 'Domine', serif;
	}
	
	#exams a:hover{
		color: #646f7d;
	}
	
	.col-md-3{
		text-align:center;
	}
</style>
</head>
<body>
<div id="empty"></div>
<div id="stutitle"><h2>Upcoming Exams</h2><hr></div>
<div class="Container" id="form">
	<form action="" method="">
 	<div class="row1"><h3>Upcoming Exams Details</h3></div>
 	<div class="row g-4">
	  	<div class="col-md-3">
	    <label class="form-label">Name of the Exam</label>
	  	</div>
	  	<div class="col-md-3">
	    <label class="form-label">Date of Registration</label>
	 	</div>
	 	<div class="col-md-3">
	    <label class="form-label">Date of Exam</label>
	 	</div>
	    <div class="col-md-3">
	    <label class="form-label">Website</label>
	  	</div>
  </div>
  
  <%
  String exam=null;
  String rdate=null;
  String edate=null;
  String web=null;
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from exams");
	rs=pstm.executeQuery();
	while(rs.next()){
		exam=rs.getString(1);
		rdate=rs.getString(2);
		edate=rs.getString(3);
		web=rs.getString(4);
  %>
  <hr>
  <div class="row g-4" >
	  	<div class="col-md-3" id="exams">
	    <p><%=exam %></p>
	  	</div>
	  	<div class="col-md-3" id="exams">
	    <p><%=rdate %></p>
	 	</div>
	 	<div class="col-md-3" id="exams">
	    <p ><%=edate %></p>
	 	</div>
	    <div class="col-md-3" id="exams">
	    <a href="<%=web %>">Apply Here</a>
	  	</div>
  </div>
  
  <% }
  }
  
  catch(Exception e){}
  
  
  %>
 	</form>
 	</div>

</body>
</html>