<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String str=(String)session.getAttribute("NAME"); %>
<%String str1= (String)session.getAttribute("EMAIL");%>
<%@page import="java.sql.*" %>
<%@page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Student Profile</title>
<style>
 .modal-header, h4, .close {
    background-color: #131356;
    color:white !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-footer {
    background-color: #131356;
  }
  .btn{
  background-color: #131356;
  }
  
@font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Medium-Trial.otf);
        }
#lside{
	background-color: #131356;
	width: 18%;
	height: 250px;
	margin-left: 5%;
	float: left;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	 font-family: myfont;
}
#mside{
	width: 50%;
	height: 500px;
	float: left;
	margin-left: 2%;
}
#mside h1{
 font-family: myfont;
}
#rside{
	background-color: #131356;
	width: 18%;
	height: 370px;
	margin-right:5%;
	float: right;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
}
#foot{
width: 100%;
height:100px;
margin-top: 6%;
background-color: #131356;
float: left;
text-align: center;
padding-top: 5px;
}
#txt{
margin-left:32%;
font-size:25px;
color:white;
font-family: myfont;
}
#btn{
width:50%;
border-radius:10px;
margin-left:25%;
height:10%;
font-family: myfont;
margin-top: 10%;
}

#yr{
margin-left:32%;
color:white;
font-family: myfont;
}
#ay{
margin-left:11%;
color:white;
font-family: myfont;
}
#b1,#b2,#b3,#b4{
margin-left:11%;
width:18%;
margin-top:20%;
height:40%;
background-color: #131356;
color:white;
font-size:20px;
border-radius:20px;
font-family: myfont;
}

#if1,#if2,#if3,#if4{
margin-left:5%;
width:18%;
margin-top:20%;
height:40%;
background-color: #131356;
color:white;
font-size:20px;
border-radius:20px;
font-family: myfont;
}
#pht{
	margin-left: 28%;
	margin-top: 10%;
	border-radius:10px;
}
#f1,#f2,#f3{
color:white;
font-family: myfont;
}


#btn{
	width: 50%;
	height: 40px;
	border-radius: 20px;
	border: none;
	color: #131356;
}
button a{
	text-decoration:none;
	color: #fff;
}
button a:hover{
	text-decoration:none;
}



</style>
</head>

<body onload="startTime()">


<div id="lside">
<i class="fa fa-user" aria-hidden="true" style="color: white; font-size: 100px; margin-left:33%; margin-top:5%; "></i>
<h2 style="color:white; margin-left:5%; margin-top: 30px;">Welcome,<br>
    <% if(str!=null)
    {
    %>
    <%=str %>
    <%} %>

</h2>
</div>

<% 
Connection con=null;
PreparedStatement pstm=null;
ResultSet rs=null;
	try{
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("select * from user_enroll where user_email=?;");
		pstm.setString(1,str1);
		rs=pstm.executeQuery();
		if(rs.next()){
%>
<div id="mside">
<h1 style=" color:	#131356; text-align: center;">STUDENT DASHBOARD</h1><hr style=" border-top: 1px solid grey;">
<br>
<button type="button" class="btn btn-outline-primary" id="if1"><a href="Student_info.jsp">Student<br>info.</a></button>
<button type="button" class="btn btn-outline-primary" id="if2"><a href="Student_Document.jsp">Documents</a></button>
<button type="button" class="btn btn-outline-primary" id="if3"><a href="Student_Exams.jsp">Exams</a></button>
 <button type="button" class="btn btn-outline-primary" id="if4"><a href="Afterpayview.jsp">Applied<br> College</a></button>
 </div>
	  <%} else{%>

<div id="mside">
<h1 style=" color:	#131356; text-align: center;">STUDENT DASHBOARD</h1><hr style=" border-top: 1px solid grey;">
<br>
<button type="button" class="btn btn-outline-primary" id="b1"><a href="Student_info.jsp">Student<br>info.</a></button>
<button type="button" class="btn btn-outline-primary" id="b2"><a href="Student_Document.jsp">Documents</a></button>
<button type="button" class="btn btn-outline-primary" id="b3"><a href="Student_Exams.jsp">Exams</a></button>
</div>
		  
	<%   }
}
	catch(Exception e) {}
	
%>


<div id="rside">
<h3 id="ay">ACADEMIC YEAR</h3>
<h3 id="yr">2023-24</h3>
<div id="txt"></div>
<script>
function startTime() {
  const today = new Date();
  let h = today.getHours();
  let m = today.getMinutes();
  let s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('txt').innerHTML =  h + ":" + m + ":" + s;
  setTimeout(startTime, 1000);
}
function checkTime(i) {
  if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
  return i;
}
</script>
<br><a href="body.jsp"><button id="btn" onclick="history.back()">Home</button></a><br>
<br><a href="logout.jsp"><button id="btn">Logout</button></a>
</div>
<div id="foot">
<h5 id="f1"><b>For any payment related issue call: +9144445555</b></h5>
<h5 id="f2"><b>For any other issue call: +9144448888   Or mail on <a href="#">@Universityhelpdesk.com</a></b></h5>
<h5 id="f3"><b>Copyright @2023 All rights reserved by: KIITM</b></h5>
</div>
</body>
</html>

