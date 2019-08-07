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


	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">訂單${thisorder.cartID} 詳細</h1>
						<ol class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li><a href="<spring:url value='/memberorders'/>">回全部訂單</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="user-dashboard page-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="list-inline dashboard-menu text-center">
						<%-- 						<li><a href="<spring:url value='/memberorders'/>">回全部訂單</a></li> --%>
						<!-- 						<li><a class="active" href="order.html">訂單詳細</a></li> -->
						<!-- 						<li><a href="address.html">申請廠商</a></li> -->
						<!-- 						<li><a href="profile-details.html">修改資料</a></li> -->
					</ul>
					<div class="dashboard-wrapper user-dashboard">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>產品圖片:</th>
										<th>產品名稱:</th>
										<th>產品數量</th>
										<th>產品單價</th>
										<!-- 										<th>運費</th> -->
										<!-- 										<th>訂單總價</th> -->
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${allitem}">
										<tr>
											<td><img width="40"
												src="<c:url value='/getPicture/${item.productBean.productId}' />"
												alt="" /></td>
											<td>${item.productBean.title}</td>
											<td>${item.quantity}</td>
											<td>$${item.price}</td>
											<!-- 										<td>$120</td> -->
											<!-- 										<td>$${thisorder.totalprice}</td> -->
										</tr>
										<div>
									</c:forEach>

									</div>


									<!--  									<span class="label label-primary">Processing</span>								 -->
									<!--  									<tr>  -->
									<!-- 																		<td>#451231</td> -->
									<!-- 																		<td>Mar 25, 2016</td> -->
									<!-- 																		<td>3</td> -->
									<!-- 																		<td>$150.00</td> -->
									<!-- 																		<td><span class="label label-success">Completed</span></td> -->
									<!-- 																		<td><a href="#" class="btn btn-default">View</a></td> -->
									<!-- 								</tr> -->
									<!-- 								<tr> -->
									<!-- 									<td>#451231</td> -->
									<!-- 									<td>Mar 25, 2016</td> -->
									<!-- 									<td>3</td> -->
									<!-- 									<td>$150.00</td> -->
									<!-- 									<td><span class="label label-danger">Canceled</span></td> -->
									<!-- 									<td><a href="#" class="btn btn-default">View</a></td> -->
									<!-- 								</tr> -->
									<!-- 								<tr> -->
									<!-- 									<td>#451231</td> -->
									<!-- 									<td>Mar 25, 2016</td> -->
									<!-- 									<td>2</td> -->
									<!-- 									<td>$99.00</td> -->
									<!-- 									<td><span class="label label-info">On Hold</span></td> -->
									<!-- 									<td><a href="#" class="btn btn-default">View</a></td> -->
									<!-- 								</tr> -->
									<!-- 								<tr> -->
									<!-- 									<td>#451231</td> -->
									<!-- 									<td>Mar 25, 2016</td> -->
									<!-- 									<td>3</td> -->
									<!-- 									<td>$150.00</td> -->
									<!-- 									<td><span class="label label-warning">Pending</span></td> -->
									<!-- 									<td><a href="#" class="btn btn-default">View</a></td> -->
									<!-- 								</tr> -->
								</tbody>
							</table>
							<ul style="float: right">
								<li>運費:${thisorder.fee}</li>
								<li>總額:${thisorder.totalprice}</li>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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
	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script src="plugins/instafeed-js/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/assets/warning.js"></script>



	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="js/script.js"></script>
</body>
</html>