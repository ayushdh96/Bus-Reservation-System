<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!--  -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ include file="links.jsp"%>
<%@include file="scripts.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<style>

.vertical-nav {
  min-width: 17rem;
  width: 17rem;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
  transition: all 0.4s;
}

.page-content {
  width: calc(100% - 17rem);
  margin-left: 17rem;
  transition: all 0.4s;
}

/* for toggle behavior */

#sidebar.active {
  margin-left: -17rem;
}

#content.active {
  width: 100%;
  margin: 0;
}

@media (max-width: 768px) {
  #sidebar {
    margin-left: -17rem;
  }
  #sidebar.active {
    margin-left: 0;
  }
  #content {
    width: 100%;
    margin: 0;
  }
  #content.active {
    margin-left: 17rem;
    width: calc(100% - 17rem);
  }
}


body {
  background: #599fd9;
  background: -webkit-linear-gradient(to right, #599fd9, #c2e59c);
  background: linear-gradient(to right, #599fd9, #c2e59c);
  min-height: 100vh;
  overflow-x: hidden;
}

.separator {
  margin: 3rem 0;
  border-bottom: 1px dashed #fff;
}

.text-uppercase {
  letter-spacing: 0.1em;
}

.text-gray {
  color: #aaa;
}

</style>


<script>
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
	
	$(function() {
		  // Sidebar toggle behavior
		  $('#sidebarCollapse').on('click', function() {
		    $('#sidebar, #content').toggleClass('active');
		  });
		});
</script>
</head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
onunload=" ">

<%-- <nav class="navbar navbar-expand-md navbar-light bg-light">
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


		
		</div>
		<a class="btn btn-info btn-md ml-3"
			href="<c:url value='/dasboard/logout' />">Logout</a>

	</nav>
	 --%>
	<!-- sidebar -->

<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
    <div class="media d-flex align-items-center"><img src="../images/User.png">
      <div class="media-body">
        <h4 class="m-0">User Dashboard</h4>
      
      </div>
    </div>
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">CheckList</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="<c:url value='/dasboard/showTicket' />" class="nav-link text-dark bg-light">
                <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
               Booking History
            </a>
    </li>
   
    <li class="nav-item">
      <a href="<c:url value='/dasboard/booking' />" class="nav-link text-dark ">
                <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                Book Ticket
            </a>
    </li>
    
     <li class="nav-item">
      <a href="<c:url value='/dasboard/logout' />" class="nav-link text-dark ">
                <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
               Log Out
            </a>
    </li>
   
  </ul>
  </div>
  
  
  <!-- Page content holder -->
<div class="page-content p-5" id="content">
  <!-- Toggle button -->
  <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold">Toggle</small></button>

  <!-- Demo content -->
 
        
 
  <div class="separator"></div>
  <div class="row text-white">
    <div class="col-lg-7">
    <h1>Experience a great journey</h1>
         <img src="../images/road.jpg">
      <div class="bg-white  rounded  shadow-sm">
      
      </div>
     
      
    </div>
    <br>
    <br>
    
    <div class="col-lg-7">
    <h1>Experience a great journey</h1>
         <img src="../images/road.jpg">
      <div class="bg-white  rounded  shadow-sm">
      
      </div>
     
      
    </div>
  </div>
  
  <br>
   
     
      
    </div>
    





</body>
