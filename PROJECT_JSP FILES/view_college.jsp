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
	<h1>Colleges under KIITM</h1>
	<hr>
	<br>
	<table class="table" style="background-color: #131356;">
  
    <tr>
      <th scope="col">College id</th>
      <th scope="col">College Name</th>
      <th scope="col">College Location</th>
      <th scope="col">Highlighted Courses</th>
      <th scope="col">Rank</th>
      <th scope="col">Web Site</th>
      <th scope="col">AICTE</th>
      <th scope="col">UGC</th>
      <th scope="col">Images</th>
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
	pstm = con.prepareStatement("select * from college");
	rs=pstm.executeQuery();
	
	while(rs.next()){
		id=rs.getString(1);
		name=rs.getString(2);
		loc=rs.getString(3);
		hcourse=rs.getString(4);
		image=rs.getString(5);
		rank=rs.getString(6);
		web=rs.getString(7);
		ai=rs.getString(8);
		ugc=rs.getString(9);
		
		
		out.println("<tr>");
		
		out.println("<td>");
		out.println(id);
		out.println("</td>");
		
		out.println("<td>");
		out.println(name);
		out.println("</td>");
		
		out.println("<td>");
		out.println(loc);
		out.println("</td>");
		
		out.println("<td>");
		out.println(hcourse);
		out.println("</td>");
		
		out.println("<td>");
		out.println(rank);
		out.println("</td>");
		
		out.println("<td>");
		out.println(web);
		out.println("</td>");
		
		out.println("<td>");
		out.println(ai);
		out.println("</td>");
		
		out.println("<td>");
		out.println(ugc);
		out.println("</td>");
		
		out.println("<td>");
		out.println(image);
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='Update_college.jsp?collegeid=" + id + "'><input type='button' class='btn btn-primary' value='Update'></a>");
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='Delete_college.jsp?collegeid=" + id + "'><input type='button' class='btn btn-danger' value='Delete'></a>");
		out.println("</td>");
		
		out.println("</tr>");
		
	}
  }
  
  catch(Exception e){}
  
  
  %>
  </table>
</body>
</html>