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
<h1>Add College</h1>
<hr>
<form action="College" method="post" >
<div id="form">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">College Id:</label>
    <input type="text" class="form-control" id="exampleInputEmail1"  name="cid">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">College Name:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cname">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">College Location:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cloc">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Highlighted Courses:</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="ccourse">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Rank: </label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="crank">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Web Site: </label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cweb">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">AICTE: </label><br>
    <select name="cai" id="">
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
    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cimg">
  </div>
  <button type="submit" class="btn btn-light">Submit</button>
  </div>
</form>
</body>
</html>