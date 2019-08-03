<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<!-- <link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
  $( function() {
    $( "#departureDate" ).datepicker({minDate:0});
  } );
  </script>
  
 

<style>
footer {
  background: #16222A;
  background: -webkit-linear-gradient(59deg, #3A6073, #16222A);
  background: linear-gradient(59deg, #3A6073, #16222A);
  color: white;
  margin-top:100px;
}
 

footer a {
  color: #fff;
  font-size: 14px;
  transition-duration: 0.2s;
}

footer a:hover {
  color: #FA944B;
  text-decoration: none;
}

.copy {
  font-size: 12px;
  padding: 10px;
  border-top: 1px solid #FFFFFF;
}

.footer-middle {
  padding-top: 2em;
  color: white;
}


/*SOCİAL İCONS*/

/* footer social icons */

ul.social-network {
  list-style: none;
  display: inline;
  margin-left: 0 !important;
  padding: 0;
}

ul.social-network li {
  display: inline;
  margin: 0 5px;
}


/* footer social icons */

.social-network a.icoFacebook:hover {
  background-color: #3B5998;
}

.social-network a.icoLinkedin:hover {
  background-color: #007bb7;
}

.social-network a.icoFacebook:hover i,
.social-network a.icoLinkedin:hover i {
  color: #fff;
}

.social-network a.socialIcon:hover,
.socialHoverClass {
  color: #44BCDD;
}

.social-circle li a {
  display: inline-block;
  position: relative;
  margin: 0 auto 0 auto;
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  text-align: center;
  width: 30px;
  height: 30px;
  font-size: 15px;
}

.social-circle li i {
  margin: 0;
  line-height: 30px;
  text-align: center;
}

.social-circle li a:hover i,
.triggeredHover {
  -moz-transform: rotate(360deg);
  -webkit-transform: rotate(360deg);
  -ms--transform: rotate(360deg);
  transform: rotate(360deg);
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -ms-transition: all 0.2s;
  transition: all 0.2s;
}

.social-circle i {
  color: #595959;
  -webkit-transition: all 0.8s;
  -moz-transition: all 0.8s;
  -o-transition: all 0.8s;
  -ms-transition: all 0.8s;
  transition: all 0.8s;
}

.social-network a {
  background-color: #F9F9F9;
}

</style>

<style>
.section {
	position: relative;
	height: 100vh;
}

body {  
	background-image: url('../images/bg_1.jpg') ;
}

.section .section-center {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

#booking {

	font-family: 'Montserrat', sans-serif;
/* 	background-image: url('../images/bg_1.jpg') ;  */
	background-size: cover;
    background-position: top;
    overflow: hidden;
    background-size: cover;
    width: 100%;
    min-height: 100vh;
}

header {
height: 100vh;
}

#booking::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
 background: rgba(47, 103, 177, 0.2); 
}

.booking-form {
	
	/* background-color: #ffffff */
	padding: 50px 20px;
	-webkit-box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
	border-radius: 4px;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 30px;
}

.booking-form .form-control {
	 background-color: #ebecee; 
	border-radius: 4px;
	border: none;
	height: 40px;
	-webkit-box-shadow: none;
	box-shadow: none;
	color: #3e485c;
	font-size: 14px;
}

.booking-form .form-control::-webkit-input-placeholder {
 	color: rgba(62, 72, 92, 0.3); 
}

.booking-form .form-control:-ms-input-placeholder {
 	color: rgba(62, 72, 92, 0.3); 
}

.booking-form .form-control::placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 0px;
	bottom: 4px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: rgba(62, 72, 92, 0.3);
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.booking-form .form-label {
	display: inline-block;
	color: #3e485c;
	font-weight: 700;
	margin-bottom: 6px;
	margin-left: 7px;
}

.booking-form .submit-btn {
	display: inline-block;
	color: #fff;
	background-color: #1e62d8; 
	font-weight: 700;
	padding: 14px 30px;
	border-radius: 4px;
	border: none;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
	opacity: 0.9;
}

.booking-cta {
	margin-top: 0px;
	margin-bottom: 0px;
}

.booking-cta h1 {
	font-size: 52px;
	text-transform: uppercase;
	color: #fff;
	font-weight: 700;
	margin: 0;
}

.booking-cta p {
	font-size: 16px;
	color: rgba(255, 255, 255, 0.8);
}
</style>
</head>

<body>
<c:url var="myaction" value="/bus/getBusDetails"></c:url>
<spring-form:form action="${myaction}" method="post"
	modelAttribute="bus">


<nav class="navbar navbar-expand-md navbar-light bg-light">
		<a class="navbar-brand" href="/Uiproject/bus/search"> <img
			src="https://img.icons8.com/cute-clipart/64/000000/bus.png"></a>
		<button type="button" class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav">
				<a href="/Uiproject/bus/search" class="nav-item nav-link active">Home</a> 
				<a href="${pageContext.request.contextPath }/feedback/providevalue"class="nav-item nav-link">Feedback</a> 
				<a href="${pageContext.request.contextPath }/contactUs/contactPage" class="nav-item nav-link">Contact Us</a> 
			
					

			</div>


			<div class="nav navbar-nav ml-auto ">

				<a href="#" class="nav-item nav-link"></a>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="menu1" data-toggle="dropdown">
						<img src="https://img.icons8.com/bubbles/50/000000/user.png" >
                         
					</button>
<div class="d-flex justify-content-around">
					<div class="dropdown-menu">
						<a class="dropdown-item" href="${pageContext.request.contextPath }/login/showLogin">Login</a> <a
							class="dropdown-item" href="${pageContext.request.contextPath }/registration/showRegistration">SignUp</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${pageContext.request.contextPath }/bus/showAdminLogin">Admin Login</a>
					</div>
</div>
</div>
				</div>
			</div>
		

	</nav>



<div>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
							<h1>Make your reservation</h1>
								<br>
					<br>
							<br>
	
						</div>
					</div>
			<br>
                  
                  <table>
                  <tr>
                  <td><div>
                  <div class="booking-cta">
						<div class="form-group">
							<label for="source" style="color:white;">Source</label>
							<spring-form:select path="source" class="form-control"
								id="source">
						
								<spring-form:option value="Mumbai" label="Mumbai" />
								<spring-form:option value="Navi Mumbai" label="Navi Mumbai" />
								<spring-form:option value="Lonavala" label="Lonavala" />
								<spring-form:option value="Pune" label="Pune" />
								<spring-form:option value="Goa" label="Goa" />
								<spring-form:option value="Bangalore" label="Bangalore" />
								<spring-form:option value="Ahmedabad" label="Ahmedabad" />
								<spring-form:option value="Surat" label="Surat" />
								<spring-form:option value="Jaipur" label="Jaipur" />
							</spring-form:select>
							<spring-form:errors path="source" class="error"></spring-form:errors>
						</div>
					</div>
					</div></td>
					
					
                  <td>	<div class="offset-sm-1">
						<div class="form-group">
							<label for="destination" style="color:white;">Destination</label>
							<spring-form:select path="destination" class="form-control"
								id="destination" onchange="return validate();">
								<spring-form:option value="Pune" label="Pune" />
								<spring-form:option value="Goa" label="Goa" />
								<spring-form:option value="Navi Mumbai" label="Navi Mumbai" />
								<spring-form:option value="Mumbai" label="Mumbai" />
								<spring-form:option value="Lonavala" label="Lonavala" />
						    	<spring-form:option value="Bangalore" label="Bangalore" />
								<spring-form:option value="Ahmedabad" label="Ahmedabad" />
								<spring-form:option value="Surat" label="Surat" />
								<spring-form:option value="Jaipur" label="Jaipur" />
							</spring-form:select>
							<spring-form:errors path="destination" class="error"></spring-form:errors>
							
						</div>
					</div>
                  </td>
                  
                  
                  <td><div class="offset-sm-1">

						<div class="form-group">

							<label for="departureDate" style="color:white;" >Departure Date</label>
							<spring-form:input path="departureDate" type="text"
								class="form-control" id="departureDate" placeholder="mm/dd/yyyy" />
							<spring-form:errors path="departureDate" class="error"></spring-form:errors>
						</div>
					</div>
					
                  </td>
                  
                  <td>
                  	<div class="offset-sm-1">
                  	<label for="" style="color:white;" ></label>
					<button type="submit" class="btn btn-info">Book Seats</button>
				</div>
                  
                  </td>
                  
                  
                  </tr>
                  
                  </table>

				</div>
			</div>
		</div>
	</div>
	</div>
	



<footer class="mainfooter" role="contentinfo">
  <div class="footer-middle">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
        <a class="navbar-brand" href="/Uiproject/bus/search">
				<img src="https://img.icons8.com/cute-clipart/64/000000/bus.png"  width="50"
			height="50"></a>
						<br><hr>
						<p>BusAdda is the world's largest online 
          bus ticket booking service trusted by over 
          17 million happy customers globally. 
          BusAdda offers bus ticket booking through 
          its website,iOS and Android mobile apps for 
          all major routes.</p>
        </div>
      </div>
     
      <div class="offset-sm-2 col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
        <br>
        
        <br><hr>
          <h4>Links</h4>
          <ul class="list-unstyled">
            <li><a href="#">Home</a></li>
            <li><a href="${pageContext.request.contextPath }/feedback/providevalue">Feedback</a></li>
            <li><a href="${pageContext.request.contextPath }/contactUs/contactPage">Contact Us</a></li>
          </ul>
        </div>
      </div>
    	<div class="offset-sm-1 col-md-3">
    	 <br>
        <br>
        
    	<hr>
    		<h4>Follow Us</h4>
            <ul class="social-network social-circle">
             <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
             <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
            </ul>				
		</div>
    </div>
	<div class="row">
		<div class="col-md-12 copy">
			<p class="text-center">&copy; Copyright 2019 - BusAdda </p>
		</div>
	</div>

  </div>
  </div>
</footer>
  
  

</spring-form:form>

 <script type="text/javascript">
		function validate() {
			//alert("Source and destination ");
			var s = document.getElementById("source");
			var strSource = s.options[s.selectedIndex].value;
			//alert("Source and destination " + strSource);

			var d = document.getElementById("destination");
			var strDest = d.options[d.selectedIndex].value;
			//alert(" destination : " + strDest);
			//if you need text to be compared then use
			if (strSource == strDest) //for text use if(strUser1=="Select")
			{
				alert("Source and Destination should be different!");
				//this.getField("destination").setFocus();
				//	return false;
			}
		}
	</script>
<%-- <%@include file="footer.jsp" %>  --%>
</body>



