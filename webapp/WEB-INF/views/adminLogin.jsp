<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<script>
window.history.forward();
function noBack(){
	window.history.forward();
}
</script>

<style>
/*
 * Specific styles of signin component
 */
/*
 * General styles
 */
body, html {
    height: 100%;
    background-repeat: no-repeat;
    background-image:url('../images/bng.jpg');
}

.card-container.card {
    max-width: 350px;
    padding: 40px 40px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

/*
 * Card component
 */
.card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.reauth-email {
    display: block;
    color: #404040;
    line-height: 2;
    margin-bottom: 10px;
    font-size: 14px;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin #inputEmail,
.form-signin #inputPassword {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=email],
.form-signin input[type=password],
.form-signin input[type=text],
.form-signin button {
    width: 100%;
    display: block;
    margin-bottom: 10px;
    z-index: 1;
    position: relative;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin .form-control:focus {
    border-color: rgb(104, 145, 162);
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
}

.btn.btn-signin {
    /*background-color: #4d90fe; */
    background-color: rgb(104, 145, 162);
    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    -o-transition: all 0.218s;
    -moz-transition: all 0.218s;
    -webkit-transition: all 0.218s;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(12, 97, 33);
}

.forgot-password {
    color: rgb(104, 145, 162);
}

.forgot-password:hover,
.forgot-password:active,
.forgot-password:focus{
    color: rgb(12, 97, 33);
}

</style>

<style>
.bg-primary {
 background-color: #000 !important;
}

.bg-circle
{
  display: inline-block;
  width: 60px;
  height: 60px;
  padding: 14px 4px;
  color: #ececec;
  text-align: center;
  border-radius: 50%;
}

.bg-circle-outline
{
  width: 50px;
  height: 50px;
  color:smoke;
  padding: 8px 2px;
  border: 2px solid;
  border-color: smoke;
  border-radius: 50%;
}


.bg-circle a, a:hover, .media a:focus
{
  text-decoration: none !important;
  outline: none;
  color: #ececec;
}
.bg-circle-outline a, a:hover, .media a:focus
{
  text-decoration: none !important;
  outline: none;
  color: #ececec;
}



</style>
<title>Admin Login</title>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
onunload=" ">


<c:url var="myaction" value="/bus/loginAdmin"></c:url>

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

 <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="../images/admin1.png" />
            <p id="profile-name" class="profile-name-card"></p>

<form action="${myaction}" method="get"   class="form-signin">
 
       
                <input type="text" id="inputEmail" class="form-control"  name="username" placeholder="UserName"  autofocus>
                <input type="password" id="inputPassword"  name="password"class="form-control" placeholder="Password" >
                <div id="remember" class="checkbox">
                    <br>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
      
      
      
</form>
</div>
</div>

<!-- <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; BusAdda</small>
    </div>
  </footer> -->

<footer>
  <div class="container-fluid bg-faded mt-5">
    <div class="container">
      <div class="row py-3">
        <!-- footer column 1 start -->
        <div class="col-md-4">
          <!-- row start -->
          <div class="row py-2">
          
          
          </div>
          <!-- row end -->
        </div>
        <!-- footer column 1 end -->
        <!-- footer column 2 start -->
        <div class="col-md-4">
          <!-- row start -->
         
          <!-- row end -->
          <!-- row start -->
          <div class="row py-2">
            
            
          </div>
          <!-- row end -->
        </div>
        <!-- footer column 2 end -->
        <!-- footer column 3 start -->
        <div class="col-md-4">
          <!-- row starting  -->
        
          <!-- row ended -->
          <!-- row starting  -->
        
          <!-- row ended -->
        </div>
        <!-- footer column 3 end -->
      </div>
    </div>
  </div>


  <div class="container-fluid bg-primary py-3">
    <div class="container">
      <div class="row py-3">
        <div class="col-md-9">
          <p class="text-white">Tidsskriftet Journalen utgis av Oslos legeforening og utkommer fire ganger i året. Ettertrykk og elektronisk videredistribusjon kun tillatt etter særskilt avtale. Redaktør: Per Helge Måseide.</p>
        </div>
        <div class="col-md-3">
          <div class="bg-circle-outline d-inline-block">
            <a href="https://www.facebook.com/fagbladetjournalen/" class="text-white"><i class="fa fa-2x fa-fw fa-facebook"></i>
		</a>
          </div>

          <div class="bg-circle-outline d-inline-block">
            <a href="https://twitter.com/Journalen" class="text-white">
              <i class="fa fa-2x fa-fw fa-twitter"></i></a>
          </div>

          <div class="bg-circle-outline d-inline-block">
            <a href="https://www.linkedin.com/company/9341247" class="text-white">
              <i class="fa fa-2x fa-fw fa-linkedin"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
  
</body>
</html>