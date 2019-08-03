<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<%-- <h1>${busRegistration1}</h1>
	<h1>Update your password</h1> --%>
	
	
	
	
	
	
	
	
	<c:url var="myaction" value="/registration/updatePassword"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="busRegistration1">
		
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
	<br>
	<br>
	<br>
		
		
		
		<div class="row justify-content-center">
			<div class="col-md-3">
				<div class="card">
					<header class="card-header">
					<h4 class="card-title mt-2">Update Your Password</h4>
					</header>
		
			
			<div class=" form-group">
						<div class="col-md-11">
							<spring-form:label path="userName">UserName</spring-form:label>
							<spring-form:input path="userName" disabled="true"  name="userName" id="userName"
								class="form-control"   readonly="true" value="${userName } "/>
							<spring-form:errors path="userName" class="error"></spring-form:errors>
						</div>
					</div>
			
		<%-- 	<spring-form:input path="userName" disabled="true" readonly="true" value="${userName }"/> --%>
			
			
			<div class=" form-group">
						<div class="col-md-11">
		<spring-form:label path="password">Password</spring-form:label>
				<spring-form:password path="password" 
						id="txtPassword"  class="form-control" />
						<spring-form:errors path="password" cssClass="error"></spring-form:errors>
			</div>
			</div>


			
					<div class=" form-group">
						<div class="col-md-11">
						<spring-form:label path="password"> Confirm Password</spring-form:label>
							<input type="password" name="cnfpassword"
								id="txtConfirmPassword"  class="form-control">
						</div>
					</div>


					<div class="form-group ">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary"
								value="UPDATE PASSWORD" onclick="return Validate()">Update
								Password</button>
							<!-- <input type="submit" value="UPDATE PASSWORD" onclick="return Validate()"/> -->
						</div>
					</div>
					</div>
					</div>
					</div>
					
					<%@include file="footer.jsp" %>
					
					
					</spring-form:form>
		<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</body>
</html>