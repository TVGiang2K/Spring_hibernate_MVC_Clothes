<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body>
<h1>Admin Page</h1>
	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
	<h1>Information:</h1>
	<h3>User name: ${ac.username}</h3>
	<h3>Full name: ${ac.fullName}</h3>
	<h3>Address: ${ac.address}</h3>
	<h3>Email: ${ac.email}</h3>
	<h3>Telephone: ${ac.phone}</h3>
<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>

<form action="<c:url value="/j_spring_security_logout" />" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"
/>
<input type="submit" value="Logout" />
</form>
</body>
</html>