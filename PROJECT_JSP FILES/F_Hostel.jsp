<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <jsp:include page="front_header.jsp"/>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home_Content</title>
  
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
	#empty{
	height: 100px;

}

#htitle h5{
	    font-family: myfont;
    font-size: 30px;
    font-weight: 400;
    color: #131357;
}

.box{
	margin:auto;
	text-align:center;
}

.image{
	width:250px;
	box-shadow:0 0 10px 1px black;
}

  </style>  
  
</head>
<body>
<div id="empty"></div>
<div class="row p-4">
<br>
</div>

<div class="container" style="margin-bottom:30px; margin-left:30px;">
	<div class="row">
	
		<div class="col-md-3 box">
		<a href="#"><img src="images/B_Hostel.png" class="image"></a>
		</div>
		
		<div class="col-md-3 box">
		<a href="#"><img src="images/canteen.png" class="image"></a>
		</div>
		
		<div class="col-md-3 box">
		<a href="#"><img src="images/G_Hostel.png" class="image"></a>
		</div>
				
	</div>
</div>

<div id="htitle">
<h5 style="text-align:center; margin-bottom:50px; margin-top: 50px;">
<b>Hostel Facilities provided by the University</b></h5>
</div>

</body>
</html>

<jsp:include page="footer.html"/>

