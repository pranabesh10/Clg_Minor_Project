<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">

    <style>
		
	body{
		font-family: 'Libre Baskerville', serif;
	}
	
	#image{
		margin-top: 7%;
		
	}
	
	#social{
		text-decoration: none;
		color: white;
	}
	
	#social:hover{
		color: white;
		border-bottom: 2px solid white;;
	}
	
	table{
		width: 100%;
	}
	td{
		width: 50%;
		height: 75px;
	}
	
	h5{
		font-family: 'Domine', serif;
		
	}
	</style>
</head>

<body>
    <footer class="bg-dark text-white pt-5 pb-4">
        <div class="container text-center text-md-left">
            <div class="row text-center text-md-left">
                <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-3 font-weight-bold text-warning">KIITM</h5>
                    <p style=" margin-bottom: 0;">Thanks for visiting our website. All important links and social media handles are given here.</p>
                    <img src="KIITM logo2.jpeg" width="70" height="70" id="image">
                </div>
                <div class="col-md-2 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-3 font-weight-bold text-warning">Contact Us</h5>
                    <p>
                        <i class="fa fa-map-marker mr-3"style="color:rgb(65, 65, 219)">&nbsp;</i>
                        <u>KIITM</u><br>
                        125, Sector V, Salt Lake<br>
                        Kol-23, INDIA
                    </p>
                    <p>
                        <i class="fa fa-phone-square mr-3" style="color: rgb(65, 65, 219);">&nbsp;</i>
                        +91 98745 56321
                    </p>
                    <p>
                        <i class="fa fa-envelope mr-3" style="color:rgb(65, 65, 219)">&nbsp;</i>
                        KIITM@gmail.com
                    </p>
                </div>
                <div class="col-md-2 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-3 font-weight-bold text-warning">Social Media Handles</h5>
                    
                    <table>
						<tr>
							<td><i class="fa fa-facebook" style="font-size: 22px;">&nbsp;</i>
                        <a href="" id="social"> Facebook</a></td>
                        	<td>
								<i class="fa fa-whatsapp"  style="font-size: 22px;">&nbsp;</i>
                        <a href="" id="social"> WhatsApp</a>
							</td>
						</tr>
						<tr>
							<td>
								<i class="fa fa-instagram"  style="  font-size: 22px;">&nbsp;</i>
                        <a href="" id="social"> Instagram</a>
							</td>
							<td>
								
		                        <i class="fa fa-youtube-play" id="yt" style="font-size: 22px; ">&nbsp;</i>
		                        <a href="" id="social" >YouTube</a>
							</td>
						</tr>
							
					</table>
                    </div>
                

                <hr class="mb-4">
                <div class="row align align-items-center" >
                    <div class="col-md-7 col-lg-4" id="lastdiv" style="width: 40%;">
                        Copyright @2023 All rights reserved by:
                            <a href="#" style="text-decoration: none;">
                                <strong class="text-warning" style="border-bottom: 2px solid yellow;">KIITM</strong>
                            </a>
                    </div>
                </div>
            </div>

        </div>

    </footer>
</body>
</html>