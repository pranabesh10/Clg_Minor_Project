<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String str=(String)session.getAttribute("NAME"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    body{
        font-family: 'Domine', serif;
     }

    .nav{
        font-family: 'Domine', serif;
        font-size: 21px;
        margin-top: 15px;
        width: 75%;
        float: right;
		border-bottom: 2.5px solid #131357;

     }
     
     .container1{
		 width: 100%;
		 position: relative;
	 }
    
     .nav-item{
        margin-right: 30px;
     }

    .nav-link{
        position: relative;
        left: -20px;
        transition: 0.5s;
        color: #131357;
    }
    

    .nav-item:hover #navtitle{
        transition: 0.5s;
        left: 0;
        color: #8e8787;
        box-shadow: 0px -2px #131357;
        text-decoration: none;
    }

    
    .navbar{
      width: 20%;
      float: left;
      margin-left: 2%;
    }
    #navtitle{
    color: #131356;
    }
  
  
    .cred{
      margin-right: 4.5%;
      height: 45px;
      border-bottom-left-radius: 15px;
      border-bottom-right-radius: 15px;
      width: 21%;
      float: right;
      background-color: #131357;
      font-family: 'Domine', serif;
    }

    .cred li{
      display: inline-block;
    }

    .cred li a, .cred li span{
      display: inline-block;
      padding: 0em  1.5em;
      text-decoration: none;
      font-weight: 400;
      line-height: 45px;
    }

    .cred li a{
      color: #fff;
      font-size: 18px ;
    }

    .cred li:hover a, .cred li span{
      background: #fff;
      color:#131357;
      transition: all ease-out 0.9s;
    }
    
    .login{
    	margin-right: 7%;
      	width: 13%;
    }
    
   
    #drop{
      z-index: 1;
      margin-top: 2%;
      margin-left: 0;
    }

    .dropdown-menu:after{
      content:''; 
      position: absolute;
      top: 0;
      right: 20%;
      margin-left: -15px;
      margin-top:-15px; /* Set margin equal to border px */
      z-index:1;
      border-bottom: solid 15px #131357; 
      border-left: solid 15px transparent; 
      border-right: solid 15px transparent; 
    }
    

    .dropdown-item{
      display: block;
    }

    .dropdown-menu a:hover {
      background-image: linear-gradient(to right, rgb(214, 214, 214), #53538a);
    }

    .dropdown:hover .dropdown-menu {
      display: block;
      transition: ease-in 1s;
    }
    
    .nav-item h5{
	    text-align:center;
	    font-family: 'Domine', serif;
	    
	    
    }
    
    #profile{
    	float: right;
    	margin-right: 20px;
    	margin-top: 5px;
    	color: #131356;
    
    }
  </style>
</head>
<body>
  <%if(str!=null)
        	{
        	%>
        	<a href="student_profile.jsp"><i class="fa fa-user-circle" aria-hidden="true" style="font-size: 40px;" id="profile"></i></a>
  <div class="login cred">
   
    <ul>
    	<li><a href="logout.jsp">Log out</a></li>
    	</ul>
   </div>
  

    <%}else
        {%>
    <div class="cred">
    <ul>
        <li><a href="SignIn.jsp">Sign Up</a></li>
        <li><a href="login.jsp">Log In</a></li>
        
    </ul>
</div>
  <% }%>
	<div class="container1">
 
<nav class="navbar">
    <a class="navbar-brand" href="body.jsp">
      <img src="KIITM logo.jpeg" width="90" height="90" class="d-inline-block align-top" alt="" id="logo"> 
      <img src="KIITM.png" width="180" height="80" class="d-inline-block align-top" alt="">
       </a>
  </nav>
	
    <ul class="nav justify-content-end">
     <%if(str!=null){%>
     <li class="nav-item">
          <h5 style="font-size: 18px; color: #50667f;" class="nav-link"><i class='fas fa-user-check' style='font-size:20px; color: #131357;'></i>&nbsp;&nbsp;Hello, &nbsp;<%=str %></h5>
        </li>
        <%}%>
        <li class="nav-item">
          <a class="nav-link" href="body.jsp" id="navtitle"><i class="fa fa-university" style="font-size:24px"></i>&nbsp;University</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="" id="navtitle"><i class="fa fa-book" style="font-size:24px"></i>&nbsp;Academics</a>
          <div class="dropdown-menu" id="drop">
            <a class="dropdown-item" href="Academic_calendar.jsp">Academic Calendar</a>
          </div>
        </li>
        <li class="nav-item dropdown" >
          <a class="nav-link" href="#" id="navtitle"><i class="fa fa-id-badge" style="font-size:24px"></i>&nbsp;Admission</a>
          <div class="dropdown-menu" id="drop">
            <a class="dropdown-item" href="index.jsp">Academics</a>
            <a class="dropdown-item" href="index_scholarship.jsp">About Scholarship</a>
            <a class="dropdown-item" href="index_fees.jsp">Fee Structure</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="navtitle"><i class="fa fa-gift" style="font-size:24px"></i>&nbsp;Facilities</a>
          <div class="dropdown-menu" id="drop">
            <a class="dropdown-item" href="F_Gallery.jsp">Gallery</a>
            <a class="dropdown-item" href="F_Library.jsp">Library</a>
            <a class="dropdown-item" href="F_Hostel.jsp">Hostel</a>
            <a class="dropdown-item" href="F_Sports.jsp">Sports & Games</a>
            <a class="dropdown-item" href="F_IIC.jsp">IIC</a>
            <a class="dropdown-item" href="F_NSS.jsp">NSS</a>
            <a class="dropdown-item" href="F_Infrastructure.jsp">Academic<br>Infrastructure</a>
          </div>
        </li>
      </ul>

     </div> 

</body>
</html>

