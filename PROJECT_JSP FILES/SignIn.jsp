<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
    <link href="https://fonts.cdnfonts.com/css/canela" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
        body{
           	
            background: linear-gradient(90deg, #1e7099 10%, rgba(51,97,211,1) 32%, rgba(0,212,255,1) 58%);
            background-attachment: fixed;
        }

        .container{
            margin-top: 8%;
            margin-left: 26%;
            position: relative;
        }
        #maindiv{
            float: left;
            width: 38%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            position: absolute;
            border-radius: 15px;
            z-index: -9;
            background: transparent;
            backdrop-filter: blur(20px);
            border: 2px solid rgba(255,255,255,0.2);
        }
        #seconddiv{
            border-radius: 15px;
            width: 32%;
            text-align: center;
            height: 350px;
            float: left;
            margin-top: 6%;
            box-shadow: 5px 5px 50px 10px grey;
            font-family: myfont;
            background-color: white;
            position: absolute;
            margin-left: 36%;
            
        }
        #seconddiv h1{
            margin-top: 30%;
        }
        #seconddiv h1, p{
            background: linear-gradient(90deg, rgba(30,112,154,1) 10%, #315fd3 32%, rgba(0,212,255,1) 79%);
            -webkit-text-fill-color: transparent;
            -webkit-background-clip: text;
        }
        #seconddiv button{
            border: none;
            width: 30%;
            height: 35px;
            font-family: myfont;
            font-size: 18px;
            background-color: #1e7099;
            color: white;
            box-shadow: 2px 2px 10px grey;
            border-radius: 20px;
        }

        h3{
            margin-left: 5%;
            margin-top: 5px;
            width: 100%;
            font-size: 28px;
            font-family: myfont;
            color: #fff;
}
        
        td{
            padding-left: 15px;
            font-family: 'Poppins', sans-serif;
            color: #fff;
            font-size: 12px;
            text-align: center;
        }
        .input{
            margin-bottom: 15px;
            width: 90%;
            background: transparent;
            border: none;
            outline: none;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 40px;
            font-size: 13px;
            color: #fff;
            font-family: 'Poppins', sans-serif;
            height: 30px;
            padding-left: 10px;
            position: relative;
        }

        .input::placeholder {
            color: #fff;
            text-align: center;
        }
        
        .input:focus{
        	box-shadow: 0 0 5px #fff;
        }

        .fa{
            font-size: 20px;
            position: absolute;
            right: 16%;
            margin-top: 7px;
        }
        
        #btn{
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            text-align: center;
            width: 90%;
            height: 30px;
            margin-bottom: 10px;
            margin-top: 10px;
            font-family: 'Poppins', sans-serif;
            color: #fff;
        }

        #btn:hover{
            background-color: #fff;
            color: black;
        }
        a{
            color: #fff;
        }

        #radiobtn{
            width: 25px;
        }
        
        h4{
        	text-align: center;
        	font-size: 22px;
        	color: #383630;
        	font-family: myfont;
        }
        
        .popup{
        	font-size: 12px;
        	font-family: 'Poppins', sans-serif;
        	color: #383630;
        	font-weight: 600;
        	
        }
    </style>
</head>
<body>

	<%String msg=request.getParameter("msg");
	 if("valid".equals(msg))
	 {%>
		 <h4 style="color: #fff;">Successfully Registered!</h4>
		 <%response.sendRedirect("login.jsp"); %>
	 <%}%>
	 
	 <%if("invalid".equals(msg))
	 {%>
		 <h4>The email id already exists.</h4>
	 <%}%>
	 
	 
    <div class="container">
    <div id="maindiv">
        <form action="register" method="post">
            <table>
                <tr>
                    <th colspan="2"><h3>Create &nbsp; An &nbsp; Account</h3></th>
                </tr>
                <tr>
                    <td><input class="input" placeholder="Enter First Name" name="ufname" id="fname" onblur="check_fname()"><div class="popup" id="fname_txt"></div></td>
                    <td ><input class="input" placeholder="Enter Last Name" name="ulname" id="lname" onblur="check_lname()" ><div class="popup" id="lname_txt"></div></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="email" class="input" placeholder="Enter Email address" name="uemail" id="email" onblur="check_email()" >
                    <div class="popup" id="email_txt"></div>
                        <i class="fa fa-envelope"></i></td>
                </tr>

                <tr>
                    <td colspan="2"><input class="input" placeholder="Enter Mobile number" name="uphn" id="phone" onblur="check_ph()" >
                    <div class="popup" id="phone_txt"></div>
                        <i class="fa fa-phone"></i></td>
                </tr>
                <tr>
                    <td style="text-align: left;">Gender </td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="radio" id="radiobtn" class="" name="Gender" value="male" />Male
                    <input type="radio" id="radiobtn" class="" name="Gender" value="female" />Female
                    <input type="radio" id="radiobtn" class="" name="Gender" value="other" />Prefer not to say
                    <div class="popup" id="radio_txt"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="password"  class="input" placeholder="Enter password" name="upass" id="pass" onblur="check_pas()">
                    <div class="popup" id="pass_txt"></div>
                        <i class="fa fa-lock" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="password"  class="input" placeholder="Re-enter password" name="uconpass" id="conpass"  onblur="check_pas()" >
                    <div class="popup" id="cpas"></div>
                        <i class="fa fa-lock" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="checkbox" id="checkbtn" name="uterm" value="true" > I agree to the <a href=""><u><b>Terms & Conditions</b></u></a></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        
                        <button id="btn" type="submit">Submit</button>
                    </td>
                </tr>
            </table></form>
    </div>
    <div id="seconddiv">
        <h1>Welcome Aboard ,</h1>
        <p>If you already have an account, then </p><br>
        <a href="login.jsp"><button>&nbsp;&nbsp;Log in</button></a>
    </div>
</div>


<script type="text/javascript">
	
	function check_fname()
	{
		var fname=document.getElementById("fname").value;
		if(fname=="")
		{
			document.getElementById("fname_txt").innerHTML="Please enter first name";		
		}
		else{
			document.getElementById("fname_txt").innerHTML="";
		}
	}
	
	function check_lname()
	{
		var lname=document.getElementById("lname").value;
		if(lname=="")
		{
			document.getElementById("lname_txt").innerHTML="Please enter last name";		
		}
		else{
			document.getElementById("lname_txt").innerHTML="";
		}
	}
	
	function check_email()
	{
		var email=document.getElementById("email").value;
		
		if( email=="")
		{
			document.getElementById("email_txt").innerHTML="Email field is empty";
		}
		else if(!email.includes("@"))
		{
			document.getElementById("email_txt").innerHTML="Email must contain @ character";		
		}
		else{
			document.getElementById("email_txt").innerHTML="";
		}
	}
	
	function check_ph()
	{
		var phno=document.getElementById("phone").value;
		if((isNaN(phno)))
		{
			document.getElementById("phone_txt").innerHTML="Please enter valid phone number";		
		}
		else if((phno.length >10)){
			var message=document.getElementById("phone_txt")
            message.innerHTML="Phone number should be in 10 digits"
		}
		else{
			document.getElementById("phone_txt").innerHTML="";
		}
	}
	
	function check_pas()
	{
		var pass=document.getElementById("pass").value;
		var cpass=document.getElementById("conpass").value;
		
		if(pass!=cpass)
			{
			var message=document.getElementById("cpas")
            message.innerHTML="Password does't match"
			}
		else if(pass==cpass)
			{
			var message=document.getElementById("cpas")
            message.innerHTML=""
			}
	}
	</script>

</body>
</html>