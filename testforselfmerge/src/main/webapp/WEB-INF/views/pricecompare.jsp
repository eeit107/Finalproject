<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
			<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
				<html>

				<head>
					<meta charset="UTF-8">
					<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
					<title>Products</title>
					<!-- <link rel='stylesheet' -->
					<%-- 	href='${pageContext.request.contextPath}/css/styles.css' --%>
						<!-- 	type="text/css" /> -->
						<script src="plugins/jquery/dist/jquery.min.js"></script>
						<!-- Bootstrap 3.1 -->
						<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
						<!-- <script src="vendor/jquery/jquery.js"></script> -->
						<script>
							firstshow();
							var productDetail = []
							
							function firstshow() {
								$.ajax({
									url: "${pageContext.request.contextPath}/comparelist",
									type: "POST",
									async: true,
									dataType: "json",
									contentType: "application/json",
									success: function (data) {
										console.log('data', typeof data, data)

										this.productDetail = data
										// 				alert(names);
										// 				var txt = "";

										// 				for (i in names) {
										// 					//console.log(i + ':' + names[i].productId);
										// 					txt += "<option value='"+i+"'>" + names[i].category
										// 							+ "</option>";
										// 				}
										console.log($('section').children());
										//				alert(title);
										// 				$("#show5").append(title);
										// 				$("#show6").append(title);
										// 				$("#show7").append(title);
										// 				$("#show8").append(title);
										// 				$("#show9").append(title);
									},
									error: function (data, textStatus, errorThrown) {
										console.log(data);
									},
								}).then(response => {
									console.log(response)
									this.productDetail = response
									var names = JSON.parse(JSON.stringify(response).split(","));
									var title = "";
									for (i in names) {
										//console.log(i + ':' + names[i].productId);
										title += "<option value='" + names[i].productId + "'>" + names[i].title
											+ "</option>";
									}
									console.log('show', $("#show1"))
									$("#show").append(title);
									$("#show1").append(title);
									$("#show2").append(title);
									$("#show3").append(title);
									$("#show4").append(title);
								}).catch(error => {
									console.log(error)
								});
							}

							// 	secondshow();
							// 	var productDetail1 = []
							// 	function secondshow() {

							// 		$.ajax({
							// 			url : "${pageContext.request.contextPath}/comparelist1",
							// 			type : "POST",
							// 			async : true,
							// 			dataType : "json",
							// 			contentType : "application/json",
							// 			success : function(data) {
							// 				var names = JSON.parse(JSON.stringify(data).split(","));
							// 				this.productDetail1 = JSON.parse(JSON.stringify(data).split(","));
							// 				var txt1 = "";
							// // 				alert(names[0].cellphoneId)
							// // 				alert(names[0].CPU)
							// // 				alert(names[0].screensize)
							// // 				alert(names[0].screenpixel)
							// 				for (i in names) {
							// // 					console.log(i + ':' + names[i].productId);
							// 					txt1 += names[i].cellphoneId+"，"+names[i].screensize+"，"+names[i].screenpixel+" ";

							// 				}

							// // 				$("#show").append(txt1);
							// 				$("#getinfo").html(txt1);		
							// 			},
							// 			error : function(data, textStatus, errorThrown) {
							// 				console.log(data);
							// 			},
							// 		}).then(response => {
							// 			console.log(response)
							// 			this.productDetail1 = response
							// 		}).catch(error => {
							// 			console.log(error)
							// 		});
							// 	}

							// 				var title = "";
							// 				for (i in names) {
							// 					//console.log(i + ':' + names[i].productId);
							// 					title += "<option value='"+i+"'>" + names[i].title
							// 							+ "</option>";
							// 				}

							function changeImg(id) {
								console.log("getid" + id)
								var x = document.getElementById(id).value;
								
								
								$('#' + id + '-img').attr("src", "<c:url value='/getPicture/" + (x) + "'/>")
								var index = productDetail.findIndex(e => e.productId === parseInt(x))
								// 							 let price = productDetail.find(e => {
								// 								 console.log(e.productId, x)
								// 								 return e.productId === parseInt(x)
								// 							 }).price
								//console.log('product', x, productDetail[6].modelid, productDetail)
								$('.' + id + '-img-link').attr('href', "/testfinalproject/product?id=" + productDetail[index].productId)

								$('#' + id + '-price').html(productDetail[index].price)
								$('#' + id + '-screenpixel').html(productDetail[index].screenpixel)
								$('#' + id + '-system').html(productDetail[index].system)
								$('#' + id + '-modelid').html(productDetail[index].modelid)
								$('#' + id + '-weight').html(productDetail[index].weight)
								$('#' + id + '-screensize').html(productDetail[index].screensize)
								$('#' + id + '-rom').html(productDetail[index].rom)
								$('#' + id + '-ram').html(productDetail[index].ram)
								$('#' + id + '-color').html(productDetail[index].color)
								// 							 $('#' +id +'-cPU').html(productDetail[index].cpu)
								$('#' + id + '-releasedate').html(productDetail[index].releasedate)
							}

						</script>
						<style>
							.table {
								/* 	outline-style: solid; */
								width: 300px;
								text-align: center;
								margin-left: auto;
								margin-right: auto;
								border: 3px solid black;
							}

							body {
								font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica,
								sans-serif;
								color: #4f6b72;
								background: white;
							}

							a {
								color: #c75f3e;
							}

							#mytable {
								width: 1000px;
								padding: 0;
								margin: 0;
								text-align: center;
								margin-left: auto;
								margin-right: auto;
								border: 3px solid black;
								height: 600px;
							}

							caption {
								padding: 0 0 5px 0;
								width: 700px;
								font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
								text-align: right;
							}

							th {
								font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
								color: #4f6b72;
								border-right: 1px solid #C1DAD7;
								border-bottom: 1px solid #C1DAD7;
								border-top: 1px solid #C1DAD7;
								letter-spacing: 2px;
								text-transform: uppercase;
								text-align: left;
								padding: 6px 6px 6px 12px;
								background: #CAE8EA;
							}

							th.nobg {
								border-top: 0;
								border-left: 0;
								border-right: 1px solid #C1DAD7;
								background: none;
							}

							td {
								border-right: 1px solid #C1DAD7;
								border-bottom: 1px solid #C1DAD7;
								background: #fff;
								font-size: 11px;
								padding: 6px 6px 6px 12px;
								color: #4f6b72;
							}

							td.alt {
								background: #F5FAFA;
								color: #797268;
							}

							th.spec {
								border-left: 1px solid #C1DAD7;
								border-top: 0;
								background: #fff;
								font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
								text-align: center;
							}

							th.specalt {
								border-left: 1px solid #C1DAD7;
								border-top: 0;
								background: #f5fafa;
								font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
								color: #797268;
							}

							html>body td {
								font-size: 11px;
							}
						</style>

 <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Revolution Slider -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

    
    <!-- Main jQuery -->
