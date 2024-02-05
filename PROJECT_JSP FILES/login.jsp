<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIITM</title>
  <link href="KIITM logo2.jpeg" rel="icon">
    <link rel="stylesheet" href="login.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
    @font-face {
            font-family: myfont;
            src: url(Canela\ Deck\ Family/CanelaDeck-Regular-Trial.otf);
        }
    
   h4{
	text-align: center;
    font-size: 18px;
    color: #383630;
    font-family: myfont;
   margin-top: 10px;
    
}
    </style>
</head>
<body>

	
    <div class="wrapper">
        <form action="Login" method="post">
            <h1>Login</h1>
            <%String msg=request.getParameter("msg");
				if("invalid".equals(msg)){%>
				
					<h4>Email or Password error!</h4>
				
				<% } %>
            <div class="select-box">
                <select name="utype" id="">
                    <option value="0">Please Select</option>
                    <option value="1">Student</option>
                    <option value="2">Admin</option>
                </select>
            </div>
            <div class="input-box">
                <input type="text" name="uemail" id="" placeholder="Email address" required>
                <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">
                <input type="password" name="upass" id="" placeholder="Password" required>
                <i class='bx bxs-lock-alt'></i>
            </div>
            <div class="remember-forgot">
                <label for=""><input type="checkbox" name="chkbox" id="">Remember me</label>
                <a href="Forget_password.jsp">Forgot password?</a>
            </div>

            <button type="submit" class="btn">Login</button>

            <div class="register-link">
                <p>Don't have an account? <a href="SignIn.jsp">Register</a></p>
            </div>
        </form>
    </div>
</body>
</html>