<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <jsp:include page="student_sidebar.jsp"/>
      <%@ page import="java.sql.*" %>
    <%@ page import="org.misc.ConnectionProvider" %>
   <%String str1= (String)session.getAttribute("EMAIL"); %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="student.css">
<style>
    
    #form table{
		width: 85%;
		margin-left: 7.5%;
		height: 100px;
		
	}
	.btn{
		 font-family: 'Domine', serif;
	}
</style>
</head>
<body>
<div id="empty"></div>
<div id="stutitle"><h2>Student Documents</h2><hr></div>
<div class="Container" id="form">
	<form action="Document" method="post">
 	<div class="row1"><h3>Personal Documents</h3></div>
 	<div class="row g-2">
  <div class="col-md-4">
    <label class="form-label">Name of the Document</label>
     <select name="udoc" id="">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
                    <option value="Aadhar Card">Aadhar Card</option>
                    <option value="Pan Card">Pan Card</option>
                    <option value="Marksheet of class 10">Mark Sheet of class 10</option>
                    <option value="Marksheet of class 12">Mark Sheet of class 12</option>
                    <option value="Admit of class 10">Admit of class 10</option>
                    <option value="Admit of class 12">Admit of class 12</option>
                    <option value="School leaving certificate">School leaving certificate</option>
                </select>
  </div>
  <div class="col-md-4">
    <label for="inputName2" class="form-label">Upload Document</label>
     <input type="file" class="form-control" id="exampleFormControlFile1" name="docimg">
  </div>
  </div>
    <div class="row" style="text-align: center;">
  <div class="col-md-12">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  </div>
  </form>
  
  <table class="table">
  
    <tr>
      <th scope="col">Name of the document</th>
      <th scope="col">Image of the document</th>
      <th scope="col"></th>
      <th scope="col"></th>
    
    </tr>
 
  
  <%
  String u_email=null;
  String doc=null;
  String docimg=null;
  Connection con=null;
  PreparedStatement pstm=null;
  ResultSet rs=null;
  
  try{
	  con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from documents where user_email=?");
	pstm.setString(1, str1);
	rs=pstm.executeQuery();
	
	
	
	while(rs.next()){
		doc=rs.getString(1);
		docimg=rs.getString(2);

		out.println("<tr>");
		
		out.println("<td>");
		out.println(doc);
		out.println("</td>");
		
		out.println("<td>");
		out.println(docimg);
		out.println("</td>");
		
		out.println("<td>");
		out.println("<i class='fa fa-check' aria-hidden='true' style='color:green; font-size:20px'></i> Succesfully Uploaded");
		out.println("</td>");
		
		out.println("<td>");
		out.println("<a href='Delete_doc.jsp?docname=" + doc + "'><input type='button' class='btn btn-light' value='Delete' style='background-color: #131356; color: #fff;'></a>");
		out.println("</td>");
	}
  }
  
  catch(Exception e){}
  
  
  %>
  
 
  </table>
  </div>
</body>
</html>