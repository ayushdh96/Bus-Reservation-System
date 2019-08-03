<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<title>Customer Save Page</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- <h1>Please enter the following details to reset your password</h1> -->
	<c:url var="myaction" value="/registration/checkSecurityQuestion"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="busRegistration">
	
	
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
				<a href="#" class="nav-item nav-link">Contact Us</a> 
			
					

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
	<br>
<br>
	<br>
	<br>
	
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<header class="card-header">
					
						<h4 class="card-title mt-2">Reset Your Password!!</h4>
					</header>

					<article class="card-body">
	
	
	
				<div class=" form-group">
							<spring-form:label path="userName">UserName</spring-form:label>

							<spring-form:input path="userName" name="userName" id="userName"
								class="form-control" />
						</div>
			
			
			
		<div class="form-group">
						<spring-form:label path="securityQuestion">Security Question</spring-form:label>
				<spring-form:select path="securityQuestion" class="form-control">
						<spring-form:option value="What was your first friend name?"
							label="What was your first friend name?" />
						<spring-form:option value="What is your pet name?"
							label="What is your pet name?" />
						<spring-form:option
							value="What is the name of your favourite sports player?"
							label="What is the name of your favourite sports player?" />
						<spring-form:option
							value="What is the name of your favourite book?"
							label="What is the name of your favourite book?" />
						<spring-form:option value="Who is your favourite author?"
							label="Who is your favourite author?" />
					</spring-form:select>
					</div>
					
			<div class="form-group">
				<spring-form:label path="securityAnswer">Security Answer</spring-form:label>
				<spring-form:input path="securityAnswer" name="securityAnswer" id="securityAnswer"  class="form-control"  />
            </div>
		
			
						<div class="form-group">
							<button type="submit" class="btn btn-lg btn-info btn-block">
							Reset</button>
						</div>
			</article>
			</div>
	</div>
	
	</div>
	<br>
	<br>
	
<!-- 	<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy;BusAdda</small>
    </div>
  </footer> -->
  
  <%@include file="footer.jsp" %>
	</spring-form:form>
</body>
</html>