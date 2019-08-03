<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>



	
	<!-- controllers -->
	<c:url var="myaction" value="/contactUs/saveDetails"></c:url>
	<spring-form:form id="contactUs" modelAttribute="contactUs"
		action="${myaction}" method="post">
		

						
						
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
				<a href="${pageContext.request.contextPath }/contactUs/saveDetails" class="nav-item nav-link">Contact Us</a> 
			
					

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
						
						<div class="row justify-content-center">
			<div class="col-md-3">
				<div class="card">
					<header class="card-header">
						
							
						<h4 class="card-title mt-2">Contact Us</h4>
					</header>

					<article class="card-body">

		<div class="form-group">
			<spring-form:label path="name">Name</spring-form:label>
			<spring-form:input path="name" name="name" id="name"
				class="form-control" />
			<spring-form:errors path="name" class="error"></spring-form:errors>
		</div>


		<div class="form-group">
			<spring-form:label path="message">Message</spring-form:label>
			<spring-form:input path="message" name="message" id="message"
				class="form-control" />
			<spring-form:errors path="message" class="error"></spring-form:errors>
		</div>

		<div class="form-group">
			<spring-form:label path="email">Email ID</spring-form:label>
			<spring-form:input path="email" name="email" id="email"
				class="form-control" />
			<spring-form:errors path="email" class="error"></spring-form:errors>
			</div>
			
			
			<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Submit</button>
						</div>
		</article>
		</div>
		</div>
		</div>
		
		<br>
	<br>
	
	<!-- <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy;BusAdda</small>
    </div>
  </footer> -->
  <%@include file="footer.jsp" %>

	</spring-form:form>
</body>
</html>