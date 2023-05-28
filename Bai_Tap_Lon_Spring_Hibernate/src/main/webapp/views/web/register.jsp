<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('<c:url value='/resources'/>/images/bg-02.jpg');">
		<h2 class="ltext-105 cl0 txt-center">Register</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-c-m">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg ">
					<for:form action="${pageContext.request.contextPath}/createAccount" modelAttribute="ac"  method='POST'>
						<h4 class="mtext-105 cl2 txt-center p-b-30">Register</h4>
						<h2>${err}</h2>
						
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" path="email" type="email" 
							placeholder="Input Your Email Address"/>
							<for:errors path="email" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-envelope"></i>
							</div>
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								 path="userName" placeholder="Input User Name"/>
								 <for:errors path="userName" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-user"></i>
							</div>
						</div>
						
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								 path="fullName" placeholder="Input Full Name"/>
								<for:errors path="fullName" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-pencil-square-o"></i>
							</div>
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:textarea class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 p-t-15" path="address" placeholder="Input Address"/>
							<for:errors path="address" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-home"></i>
							</div>
						</div>
						
						<div class="bor8 m-b-20 how-pos4-parent">
							<div class="stext-111 p-l-62" >
								Male
								<for:radiobutton path="gender" value="true"/>
								Female
								<for:radiobutton path="gender" value="false"/>
								<for:errors path="gender" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							</div>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-venus-mars"></i>
							</div>
						</div>
						
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="date" path="birthday" />
								<for:errors path="birthday" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-calendar-o"></i>
							</div>
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<for:input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								 path="phone" placeholder="Input Phone"/>
								<for:errors path="phone" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-phone"></i>
							</div>
						</div>

						<div class="bor8 m-b-30 how-pos4-parent">
							<for:password class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								 path="password" placeholder="Input Password "/>
								<for:errors path="password" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger" />
							<div class="how-pos4 pointer-none">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="bor8 m-b-30 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="password" name="confirmPassword"  placeholder="Confirm Password ">
								<for:errors path="password" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger"/>
							<div class="how-pos4 pointer-none">
								<i class="fa fa-check"></i>
							</div>
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
							name="submit" type="submit">Create</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</for:form>
				</div>

			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

	<jsp:include page="js.jsp"></jsp:include>
</body>
</html>