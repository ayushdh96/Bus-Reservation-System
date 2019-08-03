
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
	<!-- <h1 >Enter your details here</h1> -->
	<c:url var="myaction" value="/passenger/savePassengerDetails"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="passengerDetails">

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


				<div class="nav navbar-nav ml-auto ">

					<a href="#" class="nav-item nav-link"></a>
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							id="menu1" data-toggle="dropdown">
							<img src="https://img.icons8.com/bubbles/50/000000/user.png">

						</button>

					</div>
				</div>
			</div>



		</nav>
		<br>
		<br>



		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<header class="card-header">


						<h4 class="card-title mt-2">User Details</h4>
					</header>

					<article class="card-body">


						<div class="form-group">
							<spring-form:label path="source">Bus Source</spring-form:label>
							<spring-form:input path="source" disabled="true" name="source"
								class="form-control" />
						</div>


						<div class="form-group">
							<spring-form:label path="destination">Bus Destination</spring-form:label>
							<spring-form:input path="destination" disabled="true"
								name="destination" class="form-control" />
						</div>




						<div class="form-group">
							<spring-form:label path="departureDate">Bus Departure Date</spring-form:label>
							<spring-form:input path="departureDate" disabled="true"
								name="departureDate" class="form-control" />
						</div>




						<div class="form-group">
							<spring-form:label path="departureTime">Bus Departure Time</spring-form:label>
							<spring-form:input path="departureTime" disabled="true"
								name="departureTime" class="form-control" />
						</div>


						<div class="form-group">
							<spring-form:label path="arrivalDate">Arrival Date</spring-form:label>
							<spring-form:input path="arrivalDate" disabled="true"
								name="arrivalDate" class="form-control" />
						</div>

						<div class="form-group">
							<spring-form:label path="arrivalTime">Bus Arrival Time</spring-form:label>
							<spring-form:input path="arrivalTime" disabled="true"
								name="arrivalTime" class="form-control" />
						</div>


						<div class="form-group">
							<spring-form:label path="fare">Fare</spring-form:label>
							<spring-form:input path="fare" disabled="true" name="fare"
								class="form-control" />
						</div>



						<div class="form-group">
							<spring-form:label path="journeyDuration">Journey Duration</spring-form:label>
							<spring-form:input path="journeyDuration" disabled="true"
								name="journeyDuration" class="form-control" />
						</div>


						<div class="form-group">
							<spring-form:label path="passengerName">Passenger Name</spring-form:label>
							<spring-form:input path="passengerName"
								placeholder="Enter the Name of Traveller" name="passengerName"
								class="form-control" />
							<spring-form:errors path="passengerName" class="error"></spring-form:errors>
						</div>



						<div class="form-group">
							<spring-form:label path="passengerGender">Gender</spring-form:label>
							<spring-form:select path="passengerGender" name="title"
								class="form-control">
								<spring-form:option value="Male" label="Male" />
								<spring-form:option value="Female" label="Female" />
							</spring-form:select>

						</div>


						<div class="form-group">
							<spring-form:label path="passengerEmail">Email</spring-form:label>
							<spring-form:input path="passengerEmail"
								placeholder="Enter the Email id" name="passengerEmail"
								class="form-control" />
							<spring-form:errors path="passengerEmail" class="error"></spring-form:errors>
						</div>


						<div class="form-group">
							<spring-form:label path="passengerAge">Age</spring-form:label>
							<spring-form:input path="passengerAge"
								placeholder="Enter the Age" name="passengerAge"
								class="form-control" />
							<spring-form:errors path="passengerAge" class="error"></spring-form:errors>

						</div>


						<div class="form-group">
							<spring-form:label path="passengerContact">Contact Number</spring-form:label>
							<spring-form:input path="passengerContact"
								placeholder="Enter the Contact Number" name="passengerContact"
								class="form-control" />
							<spring-form:errors path="passengerContact" class="error"></spring-form:errors>
						</div>

						<br>

						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Submit Details</button>
						</div>

					</article>
				</div>
			</div>
		</div>
		<br>
<!-- 
		<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
			<div class="container text-center">
				<small>Copyright &copy;BusAdda</small>
			</div>
		</footer> -->
	</spring-form:form>
	<%@include file="footer.jsp" %>
</body>

</html>