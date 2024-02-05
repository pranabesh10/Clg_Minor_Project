<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <jsp:include page="front_header.jsp"/>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Facilities_NSS</title>
  
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
		@font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
	#gap{
		margin-top:40px;
	}
	
	#b{
		border:2px solid #131357;
		border-right:4px solid #131357;
		border-bottom:4px solid #131357;
		margin-bottom:20px; 
		background-color:#e3eeff;
	}
	
	#b h2, #b h5{
		font-family:myfont;
	}
	
	span{
    font-weight: 700;
}

.carousel-inner{
	width: 450px;
	align-item: center;
	margin-top:70px;
}

.carousel-item img{
   width: 80%;
   height: 480px;
   margin-left: 10%;
   box-shadow:0 0 10px 1px black;
}

#carbtn{
	height: 450px;
	width: 10%;
}

.caption{
	text-align:center;
	margin-top:50px;
	margin-bottom:50px;
	font-family: myfont;
	color: #131356;
	font-size: 18px;
}

	#empty{
	height: 70px;
	}
	
  </style> 

</head>

<body>
<div id="empty"></div>
<div class="container">
<div class="row p-4"> <br> </div> </div>

<div class="container">

	<div class="row p-4" id="b">
	<h2><b>Objectives of NSS</b></h2> 
	</div>
	
<p>The main objectives of National Service Scheme (NSS) are : </p>		

<ol type="1">
	<li>Understand the community in which they work.</li>
	<li>Understand themselves in relation to their community.</li>
	<li>Identify the needs and problems of the community and involve them in problem-solving.</li>
	<li>Develop among themselves a sense of social and civic responsibility.</li>
	<li>Utilise their knowledge in finding practical solutions to individual and community problems.</li>
	<li>Develop competence required for group-living and sharing of responsibilities.</li>
	<li>Gain skills in mobilising community participation.</li>
	<li>Acquire leadership qualities and democratic attitudes.</li>
	<li>Develop capacity to meet emergencies and natural disasters.</li>
	<li>Practise national integration and social harmony.</li>
</ol>

</div>


<div class="container" id="gap">

	<div class="row p-4" id="b">
	<h2><b>Motto</b></h2> 
	</div>
	
<p>
The Motto of NSS “Not Me But You”, reflects the essence of democratic living and upholds the 
need for self-less service. NSS helps the students development & appreciation to other person’s 
point of view and also show consideration towards other living beings. The philosophy of the 
NSS is a good doctrine in this motto, which underlines on the belief that the welfare of an 
individual is ultimately dependent on the welfare of the society as a whole and therefore, the 
NSS volunteers shall strive for the well-being of the society.
</p>

</div>


<div class="container" id="gap" style="margin-bottom: 80px;">

	<div class="row p-4" id="b">

	<h5>Name of Regional Directorate, NSS West Bengal</h5>
	<h5><small>Kolkata</small></h5>

	</div>
</div>


  <div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/NSS_1.jpeg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/NSS_2.jpeg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/NSS_3.jpeg" class="d-block" alt="...">
      </div>
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" id="carbtn">
      <span class="carousel-control-prev-icon" aria-hidden="true"
      style="background-color:#050e6e; border-radius:50px;"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next" id="carbtn">
      <span class="carousel-control-next-icon" aria-hidden="true"
      style="background-color:#050e6e; border-radius:50px;"></span>
      <span class="visually-hidden">Next</span>
    </button>
     
  </div>

	<div class="caption">
		<h3><b>NSS at our University</b></h3>
	</div>


</body>
</html>

<jsp:include page="footer.html"/>
