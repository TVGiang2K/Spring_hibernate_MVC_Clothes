<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoping cart</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('<c:url value='/resources'/>/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">Cart</h2>
	</section>
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="${pageContext.request.contextPath}/<c:url value="home"/>"
				class="stext-109 cl8 hov-cl1 trans-04"> Home <i
				class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> Shoping Cart </span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<div class="container">
		<div class="row">
			<div class="col-lg-15 col-xl-12 m-lr-auto m-b-50">
				<div class="m-l-25 m-r--38 m-lr-0-xl">
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
							<tr class="table_head">
								<th class="column-1">Product</th>
								<th class="column-2"></th>
								<th class="column-3">Price</th>
								<th class="column-4">Quantity</th>
								<th class="column-5"></th>
								<th class="column-6">Total</th>
								<th class="column-7">Option</th>
							</tr>

							<c:forEach var="vap" items="${sessionScope.myCartItems}">
								<form:form action="updateCart"
									modelAttribute="cartU" method='POST'>
									<input type="hidden" value="${vap.value.pro.id}" name="proId">
									<tr class="table_row">
										<td class="column-1">
											<div class="how-itemcart1">
												<img
													src="<c:url value='resources'/>/images/${vap.value.pro.productDetail.get(0).listImage.get(0).name}"
													alt="IMG">
											</div>
										</td>
										<td class="column-2"><a
											href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${vap.value.pro.id}">
												${vap.value.pro.name} </a> <br> <i>size: <select
												name="sizeCart">
													<c:forEach
														items="${vap.value.pro.productDetail.get(0).proSize}"
														var="cs">
														<c:choose>
															<c:when test="${vap.value.sizeCart == cs.size.name}">
																<option selected value="${cs.size.name}">${cs.size.name }</option>
															</c:when>
															<c:otherwise>
																<option value="${cs.size.name}">${cs.size.name }</option>
															</c:otherwise>
														</c:choose>
														
													</c:forEach>
											</select>

										</i> <br> <i> color : <select name="colorCart">
													<c:forEach
														items="${vap.value.pro.productDetail.get(0).colorPro}"
														var="cc">
														<c:choose>
															<c:when test="${vap.value.colorCart == cc.color.name}">
																<option selected value="${cc.color.name }">${cc.color.name }</option>
															</c:when>
															<c:otherwise>
																<option value="${cc.color.name }">${cc.color.name }</option>
															</c:otherwise>
														</c:choose>

													</c:forEach>
											</select>


										</i></td>
										<td class="column-3"><c:choose>
												<c:when test="${vap.value.pro.salePrice == 0}">
													<span class="stext-105 cl3"> <fmt:formatNumber
															value="${vap.value.pro.price}" type="currency" />
													</span>
												</c:when>
												<c:otherwise>
													<strike class="stext-105 cl3"> <fmt:formatNumber
															value="${vap.value.pro.price}" type="currency" />
													</strike>
													<span class="stext-105 cl3 text-danger"> <fmt:formatNumber
															value="${vap.value.pro.salePrice}" type="currency" />
													</span>
												</c:otherwise>
											</c:choose></td>
										<td class="column-4">
											<div class="wrap-num-product flex-w m-l-auto m-r-0">
												<div
													class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-minus"></i>
												</div>
												<input class="mtext-104 cl3 txt-center num-product"
													type="number" name="quantity" value="${vap.value.quantity}" />
												<div
													class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-plus"></i>
												</div>
											</div>
										</td>

										<td class="column-5">
											<button type="submit"
												class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 m-lr-10 trans-04 pointer m-tb-10">
												Update</button>
										</td>
										<td class="column-6"><c:choose>
												<c:when test="${vap.value.pro.salePrice == 0}">
													<span class="stext-105 cl3"> <fmt:formatNumber
															value="${vap.value.quantity * vap.value.pro.price}"
															type="currency" />
													</span>
												</c:when>
												<c:otherwise>
													<span class="stext-105 cl3 "> <fmt:formatNumber
															value="${vap.value.quantity * vap.value.pro.salePrice}"
															type="currency" />
													</span>
												</c:otherwise>
											</c:choose></td>
										<td class="column-7"><a
											href="<c:url value="removeItem"/>?proId=${vap.value.pro.id}"
											class=" hov-btn3  trans-04"> <i class="fa fa-trash"></i>
										</a></td>
									</tr>
								</form:form>
							</c:forEach>

						</table>
					</div>

					<div
						class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">

						<div class="flex-w flex-m m-r-20 m-tb-5">
							<div
								class="flex-c-m stext-101 cl2 size-118 p-lr-15 trans-04 pointer m-tb-5">
								Quantity: ${sessionScope.myCartItem} item</div>
						</div>
						<div class="flex-w flex-m m-r-20 m-tb-5">
							<div
								class="flex-c-m stext-101 cl2 size-118 p-lr-15 trans-04 pointer m-tb-5">
								Total:
								<fmt:formatNumber value="${sessionScope.myCartTotal}"
									type="currency" />
							</div>
						</div>

						<div
							class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
							<a
								href="${pageContext.request.contextPath}/<c:url value="clearCart"/>">
								Clear Cart </a>
						</div>


						<a
							href="${pageContext.request.contextPath}/<c:url value="user/order"/>"
							class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
							Order </a>


					</div>
				</div>

			</div>

		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>



	<jsp:include page="js.jsp"></jsp:include>

</body>
</html>