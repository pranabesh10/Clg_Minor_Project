<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="org.misc.ConnectionProvider" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="Carousel_first.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <style>
    <style>
		 @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
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
.hero
{
    width: 100%;
    height: 150px;
    background-size: cover;
    margin-top: 10%;


}
#countbox
{
    width: 85%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: absolute;
    left: 50%;
    transform: translate(-50%,-50%);
}
i
{
    padding-bottom: 15px;
}
#col
{
    flex-basis: 22%;
    text-align: center;
    color: white;
}
.counter-box
{
    width: 100%;
    height: 100%;
    background-color: #131356;
    padding: 20px 0;
    border-radius: 5px;
        font-family: 'Domine', serif;
}
	</style>
</head>
<body>
<% 
Connection con=null;
PreparedStatement pstm=null;
ResultSet rs=null;
try{
	con=ConnectionProvider.createC();
	pstm = con.prepareStatement("select count(distinct highlighted_courses) from college");
	rs=pstm.executeQuery();
	rs.next();
	int cou2=rs.getInt(1);
	pstm = con.prepareStatement("select count(distinct name) from college");
	rs=pstm.executeQuery();
	rs.next();
	int cou1=rs.getInt(1);
	pstm = con.prepareStatement("select count(email) from user");
	rs=pstm.executeQuery();
	rs.next();
	int cou3=rs.getInt(1);
%>
	<div class="courses">
    <h1 class="title"><b>Companies Associated With Us</b></h1>
    </div>
    <div class="logo">
        <div class="logo_slider">
            <img src="images_first/deloitte.jpg" />
            <img src="images_first/amazon.jpg" />
            <img src="images_first/tcs.jpg" />
            <img src="images_first/wipro.jpg" />
            <img src="images_first/infosys.jpg" />
            <img src="images_first/ibm.jpg" />
            <img src="images_first/microsoft.jpg" />
            <img src="images_first/icra.jpg" />
            <img src="images_first/cmc.jpg" />
            <img src="images_first/latentview.jpg" />
            <img src="images_first/tech_mahindra.jpg" />
            <img src="images_first/indiamart.jpg" />
            <img src="images_first/insync.jpg" />
            <img src="images_first/google.jpg" />
        </div>
    </div>
    <script>
        var copy = document.querySelector(".logo_slider").cloneNode(true)
        document.querySelector(".logo").appendChild(copy)
    </script>
    
    <div class="courses">
    <h1 class="title"><b>Our Achievements</b></h1>
    </div>
    <div class="hero">
        <div class="row" id="countbox">
            <div class="col" id="col">
                <div class="counter-box">
                    <i class="fa-sharp fa-solid fa-building-columns fa-lg"></i>
                    <h2 class="counter"><%=cou1 %></h2>
                    <h4>Affiliated Colleges</h4>
                </div>
            </div>
            <div class="col" id="col">
                <div class="counter-box">
                    <i class="fa-sharp fa-solid fa-gear fa-lg"></i>
                    <h2 class="counter"><%=cou2 %></h2>
                    <h4>Courses</h4>
                </div>
            </div>
            <div class="col" id="col">
                <div class="counter-box">
                    <i class="fa-sharp fa-solid fa-user-graduate fa-lg"></i>
                    <h2 class="counter"><%=cou3 %></h2>
                    <h4>Students</h4>
                </div>
            </div>
            <div class="col" id="col">
                <div class="counter-box">
                    <i class="fa-sharp fa-solid fa-earth-americas fa-lg"></i>
                    <h2 class="counter">100</h2>
                    <h4>Collaborations</h4>
                </div>
            </div>
        </div>
    </div>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="Counter_first.js"></script>
    <script>
        jQuery(document).ready(function($){
            $('.counter').counterUp({
    delay: 10,
    time: 5000
});
        })
    </script>
    <% 
  }
  
  catch(Exception e){}
  
  
  %> 
</body>
</html>
