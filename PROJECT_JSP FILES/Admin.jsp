<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Profile</title>
  <link href="KIITM logo2.jpeg" rel="icon">
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display&family=EB+Garamond&family=Young+Serif&display=swap" rel="stylesheet">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <!-- Optional JavaScript; choose one of the two! -->
<!-- Option 1: Bootstrap Bundle with Popper -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>-->
<!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <style>
  @charset "UTF-8";
    *{
        padding: 0px;
        margin: 0px;
    }
    @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }

#lside{
	background-color:#131356;
	width: 20%;
	height: 300px;
	margin-left: 5%;
	float: left;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	color: #fff;
	font-family: myfont;
	text-align: center;
	padding-top: 15px;
}
#dside{
	background-color: #131356;
	width: 100%;
	margin-top:78.5%;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
}
#rside{
	width: 75%;
	height: 710px;
	float: right;
}

#rside h1{
	font-family: myfont;
    margin-left: 25%;
    color: #131356;
}
#clgicon{
	margin-left: 38%;
}
#dside p{
	font-size: 22px;
	margin-top: 20px;
}
#opt1 i,#opt2 i{
	padding-top: 14px;
	color: #131356;
}

#btn{
	width: 50%;
	height: 40px;
	border-radius: 20px;
	border: none;
}

#btn a,#opt1 a, #opt2 a{
text-decoration: none;
color: #131356;
font-family: 'Domine', serif;
}
#opt1{
	border: none;
	border-right: 2px solid #131356;
	border-bottom: 2px solid #131356;
	border-radius: 20px;
	margin-left: 60%;

}


#opt2{
border: none;
	border-right: 2px solid #131356;
	border-bottom: 2px solid #131356;
	border-radius: 20px;
	margin-left: 90%;
	
}


#admintable td{
	padding-bottom: 5%;
}
#pht{
	
	margin-top: 10%;
	border-radius:10px;
}

#admintable{
	margin-top: 7%;
	margin-left: 3%;
}

.card-body{
	text-align: center;
}
  
  </style>
  </head>
<body>
	
	<div id="main">
		<div id="lside">
		<h2>Welcome,<br>
		Admin</h2>
		<i class="fa fa-user-circle fa-5x" aria-hidden="true" id="adm_ico"></i><br><br><br>
		<a href="logout.jsp"><button id="btn">Log out</button></a>
		<div id="dside">
		<img src="KIITM logo2.jpeg" width="80" height="80" alt="" id="pht">
		<p><b>Copyright @2023 All rights reserved by:</b>
                            <a href="#" style="text-decoration: none;">
                                <strong class="text-warning">KIITM</strong>
                            </a>
        </p>
		</div>
		</div>
		<div id="rside">
		<h1>ADMIN PANEL</h1><hr>
		<table id="admintable">
			<tr>
				<td >
					<div class="card" style="width: 18rem;" id="opt1">
  					<i class="fa fa-university fa-4x" aria-hidden="true" id="clgicon"></i> 
  					<div class="card-body">
    				<p class="card-text"><a href="Add_clg.jsp">Add College</a></p>
  					</div>
					</div>
				</td>
				<td >
					<div class="card" style="width: 18rem;" id="opt2">
  					<i class="fa fa-eye fa-4x" aria-hidden="true" id="clgicon"></i>
  					<div class="card-body">
    				<p class="card-text"><a href="view_college.jsp"> View or Remove College</a></p>
  					</div>
					</div>
				</td>
			</tr>
			<tr>
				<td >
					<div class="card" style="width: 18rem;" id="opt1">
  					<i class="fa fa-book fa-4x" aria-hidden="true" id="clgicon"></i> 
  					<div class="card-body">
    				<p class="card-text"><a href="Add_Course.jsp">Add Course</a></p>
  					</div>
					</div>
				</td>
				<td>
					<div class="card" style="width: 18rem;" id="opt2">
  					<i class="fa fa-search fa-4x" aria-hidden="true" id="clgicon"></i> 
  					<div class="card-body">
    				<p class="card-text"><a href="View_Course.jsp">View or Remove Course</a></p>
  				</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="card" style="width: 18rem;margin-left: 65%;" id="opt2">
  					<i class="fa fa-users fa-4x" aria-hidden="true" id="clgicon"></i>
  					<div class="card-body">
    				<p class="card-text"><a href="View_user.jsp">View or Remove User</a></p>
  				</div>
					</div>
				</td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>
    

   
    
    
