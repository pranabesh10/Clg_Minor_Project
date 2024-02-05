<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>Add Course</h1>
<hr>
<form action="Course" method="post">
<div id="form">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Course Id:</label>
    <input type="text" class="form-control" id="exampleInputEmail1"  name="courseid">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Course Name:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="coursename">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Payment Amount for Each Semester:</label>
    <input type="text" class="form-control" id="sempay" name="sempay">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label"> Number of Semester:</label>
    <input type="text" class="form-control" id="nosem" name="nosem">
  </div>
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label"> Total Payment Amount:</label>
    <input type="text" class="form-control" id="totpay" name="totpay" >
  </div>
   <div class="mb-3" style="margin-top: 3%;">
  <button type="submit" class="btn btn-light">Submit</button>
  </div>
  </div>
</form>
<script>

</script>
</body>
</html>