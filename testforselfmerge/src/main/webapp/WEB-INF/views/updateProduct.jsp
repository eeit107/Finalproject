<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;
	text-align: center;
}

input::-webkit-inner-spin-button {
	-webkit-appearance: none;
}

input[type="number"] {
	-moz-appearance: textfield;
}

.enjoy-css {
	display: inline;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	float: left;
	padding: 10px 20px;
	border: 1px solid #b7b7b7;
	-webkit-border-radius: 13px;
	border-radius: 13px;
	font: normal 16px/normal "Times New Roman", Times, serif;
	color: rgba(32, 165, 214, 1);
	-o-text-overflow: clip;
	text-overflow: clip;
	background: rgba(252, 252, 252, 1);
	-webkit-box-shadow: 2px 2px 2px 0 rgba(0, 0, 0, 0.2) inset;
	box-shadow: 2px 2px 2px 0 rgba(0, 0, 0, 0.2) inset;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.66);
	-webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
	-moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
	-o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
	transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
}

.demo {
	-webkit-appearance: none; /*Removes default chrome and safari style*/
	-moz-appearance: none; /* Removes Default Firefox style*/
	appearance: none;
	width: 100px;
	color: #000;
	text-align: center;
	text-align-last: center;
	font: normal 14px/normal "Times New Roman", Times, serif;
	border-radius: 15px;
	padding: 5px;
	box-shadow: inset 0 0 5px rgba(000, 000, 000, 0.5);
	text-align-last: center;
}