<!--     <script src="plugins/jquery/dist/jquery.min.js"></script> -->
<!--     Bootstrap 3.1 -->
<!--     <script src="plugins/bootstrap/js/bootstrap.min.js"></script> -->
<!--     Bootstrap Touchpin -->
<!--     <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script> -->
<!--     Instagram Feed Js -->
<!--     <script src="plugins/instafeed-js/instafeed.min.js"></script> -->
<!--     Video Lightbox Plugin -->
<!--     <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script> -->
<!--     Count Down Js -->
<!--     <script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script> -->
    
<!--     Revolution Slider -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script> -->
    
<!--     Revolution Slider -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script> -->
<!--     <script type="text/javascript" src="plugins/revolution-slider/assets/warning.js"></script>   -->




    <!-- Main Js File -->
    <script src="js/script.js"></script>
    

				</head>

				<body>
<%-- 				<a href="<spring:url value='/products' />"> --%>
				
<!-- 				<div style="margin:auto; margin-left: 80px;text-align:ceter; "> -->
<!-- 			<img src="images/banner2.JPG" alt="" /> -->
<!-- 			</div> -->
<!-- 				</a> -->
<%-- 				<jsp:include page="header.jsp"></jsp:include>  --%>
<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
<!-- 						<i class="tf-ion-ios-telephone"></i> <span>0129- -->
<!-- 							12323-123123</span> -->
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="."> <!-- replace logo here --> <svg
								width="135px" height="100px" viewBox="0 0 155 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group"
									transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325">哥機拉</tspan>
						            </text>
						        </g>
						    </g>
						</svg>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
						<!-- Cart -->
			<ul class="top-menu text-right list-inline">

	          <li class="dropdown cart-nav dropdown-slide">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-android-cart"></i>Cart</a>
							<div class="dropdown-menu cart-dropdown">
							<c:forEach var='ctest' items="${shopCart}">
								購物車明細 廠商${ctest.key}的所有商品
								<!-- Cart Item -->
             			     <c:forEach var='test' items='${ctest.value.cartitemmap}'>
								<div class="media">
									<a class="pull-left" href="#"> 
									<img class="media-object"src="<c:url value='/getPicture/${test.value.productBean.productId}' />" alt="image" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="">${test.value.productBean.title}</a>
										</h4>
										<div class="cart-price">
											<span>${test.value.quantity} x</span>
										<span>${test.value.price}</span>
										</div>
										<h5>
											<strong>${test.value.quantity*test.value.price}</strong>
										</h5>
									</div>
									<a href="<c:url value='/removefromcart?removeId=${test.value.productBean.productId}'/>" class="remove"><i class="tf-ion-close"></i></a>
									<c:set value="${sum +test.value.quantity*test.value.price}"
									var="sum" />
								</div>
									</c:forEach>
								<!-- / Cart Item -->
								</c:forEach>
								<div class="cart-summary">
									<span>Total</span> <span class="total-price">${sum}</span>
								</div>
								<ul class="text-center cart-buttons">
									<li><a href="<spring:url value='/viewtocart' />" class="btn btn-small">View Cart</a></li>
								</ul>
							</div></li>
							<!-- / Cart -->

	          <!-- Search -->
	          <li class="dropdown search dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i> Search</a>
	            <ul class="dropdown-menu search-dropdown">
	            </ul>
	          </li>
	          <!-- / Search -->
