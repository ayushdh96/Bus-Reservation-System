
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Bus Details</title>

<script>
  $( function() {
    $( "#departureDate" ).datepicker({minDate:0});
  } );
  </script>
  
  <script>
 
  $(document).ready(function(){
	    $('input.timepicker').timepicker({ timeFormat: 'hh:mm p' });
	});
  
  </script>
  
   <script>
 
  $(document).ready(function(){
	    $('input.timepicker').timepicker({ timeFormat: 'hh:mm p' });
	});
  
  </script> 
  
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

	<c:url var="myaction" value="/bus/saveBus"></c:url>
	<spring-form:form action="${myaction}" method="GET"
		modelAttribute="bus">
		
		<%-- <a href="<c:url value='/bus/showBus' />">Edit Bus</a> --%>

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
		<a class="btn btn-info btn-md ml-3" href="<c:url value='/bus/showdashboard' />">Back to Dashboard</a> 

	</nav>
	<br>
<br>
<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<header class="card-header">
					<h4 class="card-title mt-2">Add Bus Details</h4>
					</header>

					<article class="card-body">

						<div class=" form-group">
							<div class="col-md-12">
								<spring-form:label path="busId">Bus Id</spring-form:label>
								<spring-form:input path="busId" readonly="true" disabled="true" name="busId" id="busId"
									class="form-control"  />
								<spring-form:hidden path="busId" />
							</div>
						</div>




						<div class=" form-group">
			<div class="col-md-12">
			 <spring-form:label path="source">Source</spring-form:label>
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
				<%--
				<spring-form:input path="source" name="source" id="source"
					class="form-control" /> --%>
				<spring-form:errors path="source" cssClass="error" />
			</div>
		</div>


		<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="destination">Destination</spring-form:label>
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
				<%-- <spring-form:input path="destination" name="destination"
					id="destination" class="form-control" /> --%>
				
			</div>
		</div>




		<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="departureDate">Departure Date</spring-form:label>
				<spring-form:input path="departureDate" name="departureDate"
					id="departureDate" class="form-control" />
				
			</div>
		</div>



		<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="departureTime">Departure Time</spring-form:label>
				<spring-form:input path="departureTime" name="departureTime"
					id="departureTime"  class="form-control"  />
				
			</div>
		</div>
		
		
				<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="arrivalDate">Arrival Date</spring-form:label>
				<spring-form:input path="arrivalDate" name="arrivalDate"
					id="arrivalDate" class="form-control" />
		
			</div>
		</div>

      




		<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="arrivalTime">Arrival Time</spring-form:label>
				<spring-form:input path="arrivalTime" name="arrivalTime"
					id="arrivalTime" class="form-control" />
			
			</div>
		</div>

      
      
      <div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="seatsAvailable">Seats Available:</spring-form:label>
		<spring-form:input path="seatsAvailable" name="seatsAvailable"
					id="seatsAvailable" class="form-control"/>
	
</div>
</div>


   <div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="fare">Fare:</spring-form:label>
				<spring-form:select path="fare"   name="fare"
					id="fare" class="form-control" > 
			<spring-form:option value=" 100" label=" 100" /> 
			<spring-form:option value=" 200" label=" 200" /> 
			<spring-form:option value="500" label="500" />
			<spring-form:option value="800" label="800" /> 
			<spring-form:option value="1000" label="1000" /> 
			<spring-form:option value="1200" label="1200" />
			<spring-form:option value="1500" label="1500" />
			<spring-form:option value="2000" label="2000" />
			</spring-form:select>
		<%-- <spring-form:input  path="fare" name="fare"
					id="fare" class="form-control" /> --%>
		
</div>
</div>

<div class=" form-group">
			<div class="col-md-12">
				<spring-form:label path="journeyDuration">Journey Duration</spring-form:label>
		<spring-form:input path="journeyDuration" name="journeyDuration"
					id="journeyDuration" class="form-control"/>
		<spring-form:errors path="journeyDuration" cssClass="error" />
</div>
</div>

		<div class="  col-sm-10">
						<button type="submit" class="btn btn-primary">Add Bus</button>
</div>
</article>
</div>
</div>
</div>

<br>
<br>

<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy;BusAdda</small>
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
				alert("Please select a different source and Destination");
				//this.getField("destination").setFocus();
				//	return false;
			}
		}
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	</body>
	
</html>