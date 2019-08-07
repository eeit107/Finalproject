<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<title>Aviato | E-commerce template</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/navigation.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">

</head>
<body id="body">
<jsp:include page="header.jsp"></jsp:include>

	<section class="user-dashboard page-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="list-inline dashboard-menu text-center">
						<li><a class="active"
							href="<spring:url value='/memberorders'/>">訂單狀況</a></li>
						<%-- 						<li><a href="<c:url value='/orderdetail'/>" >訂單詳細</a></li> --%>
						<li><a href="address.html">申請廠商</a></li>
						<li><a href="profile-details.html">修改資料</a></li>
					</ul>
					<div class="dashboard-wrapper user-dashboard">
						<div class="media">
							<div class="pull-left">
								<img class="media-object user-img" src="/testfinalproject/usericon"
									alt="Image">
							</div>
							<div class="media-body">
								<h2 class="media-heading">Welcome ${memberbean.memberid} 會員</h2>
								<p>下面是您的訂單現況</p>
							</div>
						</div>
						<div class="total-order mt-20">
							<h4>Total Orders</h4>
							<div class="table-responsive">
								<table class="table">
									<c:forEach var='cart' items="${orders}">
										<thead>
											<tr>
												<th>訂單編號:</th>
												<th>訂單日期:</th>
												<th>訂單狀況:</th>
												<th>訂單價格:</th>
												<th>確認收貨:</th>
												<th>訂單明細:</th>
												<th>評價賣家:</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">${cart.cartID}</a></td>
												<td>${cart.orderdate}</td>
												<td>${cart.status}</td>
												<td>$${cart.totalprice}</td>
												<td>
													<form action="<c:url value='/received'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="確認收貨"
															class="btn btn-main btn-small btn-round" />
													</form>
												</td>
												<td>
													<form action="<c:url value='/membercheckdetail'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="查詢此筆訂單明細"
															class="btn btn-main btn-small btn-round" />
													</form>
												</td>
												<td>
													<form action="<c:url value='/commentseller'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="評價賣家" class="btn btn-main btn-small btn-round"/>
														</form>
												</td>
											</tr>

										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%-- 	會員編號:${memberbean.seqNo} --%>
	<%-- 	<br> 您的帳號:${memberbean.memberid} --%>
	<!-- 	<br> -->
	<%-- 	<c:forEach var='cart' items="${orders}"> --%>
	<%-- 訂單編號:${cart.cartID} 訂單價格:${cart.totalprice} 訂單狀態${cart.status} 訂單日期${cart.orderdate}<br> --%>
	<%-- 		<form action="<c:url value='/received'/>"> --%>
	<%-- 			<input type="hidden" name="orderId" value="${cart.cartID}" /> <input --%>
	<!-- 				type="submit" value="確認已收貨" /> -->
	<%-- 		</form> --%>
	<%-- 		<form action="<c:url value='/membercheckdetail'/>"> --%>
	<%-- 			<input type="hidden" name="orderId" value="${cart.cartID}" /> <input --%>
	<!-- 				type="submit" value="查詢此筆訂單資料" /> -->
	<%-- 		</form> --%>
	<%-- 	</c:forEach> --%>



	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href=""> <i class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu">
						<li><a href="">CONTACT</a></li>
						<li><a href="">SHIPPING</a></li>
						<li><a href="">TERMS OF SERVICE</a></li>
						<li><a href="">PRIVACY POLICY</a></li>
					</ul>
					<p class="copyright-text">Powered by Bootstrap</p>
				</div>
			</div>
		</div>
	</footer>


>>>>>>> refs/remotes/origin/master
</body>
</html>