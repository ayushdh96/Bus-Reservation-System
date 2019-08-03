<h3>${msg}</h3>
<h3>Today is ${today }</h3>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Page</title>
<script  type="text/javascript">
function confirmForChanges (){
    var r= confirm("Do you want to proceed");
    if (r == true) {
        document.getElementById('submitpaymentButton').action = "/root/submitAction.do";
        document.getElementById('submitpaymentButton').submit();
        alert("Your payment has been completed!!");
    }if (r ==false){
        alert("Payment not done!")
    }
}

}
</script>
</head>
<body>
	<c:url var="myaction" value="/specified url"></c:url>
		<spring-form:form action="${myaction}" method="post"
			modelAttribute="object">
<table>
<tr>
	
	<td>Card Number: </td>
	<td><spring-form:input path="CardNumber" /></td>
</tr>
<br/>
<tr>
	<td>Bank Name:         </td>
	<td> <spring-form:input path="bankName" /></td>
</tr>
<br/>
<tr>
	<td>Name as on card: </td>
	<td>    <spring-form:input path="fullName" /></td>
</tr>
<br/>
<tr>

	<td>Expiration Month: </td>
   	<td><spring-form:input type="date" path="expiration_month" /></td>
</tr>
<br/>
<tr>
	<td>Expiration Year: </td>   
	<td> <spring-form:input type="date" path="expiration_year" /> </td>
	</tr>
	<br/>
	</table>
</spring-form:form>
	
	<spring-form:form  action="/submitAction.do" commandName="command" method="post">
<spring-form:input path=cancelpaymentButton type="button" value="Cancelpayment" />
<spring-form:input path=submitpayemntButton type="submit" value="Submitpayment" onclick="javascript:confirmForChanges();"/>;
</spring-form:form>
<br/>

</body>
</html> --%>