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
	<h1>List of Users</h1>
	<hr>
	<br>
	<table class="table" style="background-color: #131356;">
  
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email Address</th>
      <th scope="col">Phone number</th>
      <th scope="col">Gender</th>
      <th scope="col">Password</th>
      <th scope="col">Confirm Password</th>
      <th scope="col">Term</th>
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
  String fname=null;
  String lname=null;
  String email=null;
  String phn=null;
  String gen=null;
  String pass=null;
  String conpass=null;
  String term=null;
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from user");
	rs=pstm.executeQuery();
	
	while(rs.next()){
		fname=rs.getString(1);
		lname=rs.getString(2);
		email=rs.getString(3);
		phn=rs.getString(4);
		gen=rs.getString(5);
		pass=rs.getString(6);
		conpass=rs.getString(7);
		term=rs.getString(8);
		
		
		
		out.println("<tr>");
		
		out.println("<td>");
		out.println(fname);
		out.println("</td>");
		
		out.println("<td>");
		out.println(lname);
		out.println("</td>");
		
		out.println("<td>");
		out.println(email);
		out.println("</td>");
		
		out.println("<td>");
		out.println(phn);
		out.println("</td>");
		
		out.println("<td>");
		out.println(gen);
		out.println("</td>");
		
		out.println("<td>");
		out.println(pass);
		out.println("</td>");
		
		out.println("<td>");
		out.println(conpass);
		out.println("</td>");
		
		out.println("<td>");
		out.println(term);
		out.println("</td>");
		
		
		out.println("<td>");
		out.println("<a href='update_user.jsp?email=" + email + "'><input type='button' class='btn btn-primary' value='Update'></a>");
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='Delete_user.jsp?email=" + email + "'><input type='button' class='btn btn-danger' value='Delete'></a>");
		out.println("</td>");
		
		out.println("</tr>");
		
	}
  }
  
  catch(Exception e){}
  
  
  %>
  </table>

</body>
</html>