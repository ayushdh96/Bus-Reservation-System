<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Save Page</title>
<style>
.error {
	color: #ff0000;

	font-weight: bold;
}

.vl {
  border-left: 6px solid;
  height: 80px;
}
</style>
</head>
<body>
	<%-- <h1>${passengerTicket}</h1> --%>


	<div class="table-users">
		<div class="header">
			<div class="row">
				<img src="https://img.icons8.com/cute-clipart/64/000000/bus.png"
					width="80" height="80" class="rounded-circle"
					style="display: block; margin-left: auto; margin-right: auto">


			</div>
		</div>
		<h1 class="text-center">eTICKET</h1>
		
		<hr noshade>

		<div class="col-md-5">
			<div class="card">
				<div class="ticket_col_1">
					<table id="example" class="table table-hover"
						class="table table-striped table-bordered dt-responsive nowrap"
						cellspacing="0" style="width: 100%">


						<tr>
							<td><strong>Bus Source: </strong> ${passengerTicket.source}
								<br /></td>
						</tr>
						<tr>
							<td class="wd_100px text_center"><strong>Bus
									Destination: </strong> ${passengerTicket.destination}</td>
						</tr>
						<tr>
							<td class="wd_100px text_center"><strong>Bus
									Departure Date: </strong> ${passengerTicket.departureDate}</td>
						</tr>
						<tr>
							<td class="wd_100px text_center"><strong> Bus
									Departure Time: </strong> ${passengerTicket.departureTime}</td>
						</tr>

						<tr>
							<td class="wd_100px text_center"><strong>Bus
									Arrival Date: </strong> ${passengerTicket.arrivalDate}</td>
						</tr>



						<tr>
							<td><strong>Arrival Time: </strong>
								${passengerTicket.arrivalTime}</td>
						</tr>


						<tr>
							<td class="wd_100px text_center"><strong>Journey
									Duration: </strong> ${passengerTicket.journeyDuration}</td>
						</tr>


						<tr>
							<td class="text_center"><strong>Fare: </strong>
								${passengerTicket.fare}</td>
						</tr>

					</table>

				</div>
			</div>
		</div>
	</div>
	<!-- **************************************************************************************************** -->
	
	
	<hr noshade>
	<div class="company_part">
	
	
	
	
		
	<div class="col-md-5">
			<div class="card">
		<table id="example" class="table table-hover"
						class="table table-striped table-bordered dt-responsive nowrap"
						cellspacing="0" style="width: 100%">
           
           	<tr>
				<td>
				<strong>Name of passenger: </strong>${passengerTicket.passengerName}</td>
			</tr>
			
            
			<tr>
				<td>
				<strong>Gender: </strong>${passengerTicket.passengerGender}</td>
			</tr>
			
			<tr>
				<td ><strong>Age:</strong> ${passengerTicket.passengerAge}</td>
			</tr>
			
			<tr>
				<td><strong>Contact Number: </strong>${passengerTicket.passengerContact}</td>
			</tr>

			<tr>
				<td><strong>Email:</strong> ${passengerTicket.passengerEmail}</td>
			</tr>
			
		</table>
		
		</div>
		</div>
		<hr noshade>

		<div class="ticket_footer">
			<h3>Have a nice journey!!</h3><br /> <h4>Helpline
				Number: +91 9999999999</h4>
		</div>
	</div>
	<hr noshade>
<a class="btn btn-info btn-md ml-3" href="<c:url value='/dasboard/printTicket' />">Go To Dashboard</a> 
<%-- <a class="btn btn-info btn-md ml-3" href="<c:url value='/dasboard/printTicket' />">Send Ticket to Email</a> --%>
<c:url var="myaction" value="/mail/sendApproveMail/${passengerTicket.passengerId}"></c:url>
<spring-form:form action="${myaction}" method="get"
		modelAttribute="passengerDetails">
		
		<div class=" col-sm-10">
						<button type="submit" class="btn btn-primary">O.K.</button>
</div>
		<!-- <input type="submit" value="OK" /> -->
			</spring-form:form>
<%-- 
	<a href="<c:url value='/dasboard/printTicket' />"><button>Go
			to Dashboard</button></a> --%>
</body>
</html>