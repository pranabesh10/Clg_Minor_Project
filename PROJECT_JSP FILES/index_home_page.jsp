<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %>
    <%@ page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mini_MAKAUT</title>

<link rel="stylesheet" href="css/style.css">

<!-- To link the CSS of Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style>
	

 @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }

    *{
        padding: 0px;
        margin: 0px;
    }

.courses{
	font-family: myfont;
    font-size: 55px;
    font-weight: 400;
    color: #131357;
    letter-spacing: 0.2px;
    margin-top: 3%;
    text-align: center;
    margin-bottom: 3%;
}


#coursecon{
	width: 100%;
	height: 250px;
	background-color: #cad3db;
	
}
#coursecon1{
	width: 100%;
	height: 250px;
	background-color: #99adbf;
}
#box1 {
	height: 250px;
  overflow: hidden;

}
.sub-box {
  top: 100%;
  position: relative;
  transition: all 0.2s ease-out;
 overflow: scroll;
  height: 100%;
}
#ug-title{
	margin-top: 15%;
	 color: transparent;
  background-image: linear-gradient(90deg, #646f7d 50%, black 50%);
  background-position:100%;
  background-size:200% 100%;
  background-clip:text;
  -webkit-background-clip:text;
  
  transition: background-position 0.5s ease;
}
#ug-title:hover{
	background-position:0;

}
#box1:hover > .sub-box{
  top: 15%;
}
#coursesug{
	background-color: red;
}
 .ug{
	 margin-left: 7%;
	 font-size: 20px;
	 color: black;
	
 }
 .coursesinfo{
	 margin-top: 8%;
    padding-left: 5px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-family: 'Libre Baskerville', serif;
    font-size: 18px;
    font-weight: 400;
    text-align: justify;
    width: 90%;
    margin-left: 5%;
 }
.sub-box a{
	text-decoration: none;
}
.ug:hover{
	color: #646f7d;
}
  

    /* Box1 & Box2 Hover Section */

   
    
    

