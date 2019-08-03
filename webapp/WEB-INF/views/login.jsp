<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>
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
<script>
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>

<style type="text/css">
.error {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
	onunload=" ">


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
				<a href="${pageContext.request.contextPath }/feedback/providevalue"
					class="nav-item nav-link">Feedback</a> <a
					href="${pageContext.request.contextPath }/contactUs/contactPage"
					class="nav-item nav-link">Contact Us</a>



			</div>


		<%-- 	<div class="nav navbar-nav ml-auto ">

				<a href="#" class="nav-item nav-link"></a>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="menu1" data-toggle="dropdown">
						<img src="https://img.icons8.com/bubbles/50/000000/user.png">

					</button>
					<div class="d-flex justify-content-around">
						<div class="dropdown-menu">
							<a class="dropdown-item"
								href="${pageContext.request.contextPath }/login/showLogin">Login</a>
							<a class="dropdown-item"
								href="${pageContext.request.contextPath }/registration/showRegistration">SignUp</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item"
								href="${pageContext.request.contextPath }/bus/showAdminLogin">Admin
								Login</a>
						</div>
					</div>
				</div>
			</div> --%>
		</div>


	</nav>

	<br>
	<br>
	<br>
	<br><br>




	<c:url var="myaction" value="/login/checkLogin"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="busLogin">

		<div class="row justify-content-center">
			<div class="col-md-3">
				<div class="card">
					<header class="card-header">
						<h4 class="card-title mt-1">${msg }</h4>
					</header>
					<br>

					<div class=" form-group">
						<div class="col-md-11">
							<spring-form:label path="userName">UserName</spring-form:label>

							<spring-form:input path="userName" name="userName" id="userName"
								class="form-control" />
							<spring-form:errors path="userName" class="error"></spring-form:errors>
						</div>
					</div>



					<div class="form-group">
						<div class="col-md-11">
							<spring-form:label path="password">Password</spring-form:label>
							<spring-form:password path="password" name="password"
								id="password" class="form-control" />
							<spring-form:errors path="password" cssClass="error"></spring-form:errors>
						</div>

					</div>




					<div class="form-group row">
						<div class="offset-sm-1 col-sm-10">
							<button type="submit" class="btn btn-primary">Sign in</button>
							<a class="btn btn-info btn-md ml-3"
								href="${pageContext.request.contextPath }/registration/fetch">Forgot
								Password </a><br> <a
								href="/Uiproject/registration/showRegistration">New
								user?</a>

						</div>
					</div>


				</div>

			</div>
		</div>
		<br>
		<br>
		<br>
		<br>

	<%@include file="footer.jsp" %>

	</spring-form:form>
</body>
</html>