<!-- 登入系統 -->
<%-- <sec:authentication property="principal" var="authentication"/> ${authentication.username}--%>
<%-- <sec:authorize access="isAuthenticated()"> --%>
<%-- <sec:authentication property="principal.username"/> --%>
<%-- </sec:authorize> --%>

	<!-- 登入系統 -->

	        </ul>
					<!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>


<!-- Main Menu Section -->
<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">Main Menu</h2>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- / .navbar-header -->
				<!-- Navbar Links -->
				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">
						<!-- Home首頁 -->
	          <li class="dropdown ">
	           <a href="index2.html">Home</a>
	          </li><!-- / Home -->
	       <!-- 商品 -->   
	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">商品 <span class="tf-ion-ios-arrow-down"></span></a>
	                	<ul class="dropdown-menu">
								<li class="dropdown-header">商品</li>
								<li><a href="products">全部商品</a></li>
								<li><a href="queryByCategory">廠牌搜索</a></li>
								<li><a href="pricecompare">比較商品</a></li>
								<li><a href="#要放JSP網址">進階搜索</a></li>
							</ul>	              
			</li>

	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">訂單 <span class="tf-ion-ios-arrow-down"></span></a>
		                	<ul class="dropdown-menu">
		                	<li class="dropdown-header">訂單</li>
		                	<li role="separator" class="divider"></li>
								<li><a href="<spring:url value='/memberorders'/>">訂單總覽</a></li>
								<li><a href="<spring:url value='/viewtocart' />">購物車 </a></li>
		                	</ul>
				</li>
	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">帳號 <span class="tf-ion-ios-arrow-down"></span></a>
	            <ul class="dropdown-menu">
	            <li class="dropdown-header">帳號</li>
	            <sec:authorize access="hasAuthority('company')">
