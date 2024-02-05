<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <jsp:include page="front_header.jsp"/>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Facilities_NCC</title>
  
  <link rel="icon" type="image/x-icon" href="">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>

  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,500;1,300&display=swap');
	
	.box{
		margin-bottom:50px;
		border-bottom: 2px solid grey;
		border-left: 2px solid grey;
		border-right: 2px solid grey;
	}
	
	.image{
		width:91%;
		margin-bottom:80px;	
		box-shadow:0 0 5px 1px black;
	}
	
	.circle{
		background-color:#80c6ff;
		border-radius:100px;
		margin-right:60px;
		height:182px;
		padding:50px;
		text-align:center;
	}
	
	.circle a:hover{
		color:#e7dba7;
	}
	
  </style>  
  
  
<body>

<div class="row p-4">
<br>
</div>


<div class="container">
	<a href="#"><img src="images/NCC.jpg" class="image"></a>
</div>


<div class="container" style="margin:auto; margin-bottom:80px;">
	<div class="row">
	
		<div class="col-md-2 circle" style="margin-left:100px;">
		<a href="#"><p> <i class="fa-solid fa-building-columns"></i>
		<br> <b> Adventures & Expedition every Year </b> </p></a>
		</div>
		
		<div class="col-md-2 circle">
		<a href="#"><p> <i class="fa-solid fa-medal"></i>
		<br> <b> Best Cadets Medals every year </b> </p></a>
		</div>
		
		<div class="col-md-2 circle">
		<a href="#"><p> <i class="fa-solid fa-hand-point-down"></i>
		<br> <b> Provides upto 8 credit points </b> </p></a>
		</div>
		
		<div class="col-md-2 circle">
		<a href="#"><p> <i class="fa-solid fa-trophy"></i>
		<br> <b> Best Institutional Trophy every year </b> </p></a>
		</div>
				
	</div>
</div>


<div class="container box" style="background-color:#e7dba7">
	<div class="row">
	
<h3><b>NCC - National Cadet Corps</b></h3>
<p>Our University NCC devotedly trains the cadets to imbibe and be a responsible citizen 
of the country. Our University has NCC Army Wing open for both male and female students.</p>

	</div>
</div>


<div class="container box" style="background-color:#b8edff;">
	<div class="row">
	
<h3><b>Aim of NCC</b></h3>
<p>The ‘Aims’ of the NCC laid out in 1988 have stood the test of time and continue to meet the 
requirements expected of it in the current socio–economic scenario of the country. The NCC aims 
at developing character, comradeship, discipline, a secular outlook, the spirit of adventure and 
ideals of selfless service amongst young citizens. Further, it aims at creating a pool of 
organized, trained and motivated youth with leadership qualities in all walks of life, who will 
serve the Nation regardless of which career they choose. Needless to say, the NCC also provides 
an environment conducive to motivating young Indians to join the armed forces.</p>

	</div>
</div>


<div class="container box" style="background-color:#aebf82">
	<div class="row">
	
<h3><b>Pledge</b></h3>
<p>We the cadets of the National Cadet Corps, do solemnly pledge that we shall always 
uphold the unity of India.
<br>
We resolve to be disciplined and responsible citizens of our nation.
<br>
We shall undertake positive community service in the spirit of selflessness and concern for 
our fellow beings.</p>

	</div>
</div>

</body>
</html>

<jsp:include page="footer.html"/>
