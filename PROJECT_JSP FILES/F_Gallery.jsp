<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:include page="front_header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Facilities_Gallery</title>
  
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

body{
    background-color: #fff;
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
   height: 600px;
   margin-left: 10%;
}

#carbtn{
	height: 600px;
	width: 10%;
}

#empty{
	height: 100px;
	width: 100%;
}

.caption{
	text-align:center;
	margin-top:50px;
	margin-bottom:50px;
	font-family: myfont;
	color: #131356;
	font-size: 18px;
}

  </style>
</head>

<body>
  
  
  <!-- Slider Section -->
  <div id="empty"></div>
  
  <div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/G_1.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_2.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_3.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_4.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_5.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_6.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_7.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_8.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/G_9.jpg" class="d-block" alt="...">
      </div>
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" id="carbtn">
      <span class="carousel-control-prev-icon" aria-hidden="true" 
      style="background-color:#131356; border-radius:50px;"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next" id="carbtn">
      <span class="carousel-control-next-icon" aria-hidden="true"
      style="background-color:#131356; border-radius:50px;"></span>
      <span class="visually-hidden">Next</span>
    </button>
     
  </div>

	<div class="caption">
		<h3><b>Events and Photographs</b></h3>
	</div>
  
</body>
</html>
<jsp:include page="footer.html"/>
