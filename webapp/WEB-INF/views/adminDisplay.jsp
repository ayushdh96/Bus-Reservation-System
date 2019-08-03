<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bus Display Page</title>
<style>
.error {
	color: #ff0000;
	
	font-weight: bold;
}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
	    
	
		
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


		<%-- 	<div class="nav navbar-nav ml-auto ">

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
				</div> --%>
				
			</div>
		
	<a class="btn btn-info btn-md ml-3" href="<c:url value='/bus/showdashboard' />">Back to Dashboard</a> 
	</nav>
	<br>

	
	                                     <h1 class="text-center">Welcome Admin</h1>
	
<br>
						
	<c:if test="${!empty busList}">
		<table  id="example" class="table table-hover" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" style="width:100%">
		 <thead class="thead-dark">
			<tr>
				<th>BusId </th>
				<th>Source </th>
				<th>Destination </th>
				<th>Departure Date</th>
				<th>Departure Time</th>
				<th>Arrival Date</th>
				<th>Arrival Time</th>
				<th>Seats Available</th>
				<th>Fare</th>
				<th>Journey Duration</th>
				<th>Edit</th>
				<th>Delete</th>
				
			</tr>
			</thead>
			<c:forEach items="${busList}" var="bus">
				<tr>
					<td>${bus.busId}</td>
					<td>${bus.source}</td>
					<td>${bus.destination}</td>
					<td>${bus.departureDate }</td>
					<td>${bus.departureTime }</td>
					<td>${bus.arrivalDate }</td>
					<td>${bus.arrivalTime }</td>
					<td class="align-middle">${bus.seatsAvailable }</td>
					<td>${bus.fare }</td>
					<td>${bus.journeyDuration }</td>
				
					<td><a
						href="<c:url value='/bus/editBus/${bus.busId}' />">Edit Status</a></td>
					<%-- <td><a
						href="<c:url value='/bus/deleteBus/${bus.busId}' />">Delete</a></td> --%>
						<td><button type="submit" onclick="return pop();"><a href="<c:url value='/bus/deleteBus/${bus.busId}' />">Delete</a></button></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<br>
	
	<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy;BusAdda</small>
    </div>
  </footer>
  <script>
	function pop()
	{
		alert("Are you sure you want to delete this bus?");
	}
	</script>
</body>
</html>