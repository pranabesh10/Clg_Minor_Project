<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="java.sql.*" %>
    	<%@page import="org.misc.ConnectionProvider" %>
    	 <%String str= (String)session.getAttribute("NAME");%>
    <%String str1= (String)session.getAttribute("EMAIL");%>
    <%String str2= (String)session.getAttribute("PHONE");%>
    	<jsp:include page="front_header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KIITM, WB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
<style>
@font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Medium-Trial.otf);
        }
        
#empty{
	height: 150px;
	
}

#pay{
	width: 60%;
	margin-left: 20%;
	background-color: #646f7d;
	border: none; 
}

#pay a{
	text-decoration: none;
	color: #fff;
	font-size: 15px;
	font-family: myfont;
}

.modal-header,#myModal h4, .close {
    background-color: #131356;
    color:white;
    text-align: center;
    font-size: 30px;
    font-family: myfont;
  }
 #myModal i{
 	color: #131356;
 	font-size: 30px;
 }
 
 #myModal label{
 	font-size: 18px;
 	font-family: myfont;
 }
 
 .form-group{
 	padding-bottom: 5%;
 }

#maincard{

	margin-left: 18%;
	color: #131357;
	border-right: 2px solid #cbc7c7;
    border-bottom: 2px solid #cbc7c7;
    border-bottom-right-radius: 15px;
    box-shadow: 5px 5px  #ececec;
    transition: 0.4s;
	
}
#maincard:hover{
    cursor: pointer;
    transform: scale(1.05);
}
#ctitle{
	font-family: myfont;
	font-size: 22px;
	font-weight: 500;
}

.card-text{
	font-family: myfont;
}

#rank{
	font-size: 48px;
	margin-left: 45%;
}

.card-img{
    max-width: 50%;
    height: auto;
    width: auto\9; /* ie8 */
    margin-left:25%;
    margin-top: 50px;
}

.btn1{
	width: 70%;
	margin-top: 20%;
	margin-left: 12%;
	height: 35px;
	border: 2px solid #131357;
	 font-family: 'Domine', serif;
	 font-size: 15px;
	 background-color: #fff;
	 border-radius: 20px;
	
}

.btn1:focus{
	outline: none;
}

.btn1:hover{
	background-color: #131357;
	color: #fff;
}

#AU{
margin-top: 50%;
}

#link{
text-decoration: none;
}


#filter{
	margin-left: 5px;
	width: 15%;
	float: left;
	margin-bottom: 5%;
}

#filter h2{
	font-family: myfont;
	color: #131356;
	text-align: center;
}

#filter label{
 font-family: 'Domine', serif;
}

#header{
background-color: #131356;
 color: #fff;
 font-family: 'Domine', serif;
 
}

</style>
</head>
<body>

<div id="empty"></div>
<div class="container" id="filter">


<div class="row" >
	
<h2>Filter Table</h2>


<div class="card" >
<article class="card-group-item">
		<header class="card-header" id="header">
			<h4 class="title">Select All</h4>
		</header>
		<div class="filter-content" >
			<div class="card-body" >
			<form >
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="all" value="all" onclick="yousendit3()">
				  All
				</label>
				</form>
			</div>
			</div>
			</article>
	<article class="card-group-item">
		<header class="card-header" id="header">
			<h4 class="title">Select Course</h4>
		</header>
		<div class="filter-content" >
			<div class="card-body" >
			<form >
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="course" value="BCA" onclick="yousendit2()">
				  BCA
				</label> <br><!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="course" value="BBA" onclick="yousendit2()">
				  <span class="form-check-label">
				    BBA
				  </span>
				</label><br>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="course" value="MBA" onclick="yousendit2()">
				  <span class="form-check-label">
				    MBA
				  </span>
				</label> <br>
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="course" value="MCA" onclick="yousendit2()">
				  <span class="form-check-label">
				    MCA
				  </span>
				</label> <!-- form-check.// -->
			</form>

			</div> <!-- card-body.// -->
		</div>
	</article> <!-- card-group-item.// -->
	
	<article class="card-group-item" >
		<header class="card-header" id="header">
			<h4 class="title">Select Location </h4>
		</header>
		<div class="filter-content" >
			<div class="card-body" >
			<form action="">
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Kolkata, West Bengal" onclick="yousendit()">
				  
				    Kolkata, West Bengal
				 
				</label> <br><!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Hoogly, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Hoogly, West Bengal
				  </span>
				</label><br>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Asansol, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Asansol, West Bengal
				  </span>
				</label><br>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="North 24 Pargana, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    North 24 Pargana, West Bengal
				  </span>
				</label><br>
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Siliguri, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Siliguri, West Bengal
				  </span>
				</label><br>
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Durgapur, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Durgapur, West Bengal
				  </span>
				</label><br>
				<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Haldia, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Haldia, West Bengal
				  </span>
				</label><br>
					<label class="form-check">
				  <input class="form-check-input" id="loc" type="checkbox" name="loc" value="Howrah, West Bengal" onclick="yousendit()">
				  <span class="form-check-label">
				    Howrah, West Bengal
				  </span>
				</label><br>
			</form>

			</div> <!-- card-body.// -->
		</div>
	</article> <!-- card-group-item.// -->
</div> <!-- card.// -->

