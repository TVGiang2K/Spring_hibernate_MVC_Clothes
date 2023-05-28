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

<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-8 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
								<tr >
									<th class="column-1">
									<a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											All
										</a>
									</th>
									<th class="column-2"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											To Play
										</a></th>
									<th class="column-3"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											To Ship
										</a></th>
									<th class="column-4"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											To Receive
										</a></th>
									<th class="column-5"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											Completed
										</a></th>
									<th class="column-5"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											Cancelled
										</a></th>
									<th class="column-5"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											Return Refund
										</a></th>
								</tr>
							</table>
							
							<table class="table-shopping-cart m-tb-5">
								<tr class="table_head">
									<th class="column-1">Info</th>
									<th class="column-2">
									<a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											show
										</a>
									</th>
									<th class="column-3"><a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											view shop
										</a></th>
									<th class="column-4">Status</th>
									<th class="column-5">Total:$ 36.00</th>
								</tr>

								<tr class="table_row">
								<td class="column-1">
										<div class="how-itemcart1">
											<img
													src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/item-cart-04.jpg"
													alt="IMG">
										</div>
									</td>
									<td class="column-2">
										pageContext.request.contextPath
									<br>
									<i>size : 1</i>
									<br>
									<i>color : 2</i>
									<br>
									<i>quantity : 2</i>
									<br>
									<i>$999</i>
									
									</td>
									<td class="column-3">
									
									</td>
									<td class="column-4">
									</td>
									<td class="column-5"><i>Recipient Name</i>
									<br>
									<i>address</i>
									<br>
									<i>Phone</i>
									<br>
									<i>Pay</i></td>
								</tr>
							</table>
							<table class="table-shopping-cart m-tb-5">
								<tr class="table_head">
									<th class="column-1">Info</th>
									<th class="column-2">
									<a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											show
										</a>
									</th>
									<th class="column-3">
									<a href="#" class=" cl2 size-102 bg0 bor2 hov-btn1 trans-04 js-show-modal1">
											view shop
										</a></th>
									<th class="column-4">Status</th>
									<th class="column-5">Total:$ 36.00</th>
								</tr>

								<tr class="table_row">
								<td class="column-1">
										<div class="how-itemcart1">
											<img
													src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/item-cart-04.jpg"
													alt="IMG">
										</div>
									</td>
									<td class="column-2">
										pageContext.request.contextPath
									<br>
									<i>size : 1</i>
									<br>
									<i>color : 2</i>
									<br>
									<i>quantity : 2</i>
									<br>
									<i>$999</i>
									
									</td>
									<td class="column-3">
									
									</td>
									<td class="column-4">
									</td>
									<td class="column-5"><i>Recipient Name</i>
									<br>
									<i>address</i>
									<br>
									<i>Phone</i>
									<br>
									<i>Pay</i></td>
								</tr>
								
							</table>
							
						</div>
					</div>
				</div>



				<div class="col-sm-10 col-lg-7 col-xl-4 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
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
				
				</div>
			</div>
		</div>
</section>
<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="<c:url value='/resources'/>/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="<c:url value='/resources'/>/images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/resources'/>/images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="<c:url value='/resources'/>/images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/resources'/>/images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="<c:url value='/resources'/>/images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/resources'/>/images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

	<jsp:include page="js.jsp"></jsp:include>
</body>
</html>