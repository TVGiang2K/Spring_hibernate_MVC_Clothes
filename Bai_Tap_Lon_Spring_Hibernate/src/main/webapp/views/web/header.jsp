<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<header class="header-v3">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop p-l-45">

				<!-- Logo desktop -->
				<a href="${pageContext.request.contextPath}/<c:url value="home"/>" class="logo"> <img
					src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/icons/logo-02.png"
					alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="active-menu"><a href="${pageContext.request.contextPath}/<c:url value="home"/>">Home</a></li>

						<li><a href="${pageContext.request.contextPath}/<c:url value="shop"/>">Shop</a></li>

						<li class="label1" data-label1="hot"><a href="#">Features</a>
						</li>

						<li><a href="#">Blog</a></li>

						<li><a href="#">About</a></li>

						<li><a href="#">Contact</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					<div class="flex-c-m h-full p-r-24">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
					</div>

					<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
					<a href="${pageContext.request.contextPath}/<c:url value="cart"/>" >
						<c:if test="${not empty sessionScope.myCartNumber}">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti"
								data-notify="${sessionScope.myCartNumber}">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
						</c:if>
						<c:if test="${empty sessionScope.myCartNumber}">
						<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
						</c:if>
					</a>
					</div>

					<div class="flex-c-m h-full p-lr-19">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
							<i class="zmdi zmdi-menu"></i>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index.html"><img
				src="<c:url value='/resources/images/icons/logo-01.png'/>"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>

			<div class="flex-c-m h-full p-lr-10 bor5">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="${sessionScope.myCartNumber}">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li class="active-menu"><a  href="${pageContext.request.contextPath}/<c:url value="home"/>">Home</a></li>

			<li><a href="${pageContext.request.contextPath}/<c:url value="shop"/>">Shop</a></li>

			<li><a href="#" class="label1 rs1"
				data-label1="hot">Features</a></li>

			<li><a href="#">Blog</a></li>

			<li><a href="#">About</a></li>

			<li><a href="#">Contact</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="<c:url value='/resources/images/icons/icon-close2.png'/>"
					alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search"
					placeholder="Search...">
			</form>
		</div>
	</div>
</header>

<!-- Sidebar -->
<aside class="wrap-sidebar js-sidebar">
	<div class="s-full js-hide-sidebar"></div>

	<div class="sidebar flex-col-l p-t-22 p-b-25">
		<div class="flex-r w-full p-b-30 p-r-27">
			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
			<ul class="sidebar-link w-full">

				<c:if test="${not empty pageContext.request.userPrincipal.name}">
					<li class="p-b-13"><a href="${pageContext.request.contextPath}/<c:url value="user/profile"/>"
						class="stext-102 cl2 hov-cl1 trans-04"> Profile ${pageContext.request.userPrincipal.name} Account</a></li>
						<li class="p-b-13"><a href="${pageContext.request.contextPath}/<c:url value="user/order"/>"
						class="stext-102 cl2 hov-cl1 trans-04"> Order ${pageContext.request.userPrincipal.name} Account</a></li>
					<li class="p-b-13">
						<form action="<c:url value="/j_spring_security_logout" />"
							method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> 
								<input class="stext-102 cl2 hov-cl1 trans-04" type="submit" value="Logout" />
						</form>
					</li>
				</c:if>
				
				<c:if test="${empty pageContext.request.userPrincipal.name}">
					<li class="p-b-13">
					<a href="${pageContext.request.contextPath}/<c:url value="login"/>" class="stext-102 cl2 hov-cl1 trans-04">Login</a>
					</li>
				</c:if>

				<li class="p-b-13"><a href="#"
					class="stext-102 cl2 hov-cl1 trans-04"> Help & FAQs </a></li>
			</ul>

			<div class="sidebar-gallery w-full p-tb-30">
				<span class="mtext-101 cl5"> @ CozaStore </span>

				<div class="flex-w flex-sb p-t-36 gallery-lb">
					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-01.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-02.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-03.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-04.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-05.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-06.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-07.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-08.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="#"
							data-lightbox="gallery"
							style="background-image: url('<c:url value='/resources'/>/images/gallery-09.jpg');"></a>
					</div>
				</div>
			</div>

			<div class="sidebar-gallery w-full">
				<span class="mtext-101 cl5"> About Us </span>

				<p class="stext-108 cl6 p-t-27">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Curabitur maximus vulputate hendrerit.
					Praesent faucibus erat vitae rutrum gravida. Vestibulum tempus mi
					enim, in molestie sem fermentum quis.</p>
			</div>
		</div>
	</div>
</aside>




