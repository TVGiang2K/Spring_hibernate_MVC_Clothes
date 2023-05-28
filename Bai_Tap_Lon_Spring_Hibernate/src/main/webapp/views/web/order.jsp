<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Page</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body class="animsition">
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('<c:url value='/resources'/>/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Order
		</h2>
	</section>	
<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Order 
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Product</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Total</th>
									<th class="column-5">Option</th>
								</tr>
								<c:forEach var="vap" items="${sessionScope.myCartItems}">
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img
													src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/${vap.value.pro.productDetail.get(0).listImage.get(0).name}"
													alt="IMG">
										</div>
									</td>
									<td class="column-2">
									<a href="${pageContext.request.contextPath}/<c:url value="detail"/>?proId=${vap.value.pro.id}">
												${vap.value.pro.name}
											</a>
									<br>
									<i>size :
									
									 ${vap.value.sizeCart}
									 
									 </i>
									<br>
									<i>color : ${vap.value.colorCart}</i>
									<br>
									<i>quantity : ${vap.value.quantity}</i>
									</td>
									<td class="column-3"><c:choose>
										<c:when test="${vap.value.pro.salePrice == 0}">
											<span class="stext-105 cl3"> <fmt:formatNumber
													value="${vap.value.pro.price}" type="currency" />
											</span>
										</c:when>
										<c:otherwise>
											<span class="stext-105 cl3"> <fmt:formatNumber
													value="${vap.value.pro.salePrice}" type="currency" />
											</span>
										</c:otherwise>
									</c:choose></td>
									<td class="column-4">
										<c:choose>
										<c:when test="${vap.value.pro.salePrice == 0}">
											<span class="stext-105 cl3"> 
													<fmt:formatNumber
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
									</c:choose>
									</td>
									<td class="column-5">
									<a href="${pageContext.request.contextPath}/<c:url value="shop"/>" class=" hov-btn3  trans-04">
									
										BUY MORE
										</a>
									</td>
								</tr>
								</c:forEach>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Apply coupon
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Order Totals
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Name Account
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									${pageContext.request.userPrincipal.name}
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Shipping:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									There are no shipping methods available. Please double check your address, or contact us if you need any help.
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										Calculate Shipping
									</span>
									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Recipient Name">
									</div>
									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Address">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Phone">
									</div>
										
								</div>
							</div>
						</div>
						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Unit price:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								
								
									<span class="stext-112 cl6 p-t-2">
										subtotal : <fmt:formatNumber value="${sessionScope.myCartTotal}" type="currency"/> 
									</span>
									<br>
									<span class="stext-112 cl6 p-t-2">
										transport : $7.00
									</span>
									<br>
									<span class="stext-112 cl6 p-t-2">
										vat (10%): <fmt:formatNumber value="${sessionScope.myCartTotal * 0.1}" type="currency"/>
									</span>
									<br>
									<span class="stext-112 cl6 p-t-2">
										discount : $9.00
									</span>
									<br>
									<span class="stext-112 cl8">
									<h5>
										total : <fmt:formatNumber value="${sessionScope.myCartTotal + (sessionScope.myCartTotal * 0.1) + 7 - 9}" type="currency"/> 
									</h5>
									</span>

							
							</div>
						</div>
						<div class="flex-w flex-t p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Pay with:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<div class="stext-112 cl6 p-t-2">
									<span class="stext-112 cl8">
										payment methods
									</span>
									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select class="js-select2" name="time">
											<option>Electronic wallet</option>
											<option>Payment on delivery</option>
											<option>Electronic banking</option>
											<option>Debit/credit card</option>
											<option>Domestic ATM card</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
										
								</div>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
	
	
	<jsp:include page="js.jsp"></jsp:include>
	
</body>
</html>