.box {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.box :select {
	background-color: #0563af;
	color: white;
	padding: 12px;
	width: 250px;
	border: none;
	font-size: 20px;
	box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
	-webkit-appearance: button;
	appearance: button;
	outline: none;
}
</style>

<title>Products</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">
</head>
<body id="page-top">



	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index2.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					哥機拉廠商管理後台 <sup>2</sup>
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


					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>廣告</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">廣告</h6>
						<a class="collapse-item" href="advertise">購買廣告</a> <a
							class="collapse-item" href="advertiselist">曝光商品</a>
						<!--             <a class="collapse-item" href="utilities-animation.html">Animations</a> -->
						<!--             <a class="collapse-item" href="utilities-other.html">Other</a> -->
					</div>
				</div></li>

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
			<div>

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<%--           <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"> --%>
					<!--             <div class="input-group"> -->
					<!--               <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2"> -->
					<!--               <div class="input-group-append"> -->
					<h2>更新商品資料</h2>
					<!--                 <button class="btn btn-primary" type="button"> -->
					<!--                   <i class="fas fa-search fa-sm"></i> -->
					<!--                 </button> -->
					<!--               </div> -->
					<!--             </div> -->
					<%--           </form> --%>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<input type="button" name="" value="上架" onClick="ok2()"
							style="border: 2px #9999FF none; background-color: white">
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
				<ol class="breadcrumb">

					<li><a class="btn btn-primary" href="backproducts">返回</a></li>
				</ol>

				<section>

					<!--       三個地方要完全一樣 -->
					<form:form method='POST' modelAttribute="productBean"
						class='form-horizontal' enctype="multipart/form-data">
						<div class="row">
							<div class="col-sm-4" style="text-align: center">
								<fieldset>
									<legend style="text-align: center; font-size: 22px;">販賣資訊</legend>
									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='title'>
											標題 </label>
										<div class="col-lg-10">
											<form:input id="title" path="title" type='text' name="form1"
												method="post" class='enjoy-css' action=""
												required="required" />
										</div>
									</div>

									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="modelid">
											型號 </label>
										<div class='col-lg-10'>
											<form:input id="modelid" path="modelid" type='text'
												class='enjoy-css' required="required" />

										</div>
									</div>


									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="weight">
											重量 </label>
										<div class='col-lg-10'>
											<form:input id="weight" path="weight" type='text'
												class='enjoy-css' required="required" />

										</div>
									</div>
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="color">
											顏色 </label>
										<div class='col-lg-10'>
											<form:input id="color" path="color" type='text'
												class='enjoy-css' required="required" />

										</div>
									</div>
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="price">
											價格 </label>
										<div class='col-lg-10'>
											<form:input id="price" path="price" type='number' min="1"
												max="100000" placeholder="價格範圍 1 ~ 100,000"
												class='enjoy-css' style="width:195px"></form:input>
										</div>
									</div>


									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="stock">
											庫存 </label>
										<div class='col-lg-10'>
											<form:input id="stock" path="stock" type='number' min="1"
												max="999" placeholder="庫存範圍 1 ~ 999" class='enjoy-css'
												style="width:195px" />

										</div>
									</div>
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="author">
											內文:</label>
										<div class='col-lg-10'>
											<form:textarea name="author" Cols="25" Rows="5" id="author"
												path="author" onKeyUp="javascript:checkWord(this);"
												onMouseDown="javascript:checkWord(this);" class='enjoy-css' />
										</div>
									</div>
									<div class="form-group">
										<div class='col-lg-offset-2 col-lg-10'>
											<div>
												還可以輸入<span style="font-family: Georgia; font-size: 8px;"
													id="wordCheck">128</span>個字
											</div>
										</div>
									</div>
								</fieldset>
							</div>

							<div class="col-sm-4" style="text-align: center">
								<fieldset>
									<legend style="text-align: center; font-size: 22px;">技術規格</legend>
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-2' for="category">
											廠牌 </label>
										<div class='col-lg-10'>

											<form:select id="category" path="category"
												class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>Apple</option>
												<option>Asus</option>
												<option>Samsung</option>
												<option>LG</option>
												<option>mi</option>
												<option>SHARP</option>
												<option>Oppo</option>
												<option>HTC</option>
												<option>SUGAR</option>
												<option>VIVO</option>
												<option>Huawei</option>
												<option>Other</option>
											</form:select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='CPU'>CPU核心
										</label>
										<div class="col-lg-10">

											<form:select id="CPU" path="CPU" class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>1</option>
												<option>2</option>
												<option>4</option>
												<option>8</option>
												<option>16</option>
												<option>32</option>
											</form:select>


										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='rom'>ROM
										</label>
										<div class="col-lg-10">
											<form:select id="rom" path="rom" class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>1 GB</option>
												<option>2 GB</option>
												<option>4 GB</option>
												<option>8 GB</option>
												<option>16 GB</option>
											</form:select>
										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='ram'>
											RAM </label>
										<div class="col-lg-10">
											<form:select id="ram" path="ram" class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>32 GB</option>
												<option>64 GB</option>
												<option>128 GB</option>
												<option>256 GB</option>
												<option>512 GB</option>
											</form:select>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2"
											for='releasedate'> 上市日期</label>
										<div class="col-lg-10">
											<form:input id="releasedate" path="releasedate" type='month'
												class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align:center;" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2"
											for='screenpixel'> 相機畫素 </label>
										<div class="col-lg-10">
											<form:select id="screenpixel" path="screenpixel"
												class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>600萬</option>
												<option>800萬</option>
												<option>1000萬</option>
												<option>1200萬</option>
												<option>1400萬</option>
												<option>1600萬</option>
												<option>1800萬</option>
												<option>2000萬</option>
											</form:select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2"
											for='screensize'> 螢幕尺寸 </label>
										<div class="col-lg-10">
											<form:select id="screensize" path="screensize"
												class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>4.5 吋</option>
												<option>4.7 吋</option>
												<option>5.0 吋</option>
												<option>5.5 吋</option>
												<option>5.8 吋</option>
												<option>6.0 吋</option>
												<option>6.3 吋</option>
												<option>6.5 吋</option>
												<option>6.7 吋</option>
												<option>Other</option>
											</form:select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='system'>
											作業系統 </label>
										<div class="col-lg-10">
											<form:select id="system" path="system"
												class='form:input-large'
												style="background-color:#20A5D6;color: white;width: 250px;border: none;font-size: 20px;border-radius: 15px;text-align-last: center;">
												<option>IOS</option>
												<option>Android</option>
												<option>Windows</option>
												<option>Other</option>
											</form:select>
										</div>
									</div>

								</fieldset>
							</div>


							<div class="col-sm-4" style="text-align: center">
								<fieldset>
									<legend style="text-align: center; font-size: 22px;">圖片影音</legend>

									<div class="form-group">
										<label class="control-label col-lg-2 col-lg-2" for='brand'>
											嵌入影片 </label>
										<div class="col-lg-10">
											<form:input id="brand" path="brand" type='text'
												class='enjoy-css' />
										</div>
									</div>
									<br>
									<h2>賣場圖片</h2>
									<div class="form-group">
										<label for="productImage">
											<div>
												<form:input type="file" path="productImage"
													name="productImage" id="productImage" accept="image/*"
													onchange="productImage7" style="display: none;" />
											</div> <img id="productImage7"
											style="background-color: white; margin: 20px; height: 100px; width: 100px"
											src="images/add.png" />

										</label> <label for="productImage2">
											<div>
												<form:input type="file" path="productImage2"
													name="productImage2" id="productImage2" accept="image/*"
													onchange="productImage8" style="display: none;" />
												<img id="productImage8"
													style="background-color: white; margin: 20px; height: 100px; width: 100px"
													src="images/add2.png" />
											</div>
										</label> <label for="productImage3">
											<div>
												<form:input type="file" path="productImage3"
													name="productImage3" id="productImage3" accept="image/*"
													onchange="productImage9" style="display: none;" />
												<img id="productImage9"
													style="background-color: white; margin: 20px; height: 100px; width: 100px"
													src="images/add3.png" />
											</div>
										</label> <label for="productImage4">
											<div>
												<form:input type="file" path="productImage4"
													name="productImage4" id="productImage4" accept="image/*"
													onchange="productImage4" style="display: none;" />
												<img id="productImage10"
													style="background-color: white; margin: 20px; height: 100px; width: 100px"
													src="images/add4.png" />

											</div>
										</label> <label for="productImage5"> <form:input type="file"
												accept="image/*" path="productImage5" name="productImage5"
												id="productImage5" onchange="productImage5"
												style="display: none;" /> <img id="productImage11"
											style="background-color: white; margin: 20px; height: 100px; width: 100px"
											src="images/add5.png" />

										</label>
									</div>
								</fieldset>
							</div>
						</div>
						<div style="text-align: center">
							<input id="btnAdd" type='submit' class='btn btn-primary'
								value="更新商品" style="width: 140px; height: 50px" />
						</div>
					</form:form>
				</section>



				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2019</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script src="vendor/chart.js/Chart.min.js"></script>

		<!-- Page level custom scripts -->
		<script src="js/demo/chart-area-demo.js"></script>
		<script src="js/demo/chart-pie-demo.js"></script>

		<script>
			var maxstrlen = 128;
			function Q(s) {
				return document.getElementById(s);
			}
			function checkWord(c) {
				len = maxstrlen;
				var str = c.value;
				myLen = getStrleng(str);
				var wck = Q("wordCheck");
				if (myLen > len * 2) {
					c.value = str.substring(0, i + 1);
				} else {
					wck.innerHTML = Math.floor((len * 2 - myLen) / 2);
				}
			}
			function getStrleng(str) {
				myLen = 0;
				i = 0;
				for (; (i < str.length) && (myLen <= maxstrlen * 2); i++) {
					if (str.charCodeAt(i) > 0 && str.charCodeAt(i) < 128) //字符编码，128以内的是数字，英文字符，已经英文的符号等
						myLen++;
					else
						myLen += 2;
				}
				return myLen;
			}

			function ok2() {
				$("#title").val("IPHONE XS ");
				$("#category").val("Apple");
				$("#modelid").val("iPhoneXS");
				$("#weight").val("177");
				$("#color").val("white");
				$("#CPU").val("4");
				$("#rom").val("4 GB");
				$("#ram").val("256 GB");
				$("#releasedate").val("2018-09");
				$("#screenpixel").val("1200萬");
				$("#screensize").val("5.8 吋");
				$("#system").val("IOS");
				$("#price").val("35500");
				$("#stock").val("10");
				$("#author").val(
						"iPhone屬特殊商品, 台灣蘋果公司貨,有原廠保固一年 ");
				$("#brand").val("https://www.youtube.com/embed/mzvJnUxptz0");
			}
			function readURL(input) {
				if (input.files && input.files[0]) {
					var imageTagID = input.getAttribute("targetID");
					var reader = new FileReader();
					reader.onload = function(e) {
						var img = document.getElementById(imageTagID);
						img.setAttribute("src", e.target.result)
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
			$(function() {
				function format_float(num, pos) {
					var size = Math.pow(10, pos);
					return Math.round(num * size) / size;
				}
				;

				function preview(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#productImage7').attr('src', e.target.result);
						};
						reader.readAsDataURL(input.files[0]);
					}
					;
				}
				;

				$("#productImage").change(function() {
					preview(this);
				});
			});
			$(function() {
				function format_float(num, pos) {
					var size = Math.pow(10, pos);
					return Math.round(num * size) / size;
				}
				;

				function preview(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#productImage8').attr('src', e.target.result);
						};
						reader.readAsDataURL(input.files[0]);
					}
					;
				}
				;

				$("#productImage2").change(function() {
					preview(this);
				});
			});
			$(function() {
				function format_float(num, pos) {
					var size = Math.pow(10, pos);
					return Math.round(num * size) / size;
				}
				;

				function preview(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#productImage9').attr('src', e.target.result);
						};
						reader.readAsDataURL(input.files[0]);
					}
					;
				}
				;

				$("#productImage3").change(function() {
					preview(this);
				});
			});
			$(function() {
				function format_float(num, pos) {
					var size = Math.pow(10, pos);
					return Math.round(num * size) / size;
				}
				;

				function preview(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#productImage10').attr('src', e.target.result);
						};
						reader.readAsDataURL(input.files[0]);
					}
					;
				}
				;

				$("#productImage4").change(function() {
					preview(this);
				});
			});
			$(function() {
				function format_float(num, pos) {
					var size = Math.pow(10, pos);
					return Math.round(num * size) / size;
				}
				;

				function preview(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#productImage11').attr('src', e.target.result);
						};
						reader.readAsDataURL(input.files[0]);
					}
					;
				}
				;

				$("#productImage5").change(function() {
					preview(this);
				});
			});
		</script>
</body>
</html>
