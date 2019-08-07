<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
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
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="body">
<jsp:include page="header.jsp"></jsp:include>



	<c:forEach var='ctest' items="${shopCart}">
		<c:set value="0" var="sum" />
<div class="page-wrapper">
  <div class="cart shopping">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="block">
            <div class="product-list">
             
                <table class="table">
                <legend>購物車明細 廠商${ctest.key}的所有商品</legend>
                  <thead>
                    <tr>
                      <th class="">品項</th>
                      <th class="">單價</th>
                      <th class="">數量</th>
                      <th class="">本項總價</th>
                      <th class="">刪除此項目</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var='test' items='${ctest.value.cartitemmap}'>
                    <tr class="">
                      <td class="">
                        <div class="product-info">
                          <img width="80" src="<c:url value='/getPicture/${test.value.productBean.productId}' />" alt="" />
                          <a href="">${test.value.productBean.title}</a>
                        </div>
                      </td>
                      
                      <td class="">${test.value.price}</td>
                      <td class=""><form method="GET" action="<c:url value='/adjustnumber'/>">
									<input type="number" name="adjust"
										value="${test.value.quantity}" id="num" autofocus=""
										autocomplete="off" min="1"
										max="${test.value.productBean.stock}"> <input
										type="hidden" name='adjustId'
										value='${test.value.productBean.productId}' /> 
										<input	type="submit" value='修改' style="color:white; background-color:black"  /> ${errormsg.adjusterror}
								</form></td>
                      <td class="">${test.value.price*test.value.quantity}</td>
                      <td class="">
                      <form method="GET" action="<c:url value='/removefromcart'/>">
									<input type="hidden" name='removeId'
										value='${test.value.productBean.productId}' /> <a
										href="nocart" onclick="return confirm('確認刪除此項目嗎？');"> <input
										type="submit" value="刪除" style="color:white; background-color:black"/>
									</a>
								</form>
                        
                      </td>
                      
                    </tr>
                    <c:set value="${sum +test.value.quantity*test.value.price}"
							var="sum" />
                   </c:forEach>
                  </tbody>
                </table>
               <label>總價格:  ${sum}</label>
               <div>

				<p class="method">
				<form method="post" action="<c:url value='/toshiptohome'/>"
					>
					<input type="hidden" name="seller" value="${ctest.key}" class="btn btn-main pull-right" style="margin:10px"/> <input
						type="hidden" name="totalprice" value="${sum}" class="btn btn-main pull-right" style="margin:10px"/> <input
						type="hidden" name="method" value="shiptohome" class="btn btn-main pull-right" style="margin:10px"/> <input
						type="hidden" name="fee" value="120" class="btn btn-main pull-right" style="margin:10px"/> <input type="submit"
						name="shiptohome" value="結帳:宅配" class="btn btn-main pull-right" style="margin:10px">
				</form>


				<form method="post" action="<c:url value='/backezship'/>" >
					<input type="hidden" name="totalprice" value="${sum}" class="btn btn-main pull-right" style="margin:10px"> 
					<input type="submit" name="ezship" id="self" value="結帳:EZSHIP自行取貨" class="btn btn-main pull-right" style="margin:10px">
					
					<input type="hidden" name="seller" value="${ctest.key}"/> 
					<input type="hidden" name="method" value="shiptohome"/>
					<input type="hidden" name="fee" value="60"/>
					</form>
				</p>
				<div style="float:left;">
				<a href="<spring:url value='/products' />" class="btn btn-main pull-right" style="margin-top: 10px">
					<span>繼續購物</span>
				</a>
				</div>
			</div>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</c:forEach>

<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu">
					<li>
						<a href="">CONTACT</a>
					</li>
					<li>
						<a href="">SHIPPING</a>
					</li>
					<li>
						<a href="">TERMS OF SERVICE</a>
					</li>
					<li>
						<a href="">PRIVACY POLICY</a>
					</li>
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
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed-js/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/assets/warning.js"></script>  



    <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    


  </body>
  </html>