<!-- 	            <li><a href="company-details">廠商資料</a></li> -->
<!-- 					<li><a href="upcompany">帳號修改</a></li> -->
					<li><a href="back2">廠商專區</a></li>
					</sec:authorize>
	            <sec:authorize access="hasAuthority('user')">
	            <li role="separator" class="divider"></li>
					<li><a href="user-details">會員資料</a></li>
					<li><a href="<c:url value='/update'/>">帳號修改</a></li>
					<li><a href="checkcompany">申請廠商</a></li>
					 </sec:authorize>
					  <sec:authorize access="hasAuthority('admin')">
					 <li><a href="admin">管理員專區</a></li>
					 </sec:authorize>
	            </ul>
	          </li>
	           
	</nav>
</section>
<%-- <section class="page-header" style="height:100px"> --%>
<!-- 	<div class="container" > -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-12"> -->
<!-- 				<div class="content"> -->
<!-- <!-- 					<h1 class="page-name">Shop</h1> -->
<!-- 					<ol class="breadcrumb"> -->
<!-- 						<li><a href="#">Home</a></li> -->
<!-- 						<li class="active">shop</li> -->
<!-- 					</ol> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<%-- </section> --%>

		<!-- Modal -->
		<div class="modal product-modal fade" id="product-modal">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<i class="tf-ion-close"></i>
			</button>
		  	<div class="modal-dialog " role="document">
		    	<div class="modal-content">
			      	<div class="modal-body">
			        	<div class="row">
			        		<div class="col-md-8 col-sm-6 col-xs-12">
			        			<div class="modal-image">
				        			<img class="img-responsive" src="images/shop/products/modal-product.jpg" alt="product-img" />
			        			</div>
			        		</div>
			        		<div class="col-md-4 col-sm-6 col-xs-12">
			        			<div class="product-short-details">
			        				<h2 class="product-title">GM Pendant, Basalt Grey</h2>
			        				<p class="product-price">$200</p>
			        				<p class="product-short-description">
			        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
			        				</p>
			        				<a href="cart.html" class="btn btn-main">Add To Cart</a>
			        				<a href="product-single.html" class="btn btn-transparent">View Product Details</a>
			        			</div>
			        		</div>
			        	</div>
			        </div>
		    	</div>
		  	</div>
		</div>
<!-- 					<div> -->
<!-- 						<div id='getinfo' class='center'></div> -->

