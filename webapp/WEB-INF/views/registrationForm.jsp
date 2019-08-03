<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>

<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	

	

	<!-- controllers -->
	


	<c:url var="myaction" value="/registration/saveBusRegistration"></c:url>
	
	<spring-form:form id="registerForm" modelAttribute="busRegistration"
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

		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card">
					<header class="card-header">
						<div><a href="${pageContext.request.contextPath }/login/showLogin" class="float-right btn btn-outline-primary mt-1 ml-5">Log
							in</a></div>
							
						<h4 class="card-title mt-2">Sign up</h4>
					</header>

					<article class="card-body">

	<div class="form-group">
						<spring-form:label  path="title">Title</spring-form:label>
				<spring-form:select path="title" name="title" class="form-control">
						<spring-form:option value="Mr."  label="Mr." />
						<spring-form:option value="Mrs."  label="Mrs." />
							</spring-form:select>
						</div>

						<div class=" form-group">
							<spring-form:label path="userName">UserName</spring-form:label>

							<spring-form:input path="userName" name="userName" id="userName"
								class="form-control" />
								<spring-form:errors path="userName" class="error"></spring-form:errors>
						</div>

						<div class="form-row">
							<div class="col form-group">
								<spring-form:label path="firstName">First Name</spring-form:label>

								<spring-form:input path="firstName" name="firstName"
									id="firstName" class="form-control" />
										<spring-form:errors path="firstName" class="error"></spring-form:errors>
							</div>

							<div class="col form-group">
								<spring-form:label path="middleName">Middle Name</spring-form:label>

								<spring-form:input path="middleName" name="middleName"
									id="middleName" class="form-control" />
									

							</div>

							<div class="col form-group">
								<spring-form:label path="lastName">Last Name</spring-form:label>

								<spring-form:input path="lastName" name="lastName" id="lastName" class="form-control"/>
									<spring-form:errors path="lastName" class="error"></spring-form:errors>
							</div>
						</div>

						<div class="form-group">
							<spring-form:label path="emailId">Email ID</spring-form:label>

							<spring-form:input path="emailId" name="emailId" id="emailId"
								class="form-control" />
							<small class="form-text text-muted">We'll never share
								your email with anyone else.</small>
									<spring-form:errors path="emailId" class="error"></spring-form:errors>
						</div>


						<div class="form-group">
							<spring-form:label path="password">Password</spring-form:label>
							<spring-form:password path="password" name="password"
								id="password" class="form-control" />
									<spring-form:errors path="password" class="error"></spring-form:errors>
						</div>

						<div class="form-group">
							<spring-form:label path="phoneNo">Phone</spring-form:label>

							<spring-form:input path="phoneNo" name="phoneNo" id="phoneNo"
								class="form-control" />
									<spring-form:errors path="phoneNo" class="error"></spring-form:errors>
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
				<spring-form:errors path="securityAnswer" class="error"></spring-form:errors>
            </div>
		





						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Register</button>
						</div>
						<!-- form-group// -->
						<small class="text-muted">By clicking the 'Sign Up'
							button, you confirm that you accept our Terms of use
							and Privacy Policy.
						</small>
	</article>
	<!-- card-body end .// -->
	<div class="border-top card-body text-center">
		Have an account? <a href="${pageContext.request.contextPath }/login/showLogin">Log In</a>
	</div>
	</div>
	<!-- card.// -->
	</div>
	<!-- col.//-->

	</div>
	<!-- row.//-->
	<br>
	<br>
	
	<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy;BusAdda</small>
    </div>
  </footer>
	
	</spring-form:form>

	



</body>
</html>