<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
    @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Medium-Trial.otf);
        }
     h1{
     font-family: myfont;
     text-align: center;
     }
    </style>
</head>
<body>
<br>
	<h1>Courses under KIITM</h1>
	<hr>
	<br>
	<table class="table">
  
    <tr>
      <th scope="col">Course id</th>
      <th scope="col">Course Name</th>
      <th scope="col">Semester Payment</th>
      <th scope="col">Number of Course</th>
      <th scope="col">Total Payment</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
 
 <%
  String msg=request.getParameter("update");
  if("valid".equals(msg))
  {%>
	 <center><font color="#038f1a" size="5">Successfully Updated</font></center> 
  <% }%>
  
  <%
  if("invalid".equals(msg))
  {%>
	  <center><font color="#038f1a+" size="5">Something went wrong! Try Again!</font></center>

    <%} %>
  
  <%
  String id=null;
  String name=null;
  
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from course");
	rs=pstm.executeQuery();
	
	while(rs.next()){
		id=rs.getString(1);
		name=rs.getString(2);
		
		
		out.println("<tr>");
		
		out.println("<td>");
		out.println(id);
		out.println("</td>");
		
		out.println("<td>");
		out.println(name);
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='update_course.jsp?cid=" + id + "'><input type='button' class='btn btn-primary' value='Update'></a>");
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='Delete_course.jsp?courseid=" + id + "'><input type='button' class='btn btn-danger' value='Delete'></a>");
		out.println("</td>");
		
		out.println("</tr>");
		
	}
  }
  
  catch(Exception e){}
  
  
  %>
  </table>
</body>
</html>