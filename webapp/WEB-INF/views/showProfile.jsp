<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Profile</title>
</head>
<body>
<h2>${profileList}</h2>
<hr>

<a href="<c:url value='/dasboard/userDashboard'/>"><button>Back to Dashboard</button></a>
<hr noshade>

	<%-- <div>
		<div>
			<h2>Hello,${profileList.firstName}!! Here are your profile details</h2>
		</div>

		<h4>

			<strong>Name of the passenger</strong>
			${passengerTicket.passengerName}
		</h4>
		<hr noshade>

		<div>
			<table>
				<tr>
					<td><strong>Username: </strong>
					 ${profileList.userName}
					<br /></td>
				</tr>
				<tr>
					<td><strong>Registered Name: </strong>
							${profileList.firstName} ${profileList.lastName}
							</td>
				</tr>
				<tr>
					<td><strong>Email Address: </strong>
							${profileList.emailId}
							</td>
				</tr>
				<tr>
					<td><strong>Registered Contact Number</strong>
							${profileList.phoneNo}
							</td>
				</tr>
				<tr>
					<td><strong>Chosen security question: </strong>
					${profileList.securityQuestion}</td>
				</tr>
				<tr>
					<td class="wd_100px text_center">
					<strong>Provided security answer: </strong>
					${profileList.securityAnswer}</td>
				</tr>	
			</table>
			<hr noshade>
		</div>
	</div> --%>
</body>
</html>
