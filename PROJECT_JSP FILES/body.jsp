<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="front_header.jsp"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
  <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,500;1,300&display=swap');
    @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }

body{
    background-color: #fff;
}


.heading {
    font-family: myfont;
    font-size: 55px;
    font-weight: 400;
    color: #131357;
    letter-spacing: 0.2px;
    margin-top: 3%;
    text-align: center;
}

.uppercase{
    text-align: center;
    font-family: 'Domine', serif;
    font-size: 20px;
    color: #131357;
}

#infodiv{
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
    
}

span{
    font-weight: 700;
}


.carousel-inner{
	width: 500px;
	align-item: center;
}

.carousel-item img{
   width: 80%;
   height: 500px;
 	margin-left: 10%;
   
}

#carbtn{
	height: 250px;
	width: 10%;
	margin-top: 8%;
	
}

#empty{
	height: 170px;

}
#collapseExample, #multiCollapseExample1{
	font-family: 'Libre Baskerville', serif;
	font-size: 18px;
	font-weight: 400;
}

#mandv a{
	background-color: #131356;
	font-family: myfont;
}

  </style>
</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
<div id="empty"></div>
  <!-- Slider Section -->
  <div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/mak1.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/mak2.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/mak3.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/mak4.jpg" class="d-block" alt="...">
      </div>
      <div class="carousel-item">
        <img src="images/mak6.jpg" class="d-block" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" id="carbtn">
      <span class="carousel-control-prev-icon" aria-hidden="true" style="background-color:#131356; border-radius:50px;"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next" id="carbtn">
      <span class="carousel-control-next-icon" aria-hidden="true" style="background-color:#131356; border-radius:50px;"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  
  <!-- Main Content (Inner Section) -->
  <div class="container">
    <div class="inner">
      <div class="heading">
        Welcome To,
      </div>
      <div class="uppercase">Kolkata International Institute of Technology and Management</div>
      <div id="infodiv">
      <p style="text-align: justify;">Kolkata International Institute of Technology and Management, West Bengal (KIITM, WB),
         is a public state university located in
        Saltlake, West Bengal, India. It is funded completely by the Government of West Bengal. It was
        established in 2001 by the West Bengal legislature. The university provides management and engineering
        degrees through affiliated colleges and in-house departments.</p>
      <p>The University came into operation formally with the assumption of the office of the first Vice
        Chancellor on January 15, 2001 as a sequel to the promulgation of THE WEST BENGAL UNIVERSITY OF
        TECHNOLOGY ACT, 2001, under West Bengal Act XV of 2000 passed by the West Bengal Legislature. The
        University started its academic programme, from July 16, 2001 following a Notification from the
        Department of Higher Education, Government of West Bengal dated June 15, 2001 through the affiliation of
        Engineering and Management Institutions / Colleges and has entered the eighth year of its functioning.
        The University is included in Section 2F and also in Section 12B of UGC and recipient of UGC Grant.</p>
       </div>
       </div>
      <div class="col" id="mandv">
      <p class="d-inline-flex gap-1">
    	<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
      	aria-controls="collapseExample">
      	VISION OF UNIVERSITY
    	</a>

  	</p>
  <div class="collapse" id="collapseExample">
    <div class="card card-body">
      To achieve the status of a globally ranked premier University in the field of Science, Technology, Pharmacy, Architecture, Management and interdisciplinary areas for the creation of high-calibre professionals with environmental consciousness, social, moral and ethical values along with the competency to face the new challenges of rapid technological advancements.

    </div>
  </div>
  </div>
  
  <div class="col" style="margin-top: 20px;" id="mandv">
   <p class="d-inline-flex gap-1">
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button"
      aria-expanded="false" aria-controls="multiCollapseExample1">MISSION OF UNIVERSITY</a>
    </p>
    
      <div class="collapse multi-collapse" id="multiCollapseExample1">
        <div class="card card-body">
          ○ To impart
          quality and value based teaching & learning of international standard for solving the real life
          problems
          <br><br>
          ○ To create and disseminate
          knowledge
          both nationally & internationally towards the transformations of the civilization into a
          knowledge based
          society <br><br>
          ○ To institutionalize the
          extension and
          field outreach activities with a view to transform the university system into an active
          instrument for
          social change <br><br>
          ○ To develop liaison and
          collaboration
          with the globally recognised academic institutions in order to inject new and fresh thinking in
          teaching, learning and research <br><br>
          ○ To generate intellectually
          capable
          and imaginatively gifted professionals and successful entrepreneurs having environmental
          consciousness
          and ethics who can work as individual or in group in multi-cultural global environments for
          continuing
          significantly towards the betterment of quality of human life
        </div>
      </div>
      </div>
    <!-- All Notices Section -->
  
  </div>
</body>
</html>
<jsp:include page="index_home_page.jsp"/>
<jsp:include page="Carousal_first.jsp"/>
<jsp:include page="footer.jsp"/>
