<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<style>


.slick-prev {
    left: -50px;
}
.slick-prev:before, .slick-next:before {
    font-size: 50px;
    color: #8d0404;
}
</style>


<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<!-- <link rel='stylesheet' -->
<%-- 	href='${pageContext.request.contextPath}/css/styles.css' --%>
<!-- 	type="text/css" /> -->
<link href="css/sb-admin-2.css" rel="stylesheet">


<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<!-- <link -->
<!-- 	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" -->
<!-- 	rel="stylesheet"> -->

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">


</head>

<body id="page-top">
<div id="myCarousel" class="carousel slide">
	
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					EEIT後台 <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="back2">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>賣場資訊</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">
		
			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>商品</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">商品資訊</h6>
						<a class="collapse-item" href="backproducts">商品總覽</a> <a
							class="collapse-item" href='backaddProduct'>商品上架</a>
						<!--             <a class="collapse-item" href="products/add2">手機規格修改</a> -->
						<!--              <a class="collapse-item" href='productupdate'>產品資訊修改</a> -->

					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> 
			  <span>廣告</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">廣告</h6>
            <a class="collapse-item" href="advertise">購買廣告</a>
                    
            <a class="collapse-item" href="advertiselist">曝光商品</a>
<!--             <a class="collapse-item" href="utilities-animation.html">Animations</a> -->
<!--             <a class="collapse-item" href="utilities-other.html">Other</a> -->
          </div>
        </div>
      </li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">帳號資訊</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>廠商資料</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">基本資料</a> <a
							class="collapse-item" href="register.html">更改密碼</a>
						<!--             <a class="collapse-item" href="forgot-password.html">Forgot Password</a> -->
						<!--             <div class="collapse-divider"></div> -->
						<!--             <h6 class="collapse-header">Other Pages:</h6> -->
						<!--             <a class="collapse-item" href="404.html">404 Page</a> -->
						<!--             <a class="collapse-item" href="blank.html">Blank Page</a> -->
					</div>
				</div></li>

			<!--       Nav Item - Charts -->
			<!--       <li class="nav-item"> -->
			<!--         <a class="nav-link" href="charts"> -->
			<!--           <i class="fas fa-fw fa-chart-area"></i> -->
			<!--           <span>Charts</span></a> -->
			<!--       </li> -->

			<!--       Nav Item - Tables -->
			<!--       <li class="nav-item"> -->
			<!--         <a class="nav-link" href="tables.html"> -->
			<!--           <i class="fas fa-fw fa-table"></i> -->
			<!--           <span>Tables</span></a> -->
			<!--       </li> -->

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler · 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun · 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez · 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog · 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${member.username}</span>
								<img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				
				
			
				<!-- End of Topbar -->

				<!-- Bootstrap core JavaScript-->
				<script src="vendor/jquery/jquery.min.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="plugins/jquery/dist/jquery.min.js"></script>

				<!-- Custom scripts for all pages-->
				<script src="js/sb-admin-2.min.js"></script>

				<!-- Page level plugins -->
				<script src="vendor/chart.js/Chart.min.js"></script>

				<!-- Page level custom scripts -->
				<script src="js/demo/chart-area-demo.js"></script>
				<script src="js/demo/chart-pie-demo.js"></script>

				<!-- 				var add_button =(".add_field_button"); -->
				<script>
					$(document).ready(function() {
						var a = $("#pid").val();
						console.log(a);
					});
				</script>

				<input type="hidden" id="pid" value="1">

				<script type="text/javascript">
					function sendajax(adId, index) {
						let budget = $('.getbudget')[index].value
						console.log('b',budget);
						let JSONObj = {	
							"budget" : budget,
							"adId" : adId
						}

						$.ajax({
									type : "POST",
									url : "${pageContext.request.contextPath}/updatebudget",
									data : JSONObj,
									dataType : "json",
									success : function(data) {
										alert(data);
									}
								});
						window.location.reload()
					}
				</script>

				<!-- 					<div class="limiter"> -->
				<!-- 				<div class="container-table100"> -->
				<!-- 					<div class="wrap-table100"> -->
				<!-- 						<div class="table"> -->
				<!-- 							<div class="row header"> -->
				<!-- 								<div class="cell">編號</div> -->
				<!-- 								<div class="cell">產品圖片</div> -->
				<!-- 								<div class="cell">廣告名稱</div> -->
				<!-- 								<div class="cell">預算</div> -->
				<!-- 								<div class="cell">目前點擊次數</div> -->
				<!-- 																<div class="cell">點擊費用</div> -->
				<!-- 								<div class="cell">廣告狀態</div> -->
				<!-- 								<div class="cell">設定時間</div> -->
				<!-- 								<div class="cell">目前花費</div> -->
				<!-- 																<div class="cell">銷售量</div> -->

				<!-- 								<div class="cell">產品刪除</div> -->
				<!-- 							</div> -->
				<!-- 							<div> -->
				<%-- 								<c:forEach var='advertise' items='${advertise}'> --%>
				<!-- 									<div class="row"> -->
				<%-- 										<div class="cell" data-title="Id">${advertise.adId}</div> --%>
				<%-- 										<input type="hidden" name="id" value="${advertise.adId}" --%>
				<!-- 											id="adid"> -->


				<!-- 										<div class="cell" data-title="Image"> -->
				<!-- 											<img width='130px' height='100px' -->
				<%-- 												src="<c:url value='/getPicture/${advertise.productId}' />" /> --%>
				<!-- 										</div> -->
				<!-- 										<div class="cell" data-title="addiscription"> -->
				<%-- 											${advertise.addiscription}</div> --%>
				<%-- 											${advertise.click} --%>
				<%-- 											${advertise.price} --%>
				<%-- 											${advertise.status} --%>
				<%-- 											${advertise.campaigndate} --%>


				<%-- 										<div class="cell" data-title="click">0${advertise.click}</div> --%>
				<%-- 										<div class="cell" data-title="price">${advertise.price}</div> --%>
				<%-- 																				<div class="cell" data-title="spend">${advertise.spend}</div> --%>

				<%-- 										<div class="cell" data-title="campaigndate">${advertise.status}</div> --%>
				<%-- 										<div class="cell" data-title="campaigndate">${advertise.campaigndate}</div> --%>
				<!-- 																				<div class="cell" data-title="totalspend"> -->
				<%-- 																					${advertise.spend/advertise.click}</div> --%>
				<%-- 																				<div class="cell" data-title="qty">${advertise.qty}</div> --%>
				<!-- 										<div class="cell" data-title="budget" style="align: center"> -->
				<%-- 											<div>${advertise.budget} --%>
				<%-- 												<input type="text" name="budget" value="${advertise.budget}" --%>
				<!-- 													id="getbudget" class="input" style="width: 30%"> <input -->
				<!-- 													type="button" name="button" id="button" -->
				<!-- 													onclick="sendajax()" value="更新" class="btn btn-primary"> -->
				<!-- 											</div> -->
				<!-- 										</div> -->

				<!-- 										<div class="cell" data-title="delete"> -->
				<!-- 											<a -->
				<%-- 												href="<spring:url value='/delete1?id=${advertise.adId}' />" --%>
				<!-- 												class="btn btn-primary" style="background: red" -->
				<!-- 												onclick="return confirm('!※!確定要刪除此商品嗎 !※!')"> <span -->
				<!-- 												class="glyphicon-info-sigh glyphicon"></span>※刪除商品※ -->
				<!-- 											</a> -->
				<!-- 										</div> -->
				<!-- 																				<div class="cell" data-title="修改"> -->
				<!-- 																					<a -->
				<%-- 																						href="<spring:url value='/backproduct?id=${advertise.productId}' />" --%>
				<!-- 																						class="btn btn-primary">商品資料 -->
				<!-- 																					</a> -->
				<!-- 									</div> -->
				<%-- 								</c:forEach> --%>
				<!-- 							</div> -->

				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->


				<div style="width: 90%; margin-left: 60px;">
					<table class="table">
						<thead>
							<tr>

								<th scope="col">編號</th>
								<th scope="col" style="text-align: center">產品圖片</th>
								<th scope="col">廣告名稱</th>
								<th scope="col">廣告型態</th>
								<th scope="col">目前點擊次數</th>
								<th scope="col">廣告狀態</th>
								<th scope="col">廣告設定時間</th>
								<th scope="col" style="width:90px">預算</th>
								<th scope="col" style="width:90px">修改</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var='advertise' items='${advertise}' varStatus="loop">
								<tr>
									<!-- 											<th scope="row">1</th> -->
									<td>${advertise.adId}<input type="hidden" name="id"
										value="${advertise.adId}" id="adid"></td>
									<td><img width='130px' height='100px'
										src="<c:url value='/getPicture/${advertise.productId}' />" /></td>
									<td>${advertise.addiscription}</td>
									<td>${advertise.status}</td>

									<td>${advertise.click}</td>
									<td>${advertise.adroletext}</td>
									<td>${advertise.campaigndate}</td>
									<td style="width:20px">${advertise.budget}</td>
									<td style="width:100px">
									  <input type="text" name="budget"
										value="${advertise.budget}"  class="input getbudget"
										style="width: 60%">	</td>
									<td style="width:40px"><input type="button" name="button"
										id="button" onclick="sendajax(${advertise.adId}, ${loop.index})" value="更新"
										class="btn btn-primary"> <!-- 												</div> -->
									</td>
									<td><div class="cell" data-title="delete">
											<a
												href="<spring:url value='/delete1?id=${advertise.adId}' />"
												class="btn btn-primary" style="background: red"
												onclick="return confirm('!※!確定要刪除此廣告嗎 !※!')"> <span
												class="glyphicon-info-sigh glyphicon"></span>※刪除廣告※
											</a>
										</div></td>



								</tr>
							</c:forEach>
						</tbody>
					</table>


<div class="slick">
    <img src="images/slider/slide-1.jpg" alt="">
    <img src="images/slider/slide-2.jpg" alt="">
    <img src="images/slider/slide-3.jpg" alt="">
    <img src="images/slider/slide-4.jpg" alt="">
    <img src="images/slider/slide-5.jpg" alt="">
</div>

				</div>
				</div>
				</div>
				</div>
				</div>
				
				
				
				<!--===============================================================================================-->
				<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
				<!--===============================================================================================-->
				<script src="vendor/bootstrap/js/popper.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
				<!--===============================================================================================-->
				<script src="vendor/select2/select2.min.js"></script>
				<!--===============================================================================================-->
				<script src="js/main.js"></script>
</body>
</html>
