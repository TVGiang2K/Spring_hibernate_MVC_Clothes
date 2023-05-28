<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('<c:url value='/resources'/>/images/bg-02.jpg');">
		<h2 class="ltext-105 cl0 txt-center">Profile</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-c-m">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<h4 class="mtext-105 cl2 txt-center p-b-30">Profile</h4>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-envelope"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Email </span>

							<p class="stext-115 cl1 size-213 p-t-18">${ac.email}</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-user"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> User name </span>

							<p class="stext-115 cl6 size-213 p-t-18">${ac.username}</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-pencil-square-o"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Full Name </span>

							<p class="stext-115 cl6 size-213 p-t-18">${ac.fullName}</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-home"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Address </span>

							<p class="stext-115 cl6 size-213 p-t-18">${ac.address}</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-venus-mars"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Gender </span>

							<p class="stext-115 cl6 size-213 p-t-18">
								${ac.gender?"Male":"Female"}</p>
						</div>
					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <i
							class="fa fa-calendar-o"></i>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Birthday </span>

							<p class="stext-115 cl6 size-213 p-t-18">${ac.birthday}</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <span
							class="lnr lnr-phone-handset"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Phone </span>

							<p class="stext-115 cl1 size-213 p-t-18">${ac.phone}</p>
						</div>
					</div>

				</div>
				
				<div class="size-210 bor10 p-lr-93 p-lr-15-lg w-full-md">
					<div class=" p-b-42">
						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Address
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Coza Store Center 8th floor, 379 Hudson St, New York, NY 10018 US
							</p>
						</div>

					</div>
					</div>

				</div>

			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

	<jsp:include page="js.jsp"></jsp:include>
</body>
</html>