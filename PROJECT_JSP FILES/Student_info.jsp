<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <jsp:include page="student_sidebar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Makaut, WB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="student.css">
</head>
<body>
<div id="empty"></div>
<div id="stutitle"><h2>Student Information</h2><hr></div>

	<div class="Container" id="form">
	<form action="" >
 	<div class="row1"><h3>Personal Basic Details </h3></div>
 	<div class="row g-3">
  <div class="col-md-4">
    <label for="inputName" class="form-label">Applicant's First Name</label>
    <input type="text" class="form-control" id="inputName" placeholder="First Name">
  </div>
  <div class="col-md-4">
    <label for="inputName2" class="form-label">Applicant's Middle Name</label>
    <input type="email" class="form-control" id="inputName2" placeholder="Middle Name">
  </div>
    <div class="col-md-4">
    <label for="inputName." class="form-label">Applicant's Last Name</label>
    <input type="email" class="form-control" id="inputName3" placeholder="Last Name">
  </div>
  </div>
  <div class="row g-3">
    <div class="col-md-4">
    <label for="inputName" class="form-label">Applicant's Father's First Name</label>
    <input type="text" class="form-control" id="inputName" placeholder="First Name">
  </div>
  <div class="col-md-4">
    <label for="inputName2" class="form-label">Applicant's Father's Middle Name</label>
    <input type="email" class="form-control" id="inputName2" placeholder="Middle Name">
  </div>
    <div class="col-md-4">
    <label for="inputName" class="form-label">Applicant's Father's Last Name</label>
    <input type="email" class="form-control" id="inputName" placeholder="Last Name">
  </div>
  </div>
  <div class="row g-3">
    <div class="col-md-4">
    <label for="inputName" class="form-label">Applicant's Mother's First Name</label>
    <input type="text" class="form-control" id="inputName" placeholder="First Name">
  </div>
  <div class="col-md-4">
    <label for="inputName2" class="form-label">Applicant's Mother's Middle Name</label>
    <input type="email" class="form-control" id="inputName2" placeholder="Middle Name">
  </div>
    <div class="col-md-4">
    <label for="inputName" class="form-label">Applicant's Mother's Last Name</label>
    <input type="email" class="form-control" id="inputName" placeholder="Last Name">
  </div>
  </div>
  <div class="row g-3">
  <div class="col-md-4">
    <label for="inputSex" class="form-label">Sex</label>
    <br>
    <select name="ugender" id="">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
                    <option value="0">Male</option>
                    <option value="1">Female</option>
                    <option value="2">Other</option>
                </select>
  </div>
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">Email ID</label>
    <input type="email" class="form-control" id="inputEmail4" placeholder="Email address">
  </div>
  <div class="col-md-4">
    <label for="inputNumber" class="form-label">Mobile no</label>
    <input type="text" class="form-control" id="inputNumber" placeholder="Mobile No">
  </div>
  </div>
  <div class="row ">
    <div class="col-md-4">
    <label for="inputRel" class="form-label">Religion</label>
    <select class="form-control dropdown" id="religion" name="religion">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
     <option value="Hinduism">Hinduism</option>
      <option value="Islam">Islam</option>
    <option value="Christianity">Christianity</option>
    <option value="Buddhism">Buddhism</option>
    <option value="Jainism">Jainism</option>
    <option value="Judaism">Judaism</option>
    <option value="Secular">Secular</option>
    <option value="Sikhism">Sikhism</option>
  </select>
  </div>
    <div class="col-md-4">
    <label for="inputCas" class="form-label">Caste</label>
    <input type="text" class="form-control" id="inputCas" placeholder="Caste">
  </div>
   <div class="col-md-4">
    <label for="inputdate" class="form-label">Date-of-Birth</label>
    <input type="date" class="form-control" id="inputdate" placeholder="Date of Birth">
  </div>
  </div>
  <div class="row g-2">
  <div class="col-md-4">
    <label for="inputadh" class="form-label">Do you have an Aadhaar card?</label>
    <select name="uadhask" id="aadhar" onchange="yesnoCheck(this);">
    				<option value="" selected="selected" disabled="disabled">-- select one --</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
  </div>
  <div class="col-md-4" id="ifYes"   style="display: none;">
    <label for="inputadhno" class="form-label">Aadhaar Number</label>
    <input type="text" class="form-control" id="inputadhno" placeholder="Aadhaar No">
