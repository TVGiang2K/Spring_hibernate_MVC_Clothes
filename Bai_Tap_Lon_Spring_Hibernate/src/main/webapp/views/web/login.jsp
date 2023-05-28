<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('<c:url value='/resources'/>/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Login
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-c-m">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg ">
					<form name='loginForm' action="<c:url value='j_spring_security_login'/>" method='POST'>
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							Login
						</h4>
							<h2>${mess}</h2>
							<h2>${done}</h2>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="username" required="required" placeholder="User Name">
							<form:errors path="username" cssClass=""/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-user"></i>
							</div>
						</div>

						<div class="bor8 m-b-30 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="password" required="required" placeholder="Your Password">
							<form:errors path="password" cssClass=""/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-lock"></i>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" name="submit" type="submit">
							Login
						</button>
						<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					</form>
					<a class="flex-c-m " href="register">Create Account</a>
				</div>
			</div>
		</div>
	</section>	

<jsp:include page="footer.jsp"></jsp:include>

<jsp:include page="js.jsp"></jsp:include>
</body>
</html>