</div>
</div>
<script>
function yousendit(){
	var els = document.getElementsByName('loc');
	for (var i=0;i<els.length;i++){
	  if ( els[i].checked ) {
		  var val=els[i].value;
	      window.location='college_cards.jsp?location='+val;
	  }
	
	}
}

	function yousendit2(){
		var els = document.getElementsByName('course');
		for (var i=0;i<els.length;i++){
		  if ( els[i].checked ) {
			  var val=els[i].value;
		      window.location='college_cards.jsp?course='+val;
		  }
		
		}
	}
	
	function yousendit3(){
		var els = document.getElementsByName('all');
		for (var i=0;i<els.length;i++){
		  if ( els[i].checked ) {
		      window.location='college_cards.jsp?msg=all';
		  }
		
		}
	}
</script>

<% 
	String id=null;
  String name=null;
  String loc=null;
  String hcourse=null;
  String rank=null;
  String image=null;
  String web=null;
  String ai=null;
  String ugc=null;
  Connection con=null;
  PreparedStatement pstm=null;
  PreparedStatement pstm2=null;
  ResultSet rs=null;
  ResultSet rs1=null;
  
  

  try{
	  con=ConnectionProvider.createC();
	  String course=request.getParameter("course");
	  String location=request.getParameter("location");
	  String all=request.getParameter("msg");
	  
		pstm2 = con.prepareStatement("select * from user_enroll where user_email=?;");
		pstm2.setString(1,str1);
		rs1=pstm2.executeQuery();
		boolean status=rs1.next();
	  
	  if(course!=null){
			pstm = con.prepareStatement("select *from college where  highlighted_courses=? order by rank asc;");
			pstm.setString(1, course);
			rs=pstm.executeQuery();
	  }
	  else if (location!=null){
		  pstm=con.prepareStatement("select *from college where  location=?;");
			pstm.setString(1,location);
			rs=pstm.executeQuery();
	  }
	  else if (all!=null){
		  pstm=con.prepareStatement("select *from college;");
			rs=pstm.executeQuery();
	  }

	
	
	
	while(rs.next()){
		id=rs.getString(1);
		name=rs.getString(2);
		loc=rs.getString(3);
		hcourse=rs.getString(4);
		image=rs.getString(5);
		rank=rs.getString(6);
		web=rs.getString(7);
		ai=rs.getString(8);
		ugc=rs.getString(9);
		
		%>
	
		
	<div class="card mb-3" style="max-width: 79%;" id="maincard">
	  <div class="row no-gutters">
	    <div class="col-md-2">
	      <img src="card_images/<%=image %>" class="card-img" alt="...">
	    </div>
	    
	   
	      <div class="col-md-6">
	      <div class="card-body">
	      		<h5 class="card-title" id="ctitle"><%=name %></h5> <br>
	        	<p class="card-text" id="ctext"><i class="fa fa-map-marker" style="font-size:30px; color: #131357;"></i> &nbsp; &nbsp; <%=loc %> </p>
	        	<p class="card-text" id="ctext"><i class="fa fa-book" style="font-size: 25px; color: #131357;"></i>&nbsp; &nbsp;<%=hcourse %> </p>
	        	<p class="card-text" id="ctext"><i class="fa fa-globe" style="font-size: 25px; color: #131357;"></i><a href="<%=web %>" id="link">&nbsp; Visit Website</a></p>
	      </div>
	    </div>
	    
	    <div class="col-md-2">
	      <p class="card-text" id="AU"><i class="fa fa-graduation-cap" style="font-size: 25px; color: #131357;"></i>&nbsp;AICTE <%=ai %></p>
	      <p class="card-text" id="ctext"><i class="fa fa-graduation-cap" style="font-size: 25px; color: #131357;"></i>&nbsp;UGC <%=ugc %></p>
	    </div>
	    
	    
	    <div class="col-md-2" >
	      <p class="card-text" id="rank">#<%=rank %></p>
	      <%if(status!=true){%>
	      <button type="submit" class="btn1">Enroll Now</button>
	      <%} %>
	    </div> 
	  </div>
	</div>
	<br>
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" class="modal">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
         
          <h4 style="margin-left: 20%;"><span class="glyphicon glyphicon-lock"></span>&nbsp;Payment</h4>
           <button type="button" class="close" data-dismiss="modal" style="margin-left: 10%;">&times;</button>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp; Applicant's Name:      <% if(str!=null)
			    {
			    %>
			    <%=str %>
			    <%} else{
			    	response.sendRedirect("login.jsp");
			    	}%></label>
			    
          
            </div>
            <div class="form-group">
              <label for="psw"><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Email Address: 
			    <%=str1%>
			    </label>
              
            </div>
            <div class="form-group">
              <label for="psw"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Phone Number:
			    <%=str2%>
			   </label>
			
            </div>
            <div class="form-group">
              <label for="psw"><i class="fa fa-graduation-cap" aria-hidden="true"></i>&nbsp;&nbsp;Course Name: &nbsp;<%=course%> </label>
            </div>
            <button type="submit" class="btn btn-success btn-block" id="pay"><a href="payment.jsp?course1=<%=course%>&college=<%=name%>&collegeid=<%=id%>">Make Payment</a></button>
          </form>
        </div>
      </div>
      
    </div>
  </div> 
</div>
<script>
 $(document).ready(function(){
  $(".btn1").click(function(){
    $("#myModal").modal();
  });
});




</script>
<%}

	} 
  	catch (Exception e) {}%>
  	
</body>
</html>

