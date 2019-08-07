<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html class="no-js">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<title>product</title>

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


<style>
.qy {
	width: 100%;
	height: 100%;
	background-image: url(images/shop/cart/2.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}
</style>


</head>
<body id="body" onload="getajax()" onload="getid()">
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
<sec:authorize access="isAuthenticated()">
<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${memberbean.memberid}</span>
                <img class="img-profile rounded-circle" src="<c:url value='/usericon'/>" height="50">
              </a>
              </sec:authorize>
               <sec:authorize access="!isAuthenticated()">
                <li>
					<a href='<c:url value="/login"/>'>登入</a>
				</li>
				<li>
				<a href='signin'>註冊</a>
					</li>
			  </sec:authorize>
              
              <sec:authorize access="isAuthenticated()">
                <li>
					<form action='<c:url value="/logout"/>' method="post">
						<input type="submit" value="登出" class="btn btn-default" style="border:none;"/>
					</form>
				</li>
			  </sec:authorize>
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
	<section class="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb">
						<!-- 					<li><a href="#">Home</a></li> -->
						<li><a href="<spring:url value='/products' />">返回</a></li>
						<!-- 					<li><a href="#">Shop</a></li> -->
						<!-- 					<li class="active">Single Product</li> -->
					</ol>
				</div>
<!-- 				<div class="col-md-6"> -->
<!-- 					<ol class="product-pagination text-right"> -->
<!-- 						<li><a href="#"><i class="tf-ion-ios-arrow-left"></i> -->
<!-- 								Next </a></li> -->
<!-- 						<li><a href="#">Preview <i class="tf-ion-ios-arrow-right"></i></a></li> -->
<!-- 					</ol> -->
<!-- 				</div> -->
			</div>
			<div class="row mt-20">
				<div class="col-md-5">
					<div class="single-product-slider">
						<div id='carousel-custom' class='carousel slide'
							data-ride='carousel'>
							<div class='carousel-outer'>

								<!-- me art lab slider -->
								<div class='carousel-inner '>
									<div class='item active'>
										<img src="<c:url value='/getPicture/${product.productId}'/>"
											alt=''
											data-zoom-image=<c:url value='/getPicture/${product.productId}'/>
											style='width: 500px; height: 637px' />
										<%-- 									<img width='500px' height='637px'src="<c:url value='/getPicture/${product.productId}'/>" /> --%>
									</div>
									<div class='item'>
										<img src="<c:url value='/getPicture2/${product.productId}'/>"
											alt=''
											data-zoom-image=" '<c:url value='/getPicture2/${product.productId}'/>"
											style='width: 500px; height: 637px' />
									</div>

									<div class='item'>
										<img src="<c:url value='/getPicture3/${product.productId}'/>"
											alt=''
											data-zoom-image=" '<c:url value='/getPicture3/${product.productId}'/>"
											style='width: 500px; height: 637px' />

									</div>
									<div class='item'>
										<img src="<c:url value='/getPicture4/${product.productId}'/>"
											alt=''
											data-zoom-image=" '<c:url value='/getPicture4/${product.productId}'/>"
											style='width: 500px; height: 637px' />

									</div>
									<div class='item'>
										<img src="<c:url value='/getPicture5/${product.productId}'/>"
											alt=''
											data-zoom-image=" '<c:url value='/getPicture5/${product.productId}'/>"
											style='width: 500px; height: 637px' />

									</div>


								</div>

								<!-- sag sol -->
								<a class='left carousel-control' href='#carousel-custom'
									data-slide='prev'> <i class="tf-ion-ios-arrow-left"></i>
								</a> <a class='right carousel-control' href='#carousel-custom'
									data-slide='next'> <i class="tf-ion-ios-arrow-right"></i>
								</a>
							</div>

							<!-- thumb -->
							<ol class='carousel-indicators mCustomScrollbar meartlab'>
								<li data-target='#carousel-custom' data-slide-to='0'
									class='active'><img
									src="<c:url value='/getPicture/${product.productId}'/>" alt='' />
								</li>
								<li data-target='#carousel-custom' data-slide-to='1'><img
									src="<c:url value='/getPicture2/${product.productId}'/>" alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='2'><img
									src="<c:url value='/getPicture3/${product.productId}'/>" alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='3'><img
									src="<c:url value='/getPicture4/${product.productId}'/>" alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='4'><img
									src="<c:url value='/getPicture5/${product.productId}'/>" alt='' /></li>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="single-product-details">
						<h2>${product.title}</h2>

						<p class="product-price">${product.price}</p>

						<div class="product-description mt-20">
							<strong>螢幕:&nbsp;&nbsp;</strong> <span>&nbsp;${product.screensize}</span>
						</div>
						<div class="product-description mt-20">
							<strong>相機 :&nbsp;&nbsp;</strong> <span>&nbsp;${product.screenpixel}</span>
						</div>
						<div class="product-description mt-20">
							<strong>CPU:&nbsp;&nbsp;</strong> <span>&nbsp;${product.CPU}</span>
						</div>
						<div class="product-description mt-20">
							<strong>RAM:&nbsp;&nbsp;</strong> <span>&nbsp;${product.ram}</span>
						</div>
						<!-- 				<div class="product-description mt-20"><strong>品牌名稱: </strong>    <span>${cellphone.brand}</span></div> -->
						<!-- 				<div class="product-description mt-20"><strong>產品型號: </strong>    <span>${cellphone.modelid} </span></div> -->
						<!-- 				<div class="product-description mt-20"><strong>系統: </strong> 		<span>${cellphone.system} </span></div> -->

						<div class="product-description mt-20">
							<strong>顏色:&nbsp;&nbsp;</strong> <span>&nbsp;${product.color}</span>
						</div>
						<div class="product-description mt-20">
							<strong>容量:&nbsp;&nbsp;</strong> <span>&nbsp;${product.rom}</span>
						</div>
						<form method='POST' action="<c:url value='/addtocart'/>">
							<div class="product-quantity">
								<span>購買數量:</span>
								<div class="product-quantity-slider">
									<input type="number" min="0" max="10" type="text" value="1"
										name="quantity">
								</div>
							</div>
							<input type='hidden' name='price'
								value='${product.price*product.discount}' /> <input
								type='hidden' name='productId' value='${product.productId}' />
							<input type="hidden" name="position" value='1' /> <input
								type='submit' class="btn btn-main mt-20" value='加入購物車'
								class='btn btn-warning btn-large'>

						</form>


					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="tabCommon mt-20">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#details"
								aria-expanded="true">商品資訊</a></li>
							<li class=""><a data-toggle="tab" href="#reviews"
								aria-expanded="false">賣場資訊</a></li>
							<li class=""><a data-toggle="tab" href="#qa"
								aria-expanded="false">問與答</a></li>
						</ul>
						<div class="tab-content patternbg">
							<!-- 					 TAB1 -->
							<div id="details" class="tab-pane fade active in">


								<h2>技術規格</h2>
								<br>
								<h3>${product.CPU}&nbsp;核心</h3>
								<h3>生產時間:&nbsp;${product.releasedate}</h3>
								<h3>相機畫素:&nbsp;${product.screenpixel}</h3>
								<h3>螢幕尺寸:&nbsp;${product.screensize}</h3>
								<h3>作業系統:&nbsp;${product.system}</h3>
								<br> <br> <br> <br>
								<iframe width="1050" height="500" src="${product.brand}"
									frameborder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>

								</p>

							</div>
							<!-- 					 TAB2 -->
							<div id="reviews" class="tab-pane fade">
								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">
										<!-- Comment Item start 塞問與答對話  -->
										<h2>歡迎光臨我的賣場</h2>
										<br>
										<h2>任何需要歡迎在問與答發問</h2>
										<br>
										<h3>${product.author}</h1>

											<!-- End Comment Item -->
									</ul>
								</div>
							</div>
							<!-- 					 TAB3 -->
							<div id="qa" class="tab-pane fade">
								<h5>${product.title}</t>
									<span>Questions and Answers</span>
								</h5>
								<form method="POST" action="<c:url value='/askquestion'/>">
									<p>
										<input type="text" name="question" /> <input type="hidden"
											name="productId" value="${product.productId}"> <input
											type="submit" class="btn btn-main btn-small btn-round">
									</p>
								</form>

								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">
										<!-- Comment Item start 塞問與答對話  -->
										<c:forEach var="qbean" items="${product.qabean}">
											<li class="media">
												<div>
														
															<span>${qbean.account}</span>
														
														<time datetime="2013-04-06T13:53">${qbean.questiondatetime}</time>
														<!-- 														<a class="comment-button" href="#"><i -->
														<!-- 															class="tf-ion-chatbubbles"></i>Reply</a> -->
													<p>${qbean.question}</p>
												</div></li>
											<li class="media"><a class="pull-left" href="#">
											</a>
												<div>
													<blockquote>
														廠商回覆

														<time datetime="2013-04-06T13:53">${qbean.answerdatetime}</time>
														<!-- 														<a class="comment-button" href="#"><i -->
														<!-- 															class="tf-ion-chatbubbles"></i>Reply</a> -->
														<p>${qbean.answer}</p>
														
													</blockquote>
												</div></li>
										</c:forEach>
										<!-- End Comment Item -->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- 	<section class="products related-products section"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="title text-center"> -->
<!-- 					<h2>廣告商品</h2> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<span class="bage">Sale</span> <img class="img-responsive" -->
<!-- 								src="images/shop/products/product-5.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">廣告商品1</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$777</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-1.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search-strong"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">廣告商品2</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$888</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-2.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">廣告商品3</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$999</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-3.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">廣告商品4</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$222</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->







 	<!-- Modal --> 
<!-- 	<div class="modal product-modal fade" id="product-modal"> -->
<!-- 		<button type="button" class="close" data-dismiss="modal" -->
<!-- 			aria-label="Close"> -->
<!-- 			<i class="tf-ion-close"></i> -->
<!-- 		</button> -->
<!-- 		<div class="modal-dialog " role="document"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-body"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-8"> -->
<!-- 							<div class="modal-image"> -->
<!-- 								<img class="img-responsive" -->
<!-- 									src="images/shop/products/modal-product.jpg" /> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3"> -->
<!-- 							<div class="product-short-details"> -->
<!-- 								<h2 class="product-title">GM Pendant, Basalt Grey</h2> -->
<!-- 								<p class="product-price">$200</p> -->
<!-- 								<p class="product-short-description">Lorem ipsum dolor sit -->
<!-- 									amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo -->
<!-- 									laborum numquam rem aut officia dicta cumque.</p> -->
<!-- 								<a href="" class="btn btn-main">Add To Cart</a> <a href="" -->
<!-- 									class="btn btn-transparent">View Product Details</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->




<!-- 	<footer class="footer section text-center"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-12"> -->
<!-- 					<ul class="social-media"> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-facebook"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-instagram"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-twitter"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-pinterest"></i> -->
<!-- 						</a></li> -->
<!-- 					</ul> -->
<!-- 					<ul class="footer-menu"> -->
<!-- 						<li><a href="">CONTACT</a></li> -->
<!-- 						<li><a href="">SHIPPING</a></li> -->
<!-- 						<li><a href="">TERMS OF SERVICE</a></li> -->
<!-- 						<li><a href="">PRIVACY POLICY</a></li> -->
<!-- 					</ul> -->
<!-- 					<p class="copyright-text">Powered by Bootstrap</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->
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
