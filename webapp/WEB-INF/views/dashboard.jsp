<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
window.history.forward();
function noBack(){
	window.history.forward();
}
</script>

<title>Admin Dashboard</title>
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


			<%-- <div class="nav navbar-nav ml-auto ">

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
			<a class="btn btn-info btn-md ml-3" href="<c:url value='/bus/showAdminLogin' />">Log Out</a> 
		

	</nav>
	<br>
<h1 class="text-center">Welcome Admin</h1>
<br>
	<div class="container">


		<img src="../images/admin1.png" class="rounded-circle" width="250"
			height="250"
			style="display: block; margin-left: auto; margin-right: auto">
	</div>
	<br>
	
	<div style="text-align: center">
		<!-- <div class="d-flex justify-context-center"> -->
			<a class="btn btn-info btn-md ml-8" href="<c:url value='/bus/showBus' />">Edit
				Bus</a> <a class="btn btn-info btn-md ml-8"
				href="<c:url value='/bus/addAdminBusForm' />">Add bus</a>
<!-- 		</div> -->
	</div>
	<br>
	<br>
	<br>
	
<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; BusAdda</small>
    </div>
  
    
  </footer>
</body>
</html>