</div>
</div>
  <div class="row1"><h3>Present Family Address</h3> </div>
  <div class="row g-3">
  <div class="col-md-4">
    <label for="inputAddress" class="form-label">House No</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="House no">
  </div>
  <div class="col-md-4">
    <label for="inputAddress" class="form-label">Street Name</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Street No">
  </div>
    <div class="col-md-4">
    <label for="inputAddress" class="form-label">Town/Village</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Town/Village">
  </div>
  </div>
  <div class="row g-2">
   <div class="col-md-4">
    <label for="inputAddress" class="form-label">Post Office</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Post Office">
  </div>
   <div class="col-md-4" style="float: right;">
    <label for="inputAddress" class="form-label">Pin Code</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Pin code">
  </div>
  </div>
  <div class="row g-2">
   <div class="col-md-4">
    <label for="inputAddress" class="form-label">District</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="District">
  </div>
 	   <div class="col-md-4" style="float: right;">
    <label for="inputAddress" class="form-label">State</label><br>
    <select name="ustate">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
    <option value="AP">Andhra Pradesh</option>
	<option value="AR">Arunachal Pradesh</option>
	<option value="AS">Assam</option>
	<option value="BR">Bihar</option>
	<option value="CT">Chhattisgarh</option>
	<option value="GA">Gujarat</option>
	<option value="HR">Haryana</option>
	<option value="HP">Himachal Pradesh</option>
	<option value="JK">Jammu and Kashmir</option>
	<option value="GA">Goa</option>
	<option value="JH">Jharkhand</option>
	<option value="KA">Karnataka</option>
	<option value="KL">Kerala</option>
	<option value="MP">Madhya Pradesh</option>
	<option value="MH">Maharashtra</option>
        <option value="MN">Manipur</option>
        <option value="ML">Meghalaya</option>
	<option value="MZ">Mizoram</option>
	<option value="NL">Nagaland</option>
	<option value="OR">Odisha</option>
	<option value="PB">Punjab</option>
	<option value="RJ">Rajasthan</option>
	<option value="SK">Sikkim</option>
	<option value="TN">Tamil Nadu</option>
	<option value="TG">Telangana</option>
	<option value="TR">Tripura</option>
	<option value="UT">Uttarakhand</option>
	<option value="UP">Uttar Pradesh</option>
	<option value="WB">West Bengal</option>
	<option value="AN">Andaman and Nicobar Islands</option>
	<option value="CH">Chandigarh</option>
	<option value="DN">Dadra and Nagar Haveli</option>
	<option value="DD">Daman and Diu</option>
	<option value="DL">Delhi</option>
	<option value="LD">Lakshadweep</option>
	<option value="PY">Puducherry</option>
    </select>
  </div>
  </div>
  
  <div class="row1"><h3>Permanent Family Address</h3> </div>
  <div class="row g-3">
  <div class="col-md-4">
    <label for="inputAddress" class="form-label">House No</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="House no">
  </div>
  <div class="col-md-4">
    <label for="inputAddress" class="form-label">Street Name</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Street Name">
  </div>
    <div class="col-md-4">
    <label for="inputAddress" class="form-label">Town/Village</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Town/Village">
  </div>
  </div>
  <div class="row g-2">
   <div class="col-md-4 ">
    <label for="inputAddress" class="form-label">Post Office</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Post Office">
  </div>
   <div class="col-md-4" style="float: right;">
    <label for="inputAddress" class="form-label">Pin Code</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Pin Code">
  </div>
  </div>
  <div class="row g-2">
   <div class="col-md-4">
    <label for="inputAddress" class="form-label">District</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="District">
  </div>
 	   <div class="col-md-4" style="float: right;">
    <label for="inputAddress" class="form-label">State</label><br>
    <select name="ustate">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
    <option value="AP">Andhra Pradesh</option>
	<option value="AR">Arunachal Pradesh</option>
	<option value="AS">Assam</option>
	<option value="BR">Bihar</option>
	<option value="CT">Chhattisgarh</option>
	<option value="GA">Gujarat</option>
	<option value="HR">Haryana</option>
	<option value="HP">Himachal Pradesh</option>
	<option value="JK">Jammu and Kashmir</option>
	<option value="GA">Goa</option>
	<option value="JH">Jharkhand</option>
	<option value="KA">Karnataka</option>
	<option value="KL">Kerala</option>
	<option value="MP">Madhya Pradesh</option>
	<option value="MH">Maharashtra</option>
        <option value="MN">Manipur</option>
        <option value="ML">Meghalaya</option>
	<option value="MZ">Mizoram</option>
	<option value="NL">Nagaland</option>
	<option value="OR">Odisha</option>
	<option value="PB">Punjab</option>
	<option value="RJ">Rajasthan</option>
	<option value="SK">Sikkim</option>
	<option value="TN">Tamil Nadu</option>
	<option value="TG">Telangana</option>
	<option value="TR">Tripura</option>
	<option value="UT">Uttarakhand</option>
	<option value="UP">Uttar Pradesh</option>
	<option value="WB">West Bengal</option>
	<option value="AN">Andaman and Nicobar Islands</option>
	<option value="CH">Chandigarh</option>
	<option value="DN">Dadra and Nagar Haveli</option>
	<option value="DD">Daman and Diu</option>
	<option value="DL">Delhi</option>
	<option value="LD">Lakshadweep</option>
	<option value="PY">Puducherry</option>
    </select>
 
  </div>
  </div>
 
 <div class="row1"><h3>Previous Education Details</h3> </div>
 <div class="row g-3">
   <div class="col-md-4">
    <label for="inputten" class="form-label">Name of the School in 10<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputten" placeholder="School">
  </div>
   <div class="col-md-4">
    <label for="inputten" class="form-label">Name of 10<sup>th</sup> standard board</label>
    <input type="text" class="form-control" id="inputten" placeholder="Board">
  </div>
  <div class="col-md-4">
  <label for="inputten" class="form-label">Year of passing of 10<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputten" placeholder="Year">
  </div>
  </div>
  <div class="row g-2">
    <div class="col-md-4">
    <label for="inputten" class="form-label">Total Marks obtained in 10<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtenmarks" placeholder="Marks" onkeyup="percentageten()">
  </div>
   <div class="col-md-4" style="float: right;">
   <label for="inputten" class="form-label">out of</label>
    <input type="text" class="form-control" id="inputtenoutof" placeholder="Out of" onkeyup="percentageten()">
  </div>
  </div>
  <div class="row">
   <div class="col-md-4" >
   <label for="inputten" class="form-label">Percentage in 10<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtenper" placeholder="Percentage" disabled>
  </div>
  </div>
  <div class="row g-3">
     <div class="col-md-4">
     <label for="inputtwelve" class="form-label">Name of the school in 12<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtwelve" placeholder="School">
  </div>
  <div class="col-md-4">
    <label for="inputtwelve" class="form-label">Name of 12<sup>th</sup> standard board</label>
    <input type="text" class="form-control" id="inputtwelve" placeholder="Board">
  </div>
  <div class="col-md-4">
  <label for="inputtwelve" class="form-label">Year of passing of 12<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtwelve" placeholder="Year">
  </div>
  </div>
  <div class="row g-2">
    <div class="col-md-4">
    <label for="inputtwelve" class="form-label">Total Marks obtained in 12<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtwelvemarks" placeholder="Marks" onkeyup="percentagetwelve()">
  </div>
   <div class="col-md-4" style="float: right;">
   <label for="inputtwelve" class="form-label">out of</label>
    <input type="text" class="form-control" id="inputtwelveoutof" placeholder="Out of" onkeyup="percentagetwelve()">
  </div>
  </div>
  <div class="row">
   <div class="col-md-4">
   <label for="inputtwelve" class="form-label">Percentage in 12<sup>th</sup> standard</label>
    <input type="text" class="form-control" id="inputtwelveper" placeholder="Percentage" disabled>
  </div>
  </div>
  <div class="row" style="text-align: center;">
  <div class="col-md-12">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  </div>
 
</form>
 </div>
 <script>
 function yesnoCheck(that) {
	    if (that.value == "yes") {
	        document.getElementById("ifYes").style.display = "block";
	    } else {
	        document.getElementById("ifYes").style.display = "none";
	    }
 }
function percentageten()
	    {
	            num1 = document.getElementById("inputtenmarks").value;
	            num2 = document.getElementById("inputtenoutof").value;
	            var num=(num1 / num2)*100;
	            document.getElementById("inputtenper").value = num.toFixed(2);
	    }
function percentagetwelve()
{
        num1 = document.getElementById("inputtwelvemarks").value;
        num2 = document.getElementById("inputtwelveoutof").value;
        var num=(num1 / num2)*100;
        document.getElementById("inputtwelveper").value = num.toFixed(2);
}
	    
	
 </script>
</body>
</html>