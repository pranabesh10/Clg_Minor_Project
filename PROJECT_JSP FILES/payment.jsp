<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
  rel="stylesheet" type="text/css"
  href="//cdn.jsdelivr.net/gh/loadingio/ldbutton@v1.0.1/dist/ldbtn.min.css"
/>
<link
  rel="stylesheet" type="text/css"
  href='path/to/your/ldbtn.min.css'
/>
<link rel="stylesheet" type="text/css" href="path/to/your/loading.css"/>
<meta charset="UTF-8">
<style>
  @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
		body { margin-top:20px; }
		.panel-title {display: inline;font-weight: bold;}
		.checkbox.pull-right { margin: 0; }
		.pl-ziro { padding-left: 0px; }
			#check{
		margin-left:34%;
		margin-top:4%;
		position: absolute;
	}
	
	h1{
		font-family: myfont;
		color: #131356;
		}
	
	hr{
				
		border-top: 1px solid grey;
	}
	
	.form-group{
		padding-bottom: 8%;
	}
	
	#fgroup label{
		color: #131356;
	}
	
	#paycon{
		width: 100%;
		margin-top: 5%;
		position: relative;
	}
	
	#spinner{
		position: absolute;
		z-index: 9;
		margin-top: 7%;
		width: 20%;
		margin-left: 43%;
	}
	
	#msg{
		text-align: center;
        font-size: 22px;
        color: #383630;
        font-family: myfont;
        position: absolute;
        margin-left: 42.5%;
        z-index: 9;
       color: #038f1a;
		
	}

</style>
</head>
<body>
<%
String money=null;
Connection con=null;
PreparedStatement pstm=null;
ResultSet rs=null;
try{
	con=ConnectionProvider.createC();
	String msg=request.getParameter("course1");
	String collegename=request.getParameter("college");
	String collegeid=request.getParameter("collegeid");
	pstm=con.prepareStatement("select s_pay,course_id from course where course_name=?");
	pstm.setString(1,msg);
	rs=pstm.executeQuery();
	rs.next();
	money=rs.getString(1);
	String course_id=rs.getString(2);

%>

<h1 style="margin-left:42%;">Payment Portal</h1><hr>

<div id="msg"><h5></h5></div>

<div class="container" id="paycon">
    <div class="row" id="mainbox">
        <div class="col-xs-12 col-md-4" id="check">
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <h3 class="panel-title" style="color: #131356;">
                        Payment Details
                    </h3>
                    <div class="checkbox pull-right" style="color: #131356;">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group" id="fgroup">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control"  id="cardNumber"  placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group" id="fgroup">
                                <label for="expityMonth">
                                    EXPIRY DATE</label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group" id="fgroup">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked" >
                <li class="active" ><a href="#" style="background-color: #131356;"><span class="badge pull-right" ><i class="fa fa-rupee-sign"></i><%=money %></span> Final Payment (INR) </a>
              </li>
            </ul>
            <br/>
       		<button class="btn" id="paybtn" Style="width:100%; background-color: #131356; color: #fff;">Pay</button>
       		</div>
       		</div>
</div>
		<div id="spinner" style="display:none">
			<img src="Eclipse-1s-200px.gif">
		</div>

 <!--	
	var url = "student_enroll.jsp?college=<%=collegename%>&course=<%=msg%>&collegeid=<%=collegeid%>&courseid=<%=course_id%>"; 
	$(location).attr('href',url) -->
  <script>
  $(() => {
	  $('#paybtn').on('click', () => {
	    $('#spinner').show()
	    var url = "student_enroll.jsp?college=<%=collegename%>&course=<%=msg%>&collegeid=<%=collegeid%>&courseid=<%=course_id%>"; 
	    setTimeout(() => {
	    	$('#spinner').hide();
	      	$('#msg').html("<i class='fa fa-rupee' style=font-size:24px;color: #038f1a;'></i> Payment is successful !")
	      	$(location).attr('href',url) 
	     }, 5000)
	  })
	})
	

</script>


  <% }
  
  catch(Exception e){}
  
  
  %>
</body>
</html>