</style>
</head>
<body>
<% 
	String id=null;
  String name=null;
  Connection con=null;
  PreparedStatement pstm=null;
  PreparedStatement pstm2=null;
  ResultSet rs=null;
  
  %>


    <div class="courses">
    <h1 class="title"><b>Courses Offered</b></h1>
    </div>
    <div class="coursesinfo">
		<p>At this university, the academic landscape is a rich tapestry woven with a diverse array of courses designed to cater to the intellectual curiosity of every student. 
			Whether you're inclined towards the sciences, humanities, or any discipline in between, this institution fosters an environment where learning knows no bounds. 
			<br><br>Let's take a look at these courses
		</p>
	</div>


	<div class="container" id="coursecon">
	  <div class="row">
	    <div class="col-md-6" style="text-align: center;">
	      <h1 id="ug-title">Courses under UG</h1>
	      <svg fill="#000000" width="80px" height="80px" viewBox="0 0 24 24" id="right-arrow" xmlns="http://www.w3.org/2000/svg" class="icon line" transform="matrix(1, 0, 0, 1, 0, 0)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path id="primary" d="M3,12H21m-3,3,3-3L18,9" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width:0.696;"></path></g></svg>
	      </div>
	    <div class="col-md-6" id="box1">
	      	<div class="sub-box">
					      <svg width="54.08" height="59.04" viewBox="0 0 54.08 59.04" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 13.44 59.04 L 13.44 58.88 A 10.665 10.665 0 0 1 11.516 56.128 C 9.938 52.906 9.438 48.052 12 41.2 L 13.36 37.52 L 32.08 37.52 L 34.56 44.32 C 36.88 50.72 36.48 55.92 34.4 58.88 L 34.4 59.04 L 54.08 59.04 L 54.08 58.88 A 25.197 25.197 0 0 1 51 54.743 C 49.514 52.282 48.151 49.246 46.64 45.2 L 30 0 L 24.48 0 L 8 44.56 A 118.934 118.934 0 0 1 7.294 46.438 C 5.239 51.757 3.232 55.576 0 58.88 L 0 59.04 L 13.44 59.04 Z M 14.32 34.96 L 22.8 11.92 L 31.12 34.96 L 14.32 34.96 Z" vector-effect="non-scaling-stroke"/></g></svg>
					      <br><br>
							<a href="college_cards.jsp?course=BSc Animation"><p class="ug">B.Sc. in Animation, Film Making, Graphics & VFX</p></a>
							<a href=""><p class="ug">B.Sc. in Artificial Intelligence</p></a>
					 		<br>
					      <svg width="46.809" height="58.803" viewBox="0 0 46.809 58.803" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 0.241 L 0 0.401 C 2.202 5.08 3.102 7.925 3.31 13.312 A 73.841 73.841 0 0 1 3.36 16.161 L 3.36 42.881 A 70.134 70.134 0 0 1 3.297 46.025 C 3.068 51.116 2.179 53.988 0.075 58.481 A 92.079 92.079 0 0 1 0 58.641 L 0 58.801 L 23.92 58.801 A 44.861 44.861 0 0 0 31.686 58.182 C 38.129 57.046 42.315 54.414 44.613 50.831 A 14.631 14.631 0 0 0 46.8 42.801 C 46.8 36.913 43.879 31.597 36.197 29.082 A 28.739 28.739 0 0 0 31.52 28.001 A 23.146 23.146 0 0 0 36.447 26.108 C 38.291 25.125 39.745 23.951 40.865 22.641 A 13.559 13.559 0 0 0 44 13.601 C 44 6.881 40.16 -0.079 23.52 0.001 A 231.892 231.892 0 0 0 21.535 0.012 C 16.746 0.054 8.668 0.211 1.86 0.238 A 479.725 479.725 0 0 1 0 0.241 Z M 14.88 55.601 L 14.88 29.601 L 22.8 29.601 A 14.008 14.008 0 0 1 27.459 30.324 C 32.468 32.083 34.56 36.885 34.56 42.881 A 16.434 16.434 0 0 1 33.361 49.364 C 31.523 53.653 27.541 56.321 21.2 56.321 A 27.97 27.97 0 0 1 18.575 56.199 C 17.719 56.119 16.919 56.003 16.171 55.866 A 30.621 30.621 0 0 1 14.88 55.601 Z M 14.88 27.041 L 14.88 3.201 C 16.206 2.886 17.681 2.67 19.462 2.593 A 34.645 34.645 0 0 1 20.96 2.561 A 15.521 15.521 0 0 1 25.493 3.177 C 29.349 4.353 31.591 7.142 32.387 10.924 A 16.507 16.507 0 0 1 32.72 14.321 C 32.72 19.778 30.593 25.622 24.49 26.82 A 12.315 12.315 0 0 1 22.24 27.041 L 14.88 27.041 Z" vector-effect="non-scaling-stroke"/></g></svg>
					      <br><br>
							<a href="college_cards.jsp?course=BBA"><p class="ug">Bachelor's of Business Administration</p></a>
							<a href=""><p class="ug">B.Sc. in Biotechnology</p></a>
							<br>
						<svg width="54.964" height="60.962" viewBox="0 0 54.964 60.962" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 54.964 39.202 L 53.764 38.882 A 162.831 162.831 0 0 1 52.345 41.501 C 46.71 51.658 41.195 58.402 31.524 58.402 A 16.257 16.257 0 0 1 16.193 48.683 C 14.815 45.921 13.85 42.643 13.294 38.946 A 54.906 54.906 0 0 1 12.724 30.802 A 55.641 55.641 0 0 1 13.856 18.993 C 15.904 9.649 20.879 3.396 29.944 2.639 A 22.851 22.851 0 0 1 31.844 2.562 A 18.236 18.236 0 0 1 37.911 3.509 C 43.25 5.361 47.528 10.031 53.524 18.402 L 54.644 18.082 L 52.964 3.442 C 48.404 1.922 41.444 0.002 32.724 0.002 A 34.937 34.937 0 0 0 15.075 4.562 A 29.954 29.954 0 0 0 0.004 30.802 A 29.633 29.633 0 0 0 7.736 51.262 C 12.115 55.979 18.154 59.246 25.325 60.45 A 37.921 37.921 0 0 0 31.604 60.962 A 42.543 42.543 0 0 0 38.325 60.419 C 45.44 59.28 50.829 56.647 52.78 55.452 A 8.814 8.814 0 0 0 53.284 55.122 L 54.964 39.202 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href="college_cards.jsp?course=BCA"><p class="ug">Bachelor's of Computer Application</p></a>
							<a href="college_cards.jsp?course= Computer Science and Engineering"><p class="ug">Btech. in Computer Science & Engineering</p></a>
							<br>
						<svg width="56.245" height="58.887" viewBox="0 0 56.245 58.887" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 58.884 L 22.88 58.884 A 48.117 48.117 0 0 0 36.289 57.15 C 49.159 53.41 56.24 43.739 56.24 29.284 A 32.247 32.247 0 0 0 53.712 16.168 C 50.573 9.058 44.612 4.205 36.417 1.786 A 47.894 47.894 0 0 0 22.88 0.004 C 13.402 0.004 10.302 0.254 3.076 0.312 A 382.621 382.621 0 0 1 0 0.324 L 0 0.484 C 2.243 4.759 3.135 7.377 3.321 12.426 A 62.41 62.41 0 0 1 3.36 14.724 L 3.36 44.484 C 3.36 50.995 2.591 53.736 0.147 58.441 A 77.101 77.101 0 0 1 0 58.724 L 0 58.884 Z M 22.88 56.244 L 14.88 56.244 L 14.88 2.804 A 483.588 483.588 0 0 1 16.04 2.774 C 18.84 2.705 22.13 2.644 22.48 2.644 A 25.925 25.925 0 0 1 31.216 3.971 C 39.739 7.016 43.52 15.383 43.52 29.924 C 43.52 46.644 38.4 56.004 22.88 56.244 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
			  				<a href="college_cards.jsp?course=BSc Data Science"><p class="ug">B.Sc. in Data Science</p></a>
			  				<br>
			  	<svg width="59.133" height="60.963" viewBox="0 0 59.133 60.963" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 55.853 52.243 L 55.853 48.563 A 64.74 64.74 0 0 1 55.93 45.22 C 56.131 41.344 56.757 38.557 58.161 35.252 A 46.917 46.917 0 0 1 59.133 33.123 L 59.133 32.963 L 41.373 32.963 L 41.373 33.123 A 50.744 50.744 0 0 1 42.552 35.074 C 44.604 38.672 45.521 41.682 45.453 46.723 A 12.385 12.385 0 0 1 44.259 51.992 C 42.144 56.288 37.411 58.403 31.533 58.403 A 17.266 17.266 0 0 1 22.572 56.152 C 15.683 52.073 12.733 42.761 12.733 30.803 A 49.968 49.968 0 0 1 14.129 18.469 C 16.594 8.871 22.434 2.563 32.493 2.563 C 40.653 2.563 46.093 7.123 54.093 18.243 L 55.293 17.923 L 53.613 3.443 C 49.911 2.376 45.077 0.866 38.879 0.265 A 56.083 56.083 0 0 0 33.453 0.003 A 39.867 39.867 0 0 0 19.015 2.525 A 29.247 29.247 0 0 0 0.013 30.803 A 30.109 30.109 0 0 0 6.797 50.42 C 10.819 55.213 16.491 58.652 23.436 60.141 A 38.215 38.215 0 0 0 31.453 60.963 C 44.893 60.963 52.493 54.803 55.853 52.243 Z" vector-effect="non-scaling-stroke"/></g></svg>
			  	<br><br>
			  				<a href=""><p class="ug">B.Sc. in Gaming & Mobile Application Development</p></a>
			  				<br>
			  	<svg width="55.44" height="58.56" viewBox="0 0 55.44 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 58.56 L 18.24 58.56 L 18.24 58.4 A 64.506 64.506 0 0 1 17.283 56.28 C 15.476 52.048 14.88 48.932 14.88 42.72 L 14.88 29.84 L 40.56 29.84 L 40.56 42.64 A 76.024 76.024 0 0 1 40.502 45.784 C 40.288 50.935 39.438 53.815 37.28 58.4 L 37.28 58.56 L 55.44 58.56 L 55.44 58.4 A 67.542 67.542 0 0 1 54.512 56.28 C 52.756 52.048 52.16 48.932 52.16 42.72 L 52.16 15.84 A 69.055 69.055 0 0 1 52.224 12.703 C 52.453 7.676 53.332 4.806 55.366 0.323 A 97.338 97.338 0 0 1 55.44 0.16 L 55.44 0 L 37.28 0 L 37.28 0.16 A 59.153 59.153 0 0 1 38.222 2.256 C 39.76 5.885 40.377 8.695 40.524 13.363 A 81.612 81.612 0 0 1 40.56 15.92 L 40.56 27.2 L 14.88 27.2 L 14.88 15.84 A 68.567 68.567 0 0 1 14.944 12.703 C 15.172 7.737 16.043 4.876 18.088 0.484 A 89.324 89.324 0 0 1 18.24 0.16 L 18.24 0 L 0 0 L 0 0.16 C 2.202 4.839 3.102 7.683 3.31 13.071 A 73.841 73.841 0 0 1 3.36 15.92 L 3.36 42.64 A 70.134 70.134 0 0 1 3.297 45.784 C 3.068 50.874 2.179 53.747 0.075 58.239 A 92.079 92.079 0 0 1 0 58.4 L 0 58.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
			  	<br><br>
			  				<a href="college_cards.jsp?course= Hospitality and Hotel Administration"><p class="ug">B.Sc. in Hospitality and Hotel Administration</p></a>
			  				<br>
			  <svg width="71.36" height="58.56" viewBox="0 0 71.36 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 50.24 58.56 L 68.48 58.56 L 68.48 58.4 A 67.542 67.542 0 0 1 67.552 56.28 C 65.796 52.048 65.2 48.932 65.2 42.72 L 65.2 14.48 C 65.2 7.63 66.533 4.853 70.837 0.663 A 57.306 57.306 0 0 1 71.36 0.16 L 71.36 0 L 54.72 0 L 36.16 42.48 L 17.44 0 L 0 0 L 0 0.16 C 4.419 4.354 6.033 7.006 6.221 13.171 A 43.036 43.036 0 0 1 6.24 14.48 L 6.24 41.68 C 6.24 49.004 5.003 52.254 1.35 57.604 A 90.2 90.2 0 0 1 0.8 58.4 L 1.12 58.56 L 15.6 58.56 L 15.6 58.4 A 65.922 65.922 0 0 1 13.894 56.281 C 10.356 51.671 9.19 48.381 9.12 41.68 L 8.88 8.72 L 30.32 56.8 L 32.88 56.8 L 53.68 9.28 L 53.68 42.64 A 69.646 69.646 0 0 1 53.617 45.784 C 53.389 50.814 52.508 53.679 50.394 58.08 A 85.011 85.011 0 0 1 50.24 58.4 L 50.24 58.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
			  <br><br>
							<a href="college_cards.jsp?course=BSc  Microbiology"><p class="ug">B.Sc. in Microbiology</p></a>
							<br>	
						<svg width="44.267" height="58.56" viewBox="0 0 44.267 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 58.4 L 0 58.56 L 18.24 58.56 L 18.24 58.4 A 51.989 51.989 0 0 1 17.215 56.205 C 15.659 52.635 15.052 49.786 14.913 45.131 A 80.978 80.978 0 0 1 14.88 42.72 L 14.88 35.12 L 19.76 35.12 C 26.943 35.12 32.459 33.614 36.42 31.057 A 16.876 16.876 0 0 0 44.24 16.24 A 13.878 13.878 0 0 0 37.505 3.467 C 33.898 1.296 28.613 0 21.12 0 L 0 0 L 0 0.16 C 2.202 4.839 3.102 7.683 3.31 13.071 A 73.841 73.841 0 0 1 3.36 15.92 L 3.36 42.64 A 70.134 70.134 0 0 1 3.297 45.784 C 3.068 50.874 2.179 53.747 0.075 58.239 A 92.079 92.079 0 0 1 0 58.4 Z M 18.64 32.56 L 14.88 32.56 L 14.88 2.72 A 27.466 27.466 0 0 1 16.493 2.599 C 17.021 2.575 17.517 2.566 17.985 2.562 A 109.933 109.933 0 0 1 18.8 2.56 A 18.146 18.146 0 0 1 24.859 3.481 C 29.598 5.162 32.4 9.231 32.4 16.4 C 32.4 23.451 29.652 30.382 22.402 32.136 A 15.967 15.967 0 0 1 18.64 32.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href=""><p class="ug">B.Sc. in Psychology</p></a>
							<br>
			  </div>
	    </div>
	  </div>
	</div>

	<div class="container" id="coursecon1">
	  <div class="row">
	    <div class="col-md-6" id="box1">
			<div class="sub-box">
				<svg width="54.08" height="59.04" viewBox="0 0 54.08 59.04" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 13.44 59.04 L 13.44 58.88 A 10.665 10.665 0 0 1 11.516 56.128 C 9.938 52.906 9.438 48.052 12 41.2 L 13.36 37.52 L 32.08 37.52 L 34.56 44.32 C 36.88 50.72 36.48 55.92 34.4 58.88 L 34.4 59.04 L 54.08 59.04 L 54.08 58.88 A 25.197 25.197 0 0 1 51 54.743 C 49.514 52.282 48.151 49.246 46.64 45.2 L 30 0 L 24.48 0 L 8 44.56 A 118.934 118.934 0 0 1 7.294 46.438 C 5.239 51.757 3.232 55.576 0 58.88 L 0 59.04 L 13.44 59.04 Z M 14.32 34.96 L 22.8 11.92 L 31.12 34.96 L 14.32 34.96 Z" vector-effect="non-scaling-stroke"/></g></svg>
					      <br><br>
					      <a href="college_cards.jsp?course=MSc in Applied Mathematics"><p class="ug">M.Sc. in Applied Mathematics</p></a>
					      
					      <br>
				<svg width="46.809" height="58.803" viewBox="0 0 46.809 58.803" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 0.241 L 0 0.401 C 2.202 5.08 3.102 7.925 3.31 13.312 A 73.841 73.841 0 0 1 3.36 16.161 L 3.36 42.881 A 70.134 70.134 0 0 1 3.297 46.025 C 3.068 51.116 2.179 53.988 0.075 58.481 A 92.079 92.079 0 0 1 0 58.641 L 0 58.801 L 23.92 58.801 A 44.861 44.861 0 0 0 31.686 58.182 C 38.129 57.046 42.315 54.414 44.613 50.831 A 14.631 14.631 0 0 0 46.8 42.801 C 46.8 36.913 43.879 31.597 36.197 29.082 A 28.739 28.739 0 0 0 31.52 28.001 A 23.146 23.146 0 0 0 36.447 26.108 C 38.291 25.125 39.745 23.951 40.865 22.641 A 13.559 13.559 0 0 0 44 13.601 C 44 6.881 40.16 -0.079 23.52 0.001 A 231.892 231.892 0 0 0 21.535 0.012 C 16.746 0.054 8.668 0.211 1.86 0.238 A 479.725 479.725 0 0 1 0 0.241 Z M 14.88 55.601 L 14.88 29.601 L 22.8 29.601 A 14.008 14.008 0 0 1 27.459 30.324 C 32.468 32.083 34.56 36.885 34.56 42.881 A 16.434 16.434 0 0 1 33.361 49.364 C 31.523 53.653 27.541 56.321 21.2 56.321 A 27.97 27.97 0 0 1 18.575 56.199 C 17.719 56.119 16.919 56.003 16.171 55.866 A 30.621 30.621 0 0 1 14.88 55.601 Z M 14.88 27.041 L 14.88 3.201 C 16.206 2.886 17.681 2.67 19.462 2.593 A 34.645 34.645 0 0 1 20.96 2.561 A 15.521 15.521 0 0 1 25.493 3.177 C 29.349 4.353 31.591 7.142 32.387 10.924 A 16.507 16.507 0 0 1 32.72 14.321 C 32.72 19.778 30.593 25.622 24.49 26.82 A 12.315 12.315 0 0 1 22.24 27.041 L 14.88 27.041 Z" vector-effect="non-scaling-stroke"/></g></svg>
					      <br><br>
							<a href="college_cards.jsp?course=MBA"><p class="ug">Master's of Business Administration</p></a>
							<br>
				<svg width="54.964" height="60.962" viewBox="0 0 54.964 60.962" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 54.964 39.202 L 53.764 38.882 A 162.831 162.831 0 0 1 52.345 41.501 C 46.71 51.658 41.195 58.402 31.524 58.402 A 16.257 16.257 0 0 1 16.193 48.683 C 14.815 45.921 13.85 42.643 13.294 38.946 A 54.906 54.906 0 0 1 12.724 30.802 A 55.641 55.641 0 0 1 13.856 18.993 C 15.904 9.649 20.879 3.396 29.944 2.639 A 22.851 22.851 0 0 1 31.844 2.562 A 18.236 18.236 0 0 1 37.911 3.509 C 43.25 5.361 47.528 10.031 53.524 18.402 L 54.644 18.082 L 52.964 3.442 C 48.404 1.922 41.444 0.002 32.724 0.002 A 34.937 34.937 0 0 0 15.075 4.562 A 29.954 29.954 0 0 0 0.004 30.802 A 29.633 29.633 0 0 0 7.736 51.262 C 12.115 55.979 18.154 59.246 25.325 60.45 A 37.921 37.921 0 0 0 31.604 60.962 A 42.543 42.543 0 0 0 38.325 60.419 C 45.44 59.28 50.829 56.647 52.78 55.452 A 8.814 8.814 0 0 0 53.284 55.122 L 54.964 39.202 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href="college_cards.jsp?course=MCA"><p class="ug">Master's of Computer Application</p></a>
							<a href=""><p class="ug">MTech in Computer Science & Engineering</p></a>
							<br>
				<svg width="44" height="58.56" viewBox="0 0 44 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.25mm" fill="#131357" style="stroke:#131357;stroke-width:0.25mm;fill:#131357"><path d="M 14.88 42.72 L 14.88 29.76 L 21.92 29.76 A 7.073 7.073 0 0 1 25.843 31.148 C 28.451 32.914 30.719 35.968 32.4 37.92 L 33.36 37.92 L 33.36 18.96 L 32.4 18.96 A 41.599 41.599 0 0 0 32.382 18.981 C 30.551 21.101 28.109 24.353 25.348 26.033 A 6.635 6.635 0 0 1 21.92 27.12 L 14.88 27.12 L 14.88 2.08 L 28.96 2.8 A 4.134 4.134 0 0 1 30.735 3.383 C 34.377 5.401 39.256 12.148 42.8 15.76 L 44 15.36 L 40.88 0 L 0 0 L 0 0.16 C 2.202 4.839 3.102 7.683 3.31 13.071 A 73.841 73.841 0 0 1 3.36 15.92 L 3.36 42.64 A 70.134 70.134 0 0 1 3.297 45.784 C 3.068 50.874 2.179 53.747 0.075 58.239 A 92.079 92.079 0 0 1 0 58.4 L 0 58.56 L 18.24 58.56 L 18.24 58.4 A 64.506 64.506 0 0 1 17.283 56.28 C 15.476 52.048 14.88 48.932 14.88 42.72 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href=""><p class="ug">M.Sc. in Forensic Science</p></a>
							<br>
				<svg width="18.24" height="58.56" viewBox="0 0 18.24 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.25mm" fill="#131357" style="stroke:#131357;stroke-width:0.25mm;fill:#131357"><path d="M 0 58.56 L 18.24 58.56 L 18.24 58.4 A 64.506 64.506 0 0 1 17.283 56.28 C 15.476 52.048 14.88 48.932 14.88 42.72 L 14.88 15.84 A 68.567 68.567 0 0 1 14.944 12.703 C 15.172 7.737 16.043 4.876 18.088 0.484 A 89.324 89.324 0 0 1 18.24 0.16 L 18.24 0 L 0 0 L 0 0.16 A 58.826 58.826 0 0 1 0.968 2.247 C 2.522 5.796 3.151 8.53 3.314 13.071 A 79.694 79.694 0 0 1 3.36 15.92 L 3.36 42.64 A 76.96 76.96 0 0 1 3.304 45.769 C 3.096 50.855 2.271 53.669 0.154 58.081 A 80.271 80.271 0 0 1 0 58.4 L 0 58.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href="college_cards.jsp?course=MTech in Information Security"><p class="ug">M.Tech in Information Security</p></a>
							<a href="college_cards.jsp?course=MTech in Information Technology"><p class="ug">M.Tech in Information Technology</p></a>
							<br>
				<svg width="71.36" height="58.56" viewBox="0 0 71.36 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 50.24 58.56 L 68.48 58.56 L 68.48 58.4 A 67.542 67.542 0 0 1 67.552 56.28 C 65.796 52.048 65.2 48.932 65.2 42.72 L 65.2 14.48 C 65.2 7.63 66.533 4.853 70.837 0.663 A 57.306 57.306 0 0 1 71.36 0.16 L 71.36 0 L 54.72 0 L 36.16 42.48 L 17.44 0 L 0 0 L 0 0.16 C 4.419 4.354 6.033 7.006 6.221 13.171 A 43.036 43.036 0 0 1 6.24 14.48 L 6.24 41.68 C 6.24 49.004 5.003 52.254 1.35 57.604 A 90.2 90.2 0 0 1 0.8 58.4 L 1.12 58.56 L 15.6 58.56 L 15.6 58.4 A 65.922 65.922 0 0 1 13.894 56.281 C 10.356 51.671 9.19 48.381 9.12 41.68 L 8.88 8.72 L 30.32 56.8 L 32.88 56.8 L 53.68 9.28 L 53.68 42.64 A 69.646 69.646 0 0 1 53.617 45.784 C 53.389 50.814 52.508 53.679 50.394 58.08 A 85.011 85.011 0 0 1 50.24 58.4 L 50.24 58.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
			  			<br><br>
							<a href=""><p class="ug">M.Sc. in Molecular Biology</p></a>
							<a href=""><p class="ug">M.Sc. in Microbiology</p></a>
							<br>
				<svg width="44.267" height="58.56" viewBox="0 0 44.267 58.56" xmlns="http://www.w3.org/2000/svg"><g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#131357" stroke-width="0.5mm" fill="#131357" style="stroke:#131357;stroke-width:0.5mm;fill:#131357"><path d="M 0 58.4 L 0 58.56 L 18.24 58.56 L 18.24 58.4 A 51.989 51.989 0 0 1 17.215 56.205 C 15.659 52.635 15.052 49.786 14.913 45.131 A 80.978 80.978 0 0 1 14.88 42.72 L 14.88 35.12 L 19.76 35.12 C 26.943 35.12 32.459 33.614 36.42 31.057 A 16.876 16.876 0 0 0 44.24 16.24 A 13.878 13.878 0 0 0 37.505 3.467 C 33.898 1.296 28.613 0 21.12 0 L 0 0 L 0 0.16 C 2.202 4.839 3.102 7.683 3.31 13.071 A 73.841 73.841 0 0 1 3.36 15.92 L 3.36 42.64 A 70.134 70.134 0 0 1 3.297 45.784 C 3.068 50.874 2.179 53.747 0.075 58.239 A 92.079 92.079 0 0 1 0 58.4 Z M 18.64 32.56 L 14.88 32.56 L 14.88 2.72 A 27.466 27.466 0 0 1 16.493 2.599 C 17.021 2.575 17.517 2.566 17.985 2.562 A 109.933 109.933 0 0 1 18.8 2.56 A 18.146 18.146 0 0 1 24.859 3.481 C 29.598 5.162 32.4 9.231 32.4 16.4 C 32.4 23.451 29.652 30.382 22.402 32.136 A 15.967 15.967 0 0 1 18.64 32.56 Z" vector-effect="non-scaling-stroke"/></g></svg>
						<br><br>
							<a href=""><p class="ug">M.Pharm in Pharmacology</p></a>

							<br>
			</div>
	      
	    </div>
	    <div class="col-md-6"  style="text-align: center;">
	      	<h1 id="ug-title">Courses under PG</h1>
	      	<svg fill="#000000" width="80px" height="80px" viewBox="0 0 24 24" id="right-arrow" xmlns="http://www.w3.org/2000/svg" class="icon line" transform="matrix(-1, 0, 0, 1, 0, 0)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path id="primary" d="M3,12H21m-3,3,3-3L18,9" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width:0.696;"></path></g></svg>
	    </div>
	    </div>
	  </div>
	</div>
	


    <!-- For JS -- Bootstrap -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


</body>
</html>