<!-- 					</div> -->
						
						<!-- 	<hr -->
						<!-- 		style="height: 1px; border: none; color: #333; background-color: #333;"> -->
						<section class="container">
							<div style="text-align: center">
								<!-- 			<table class="table"> -->
								<!-- 				<tr> -->
								<!-- 					<td>價格</td> -->
								<!-- 					<td>價格</td> -->
								<!-- 					<td>價格</td> -->
								<!-- 					<td>價格</td> -->
								<!-- 					<td>價格</td> -->
								<!-- 				</tr> -->
								<!-- 			</table> -->

								<table id="mytable" style="textalign:center">
									<tr>
										<th scope="col" abbr="Configurations">手機型號</th>
										<th scope="col" abbr="Dual 2"> 手機1</th>
										<th scope="col" abbr="Dual 2"> 手機2</th>
										<th scope="col" abbr="Dual 2"> 手機3</th>
										<th scope="col" abbr="Dual 2"> 手機4</th>
										<th scope="col" abbr="Dual 2"> 手機5</th>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec" style="height: 10px">選擇手機</th>
										<td>請挑選品牌:
											<select id='show' name="show" onchange="changeImg($(this).attr('id'))">
												<option value="請選擇" id='cr'>請選擇</option>
											</select>
										</td>
										<td>請挑選品牌:
											<select id='show1' name="show" onchange="changeImg($(this).attr('id'))">
												<option value="請選擇" id='cr'>請選擇</option>
											</select>
										</td>
										<td>請挑選品牌:
											<select id='show2' name="show" onchange="changeImg($(this).attr('id'))">
												<option value="請選擇" id='cr'>請選擇</option>
											</select>
										</td>
										<td>請挑選品牌:
											<select id='show3' name="show" onchange="changeImg($(this).attr('id'))">
												<option value="請選擇" id='cr'>請選擇</option>
											</select>
										</td>
										<td>請挑選品牌:
											<select id='show4' name="show" onchange="changeImg($(this).attr('id'))">
												<option value="請選擇" id='cr'>請選擇</option>
											</select>
										</td>
									</tr>
									<!-- 				<tr> -->
									<!-- 					<th scope="row" abbr="Model" class="spec" style="height: 10px">選擇品牌</th> -->
									<!-- 					<td>請挑選品牌: <select id='show5' name="show" -->
									<!-- 						onchange="changeImg($(this).attr('id'))"> -->
									<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
									<!-- 					</select> -->
									<!-- 					</td> -->
									<!-- 					<td>請挑選品牌: <select id='show6' name="show" -->
									<!-- 						onchange="changeImg($(this).attr('id'))"> -->
									<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
									<!-- 					</select> -->
									<!-- 					</td> -->
									<!-- 					<td>請挑選品牌: <select id='show7' name="show" -->
									<!-- 						onchange="changeImg($(this).attr('id'))"> -->
									<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
									<!-- 					</select> -->
									<!-- 					</td> -->
									<!-- 					<td>請挑選品牌: <select id='show8' name="show" -->
									<!-- 						onchange="changeImg($(this).attr('id'))"> -->
									<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
									<!-- 					</select> -->
									<!-- 					</td> -->
									<!-- 					<td>請挑選品牌: <select id='show9' name="show" -->
									<!-- 						onchange="changeImg($(this).attr('id'))"> -->
									<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
									<!-- 					</select> -->
									<!-- 					</td> -->
									<!-- 				</tr> -->
									<tr>
										<th scope="row" abbr="Model" class="spec">產品圖片</th>

										<td>
										
											<div>
												<a href="" class="show-img-link">
												<img id="show-img" width='120px' height='100px' src="images/noimage1.jpg" />
												</a>
											</div>
										</td>
										<td>
											<div>
												<img id="show1-img" width='120px' height='100px' src="images/noimage1.jpg"/>
											</div>
										</td>
										<td>
											<div>
												<img id="show2-img" width='120px' height='100px'  src="images/noimage1.jpg" />
											</div>
										</td>
										<td>
											<div>
												<img id="show3-img" width='120px' height='100px'  src="images/noimage1.jpg" />
											</div>
										</td>

										<td>
											<div>
												<img id="show4-img" width='120px' height='100px'  src="images/noimage1.jpg" />
											</div>
										</td>


									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">產品價格</th>
										<td class="alt" id="show-price"></td>
										<td class="alt" id="show1-price"></td>
										<td class="alt" id="show2-price"></td>
										<td class="alt" id="show3-price"></td>
										<td class="alt" id="show4-price"></td>
										<%-- 					<td id='priceTD'>${product.price}</td> --%>
											<%-- 					<td>${product.price}</td> --%>
												<!-- 					<th scope="row" abbr="G5 Processor" class="specalt"></th> -->

									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">產品型號</th>
										<td class="alt" id="show-modelid"></td>
										<td class="alt" id="show1-modelid"></td>
										<td class="alt" id="show2-modelid"></td>
										<td class="alt" id="show3-modelid"></td>
										<td class="alt" id="show4-modelid"></td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">產品重量</th>
										<td class="alt" id="show-weight"></td>
										<td class="alt" id="show1-weight"></td>
										<td class="alt" id="show2-weight"></td>
										<td class="alt" id="show3-weight"></td>
										<td class="alt" id="show4-weight"></td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">銀幕尺寸</th>
										<td class="alt" id="show-screensize">${product.screensize}</td>
										<td class="alt" id="show1-screensize">${product.screensize}</td>
										<td class="alt" id="show2-screensize">${product.screensize}</td>
										<td class="alt" id="show3-screensize">${product.screensize}</td>
										<td class="alt" id="show4-screensize">${product.screensize}</td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">ROM</th>
										<td class="alt" id="show-rom">${product.rom}</td>
										<td class="alt" id="show1-rom">${product.rom}</td>
										<td class="alt" id="show2-rom">${product.rom}</td>
										<td class="alt" id="show3-rom">${product.rom}</td>
										<td class="alt" id="show4-rom">${product.rom}</td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">RAM</th>
										<td class="alt" id="show-ram">${product.ram}</td>
										<td class="alt" id="show1-ram">${product.ram}</td>
										<td class="alt" id="show2-ram">${product.ram}</td>
										<td class="alt" id="show3-ram">${product.ram}</td>
										<td class="alt" id="show4-ram">${product.ram}</td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">color</th>
										<td class="alt" id="show-color"></td>
										<td class="alt" id="show1-color"></td>
										<td class="alt" id="show2-color"></td>
										<td class="alt" id="show3-color"></td>
										<td class="alt" id="show4-color"></td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">螢幕解析度</th>
										<td class="alt" id="show-screenpixel">${product.screenpixel}</td>
										<td class="alt" id="show1-screenpixel">${product.screenpixel}</td>
										<td class="alt" id="show2-screenpixel">${product.screenpixel}</td>
										<td class="alt" id="show3-screenpixel">${product.screenpixel}</td>
										<td class="alt" id="show4-screenpixel">${product.screenpixel}</td>
									</tr>
									<tr>
										<th scope="row" abbr="Model" class="spec">系統</th>
										<td class="alt" id="show-system">${product.system}</td>
										<td class="alt" id="show1-system">${product.system}</td>
										<td class="alt" id="show2-system">${product.system}</td>
										<td class="alt" id="show3-system">${product.system}</td>
										<td class="alt" id="show4-system">${product.system}</td>
									</tr>
									<!-- 				<tr> -->
									<!-- 					<th scope="row" abbr="Model" class="spec">cpu</th> -->
									<!-- 					<td class="alt" id="show-cpu"></td> -->
									<!-- 					<td class="alt" id="show1-cpu"></td> -->
									<!-- 					<td class="alt" id="show2-cpu"></td> -->
									<!-- 					<td class="alt" id="show3-cpu"></td> -->
									<!-- 					<td class="alt" id="show4-cpu"></td> -->

									<!-- 				</tr> -->
									<tr>
										<th scope="row" abbr="Model" class="spec">釋出時間</th>
										<td class="alt" id="show-releasedate">${product.releasedate}</td>
										<td class="alt" id="show1-releasedate">${product.releasedate}</td>
										<td class="alt" id="show2-releasedate">${product.releasedate}</td>
										<td class="alt" id="show3-releasedate">${product.releasedate}</td>
										<td class="alt" id="show4-releasedate">${product.releasedate}</td>
									</tr>
								</table>
							</div>
						</section>
							<section>
							<br>	<br>
								<br>
									<br>
							
							
							
							
							</section>
<%-- 						<jsp:include page="footer.jsp"></jsp:include> --%>
						<%-- 		<jsp:include page="footer.jsp"></jsp:include> --%>
				</body>

				</html>

