<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1 rs2-slick1">
			<div class="slick1">
				<div class="item-slick1 bg-overlay1" style="background-image: url(<c:url value='resources'/>/images/slide-05.jpg);" data-thumb="<c:url value='resources'/>/images/thumb-01.jpg" data-caption="Women’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Women Collection 2018
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									New arrivals
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
								<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(<c:url value='resources'/>/images/slide-06.jpg);" data-thumb="<c:url value='resources'/>/images/thumb-02.jpg" data-caption="Men’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Men New-Season
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Jackets & Coats
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
								<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(<c:url value='resources'/>/images/slide-07.jpg);" data-thumb="<c:url value='resources'/>/	images/thumb-03.jpg" data-caption="Men’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Men Collection 2018
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									NEW SEASON
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
								<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="wrap-slick1-dots p-lr-10"></div>
		</div>
	</section>


	<!-- Banner -->
	<div class="sec-banner bg0 p-t-95 p-b-55">
		<div class="container">
			<div class="row">
				<div class="col-md-6 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<c:url value='resources'/>/images/banner-04.jpg" alt="IMG-BANNER">

						<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Women
								</span>

								<span class="block1-info stext-102 trans-04">
									New Trend
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<c:url value='resources'/>/images/banner-05.jpg" alt="IMG-BANNER">

						<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Men
								</span>

								<span class="block1-info stext-102 trans-04">
									New Trend
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<c:url value='resources'/>/images/banner-07.jpg" alt="IMG-BANNER">

						<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Watches
								</span>

								<span class="block1-info stext-102 trans-04">
									Spring 2018
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<c:url value='resources'/>/images/banner-08.jpg" alt="IMG-BANNER">

						<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Bags
								</span>

								<span class="block1-info stext-102 trans-04">
									Spring 2018
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<c:url value='resources'/>/images/banner-09.jpg" alt="IMG-BANNER">

						<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Accessories
								</span>

								<span class="block1-info stext-102 trans-04">
									Spring 2018
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	


	<!-- Product -->
	<section class="sec-product bg0 p-t-100 p-b-50">
		<div class="container">
			<div class="p-b-32">
				<h3 class="ltext-105 cl5 txt-center respon1">Store Overview</h3>
			</div>

			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10"><a class="nav-link  active"
						data-toggle="tab" href="#sale" role="tab">Sale</a></li>
					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#new" role="tab">New</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#featured" role="tab">Featured</a></li>


					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#best-seller" role="tab">Best Seller</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-50">
					<!-- - -->
					<div class="tab-pane fade show active" id="sale" role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								<c:forEach items="${listSale }" var="ls">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
										<!-- Block2 -->
										<div class="block2">
											<div class="block2-pic hov-img0">

												<img style="height: 300px;"
													src="<c:url value='/resources'/>/images/${ls.productDetail.get(0).listImage.get(0).name}"
													alt="${ls.productDetail.get(0).listImage.get(0).id}">
												<a
													href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${ls.id}"
													class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
													Quick View </a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
													<a
														href="${pageContext.request.contextPath}/<c:url value="detail?proId=${ls.id}"/>"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${ls.name} </a>

													<c:choose>
														<c:when test="${ls.salePrice == 0}">
															<span class="stext-105 cl3"> <fmt:formatNumber
																	value="${ls.price}" type="currency" />
															</span>
														</c:when>
														<c:otherwise>
															<strike class="stext-105 cl3"> <fmt:formatNumber
																	value="${ls.price}" type="currency" />
															</strike>
															<span class="stext-105 cl3 text-danger"> <fmt:formatNumber
																	value="${ls.salePrice}" type="currency" />
															</span>
														</c:otherwise>
													</c:choose>



												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="<c:url value='/resources'/>/images/icons/icon-heart-01.png"
														alt="ICON"> <img
														class="icon-heart2 dis-block trans-04 ab-t-l"
														src="<c:url value='/resources'/>/images/icons/icon-heart-02.png"
														alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>

					<div class="tab-pane fade" id="new" role="tabpanel">

						<div class="wrap-slick2">
							<div class="slick2">

								<c:forEach items="${listNew }" var="ln">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">

										<div class="block2">
											<div class="block2-pic hov-img0">
												<img style="height: 300px;"
													src="<c:url value='/resources'/>/images/${ln.productDetail.get(0).listImage.get(0).name}"
													alt="${ln.productDetail.get(0).listImage.get(0).id}">

												<a
													href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${ln.id}"
													class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
													Quick View </a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
													<a
														href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${ln.id}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${ln.name} </a> 
														
														<c:choose>
														<c:when test="${ln.salePrice == 0}">
															<span class="stext-105 cl3"> <fmt:formatNumber
																	value="${ln.price}" type="currency" />
															</span>
														</c:when>
														<c:otherwise>
															<strike class="stext-105 cl3"> <fmt:formatNumber
																	value="${ln.price}" type="currency" />
															</strike>
															<span class="stext-105 cl3 text-danger"> <fmt:formatNumber
																	value="${ln.salePrice}" type="currency" />
															</span>
														</c:otherwise>
													</c:choose>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="<c:url value='/resources'/>/images/icons/icon-heart-01.png"
														alt="ICON"> <img
														class="icon-heart2 dis-block trans-04 ab-t-l"
														src="<c:url value='/resources'/>/images/icons/icon-heart-02.png"
														alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>



					<div class="tab-pane fade" id="featured" role="tabpanel">
						<div class="wrap-slick2">
							<div class="slick2">

								<c:forEach items="${listFeatured }" var="lf">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">

										<div class="block2">
											<div class="block2-pic hov-img0">
												<img style="height: 300px;"
													src="<c:url value='/resources'/>/images/${lf.productDetail.get(0).listImage.get(0).name}"
													alt="${lf.productDetail.get(0).listImage.get(0).id}">

												<a
													href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${lf.id}"
													class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
													Quick View </a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
													<a
														href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${lf.id}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${lf.name} </a> 
														
														<c:choose>
														<c:when test="${lf.salePrice == 0}">
															<span class="stext-105 cl3"> <fmt:formatNumber
																	value="${lf.price}" type="currency" />
															</span>
														</c:when>
														<c:otherwise>
															<strike class="stext-105 cl3"> <fmt:formatNumber
																	value="${lf.price}" type="currency" />
															</strike>
															<span class="stext-105 cl3 text-danger"> <fmt:formatNumber
																	value="${lf.salePrice}" type="currency" />
															</span>
														</c:otherwise>
													</c:choose>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="<c:url value='/resources'/>/images/icons/icon-heart-01.png"
														alt="ICON"> <img
														class="icon-heart2 dis-block trans-04 ab-t-l"
														src="<c:url value='/resources'/>/images/icons/icon-heart-02.png"
														alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>



					<div class="tab-pane fade" id="best-seller" role="tabpanel">

						<div class="wrap-slick2">
							<div class="slick2">

								<c:forEach items="${listBSL }" var="lbs">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">

										<div class="block2">
											<div class="block2-pic hov-img0">
												<img style="height: 300px;"
													src="<c:url value='/resources'/>/images/${lbs.productDetail.get(0).listImage.get(0).name}"
													alt="${lbs.productDetail.get(0).listImage.get(0).id}">

												<a
													href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${lbs.id}"
													class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
													Quick View </a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
													<a
														href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${lbs.id}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${lbs.name} </a> 
														<c:choose>
														<c:when test="${lbs.salePrice == 0}">
															<span class="stext-105 cl3"> <fmt:formatNumber
																	value="${lbs.price}" type="currency" />
															</span>
														</c:when>
														<c:otherwise>
															<strike class="stext-105 cl3"> <fmt:formatNumber
																	value="${lbs.price}" type="currency" />
															</strike>
															<span class="stext-105 cl3 text-danger"> <fmt:formatNumber
																	value="${lbs.salePrice}" type="currency" />
															</span>
														</c:otherwise>
													</c:choose>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="<c:url value='/resources'/>/images/icons/icon-heart-01.png"
														alt="ICON"> <img
														class="icon-heart2 dis-block trans-04 ab-t-l"
														src="<c:url value='/resources'/>/images/icons/icon-heart-02.png"
														alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<section class="sec-blog bg0 p-t-60 p-b-90">
		<div class="container">
			<div class="p-b-66">
				<h3 class="ltext-105 cl5 txt-center respon1">
					Feedback
				</h3>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							<a href="#">
								<img src="<c:url value='/resources'/>/images/blog-01.jpg" alt="IMG-BLOG">
							</a>
						</div>

						<div class="p-t-15">
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3">
									<span class="cl4">
										By
									</span>

									<span class="cl5">
										Nancy Ward
									</span>
								</span>

								<span>
									<span class="cl4">
										on
									</span>

									<span class="cl5">
										July 22, 2017 
									</span>
								</span>
							</div>

							<h4 class="p-b-12">
								<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
									8 Inspiring Ways to Wear Dresses in the Winter
								</a>
							</h4>

							<p class="stext-108 cl6">
								Duis ut velit gravida nibh bibendum commodo. Suspendisse pellentesque mattis augue id euismod. Interdum et male-suada fames
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							<a href="#">
								<img src="<c:url value='/resources'/>/images/blog-02.jpg" alt="IMG-BLOG">
							</a>
						</div>

						<div class="p-t-15">
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3">
									<span class="cl4">
										By
									</span>

									<span class="cl5">
										Nancy Ward
									</span>
								</span>

								<span>
									<span class="cl4">
										on
									</span>

									<span class="cl5">
										July 18, 2017
									</span>
								</span>
							</div>

							<h4 class="p-b-12">
								<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
									The Great Big List of Men’s Gifts for the Holidays
								</a>
							</h4>

							<p class="stext-108 cl6">
								Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							<a href="#">
								<img src="<c:url value='/resources'/>/images/blog-03.jpg" alt="IMG-BLOG">
							</a>
						</div>

						<div class="p-t-15">
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3">
									<span class="cl4">
										By
									</span>

									<span class="cl5">
										Nancy Ward
									</span>
								</span>

								<span>
									<span class="cl4">
										on
									</span>

									<span class="cl5">
										July 2, 2017 
									</span>
								</span>
							</div>

							<h4 class="p-b-12">
								<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
									5 Winter-to-Spring Fashion Trends to Try Now
								</a>
							</h4>

							<p class="stext-108 cl6">
								Proin nec vehicula lorem, a efficitur ex. Nam vehicula nulla vel erat tincidunt, sed hendrerit ligula porttitor. Fusce sit amet maximus nunc
							</p>
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
					<img src="<c:url value='/resources'/>/images/icons/icon-close.png"
						alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="<c:url value='/resources'/>/images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="<c:url value='/resources'/>/images/product-detail-01.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="<c:url value='/resources'/>/images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="<c:url value='/resources'/>/images/product-detail-02.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="<c:url value='/resources'/>/images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img
												src="<c:url value='/resources'/>/images/product-detail-03.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
								Jacket</h4>

							<span class="mtext-106 cl2"> $58.79 </span>

							<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
								pharetra viverra. Nam vitae luctus ligula. Mauris consequat
								ornare feugiat.</p>

							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Size</div>

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
									<div class="size-203 flex-c-m respon6">Color</div>

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
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart</button>
									</div>
								</div>
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
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