<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<script type="text/javascript">
function send() { 
	  var msg = "確定送出?"; 
	 if (confirm(msg)==true){ 
	   return true; 
	  }else{ 
	   return false; 
	 } 
	 } 
	</script>
<head>
<meta charset="UTF-8">
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
<section class="user-dashboard page-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="list-inline dashboard-menu text-center">
         <li><a href="checkcompany">申請廠商</a></li>
          <li><a href="/testfinalproject/user-details">會員資料</a></li>
        </ul>
        <div class="dashboard-wrapper dashboard-user-profile">
          <div class="media">
            <div class="pull-left text-center" href="#">
<!--               <img class="media-object user-img" src="images/avater.jpg" alt="Image"> -->
<!--               <a href="#x" class="btn btn-transparent mt-20">Change Image</a> -->
            </div>
<!--                  <input type="hidden" ></input> -->
			
	<div class="media-body">
	<form action="doUpdate" method="POST">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputmemberid">帳號</label>
      <input type="text" class="form-control" id="memberid" name="memberid"  value="${memberbean.memberid} " >
    </div>
    
      <div class="form-group col-md-6">
      <label for="inputusername">姓名</label>
      <input type="text" class="form-control" id="username" name="username" value="${memberbean.username}">
    </div>
  
    <div class="form-group col-md-6">
      <label for="inputPassword">密碼</label>
      <input type="password" class="form-control" id="password" name="password" value="${memberbean.password}" >
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputemail">信箱</label>
      <input type="text" class="form-control" id="email" name="email" value="${memberbean.email}" >
    </div>
    
    <div class="form-group col-md-12">
       <label class="my-1 mr-2" for="inlineFormCustomSelectPref">性別</label>
      <input type="radio" class="form-check-input" id="gender" name="gender" value="男" >男
      <input type="radio" class="form-check-input" id="gender" name="gender" value="女" >女
    </div>
    
    <div class="form-group col-md-2">
       <label for="inputage">年齡</label>
      <input type="text" class="form-control" id="age" name="age" value="${memberbean.age}" >
    </div>
    
    <div class="form-group col-md-3">
       <label for="inputjobs">職業</label>
      <input type="text" class="form-control" id="jobs" name="jobs" value="${login.jobs}" >
    </div>
     <div class="form-group col-md-3">
       <label for="inputeducation">學歷</label>
      <input type="text" class="form-control" id="education" name="education" value="${memberbean.education}" >
    </div>
    <div class="form-group col-md-6">
       <label for="inputphone">手機</label>
      <input type="text" class="form-control" id="phone" name="phone" value="${memberbean.phone}" >
    </div>
    <div class="form-group col-md-12" >
    <input type="submit" name="送出" onclick="send()">
    </div>
    </div>
    
</form>
	            </div>
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
<!--     <ul class="user-profile-list"> -->
<%-- 	                <li><span name="">id:${memberbean.memberid}</span></li> --%>
<%-- 	                <li><span>姓名:</span><input type="text" id="username" name="username"  value="${memberbean.username }"></li> --%>
<%-- 	                <li><span>密碼:</span><input type="password" id="password" name="password" value="${memberbean.password}"></li> --%>
<%-- 	                <li><span>信箱:</span><input type="email" id="email" name="email" value="${memberbean.email}"></li> --%>
<%-- 	                <li><span>手機:</span><input type="text" id="phone" name="phone" value="${memberbean.phone}"></li> --%>
<!-- 	                <li><span>性別:</span> -->
<!-- 	                <input type="radio" name="gender" value="男">男 -->
<!-- 	                <input type="radio" name="gender" value="女">女</li> -->
<%-- 	          		<li><span>年齡:</span><input type="text" id="age" name="age" value="${memberbean.age}"></li> --%>
<%-- 	          		<li><span>職業:</span><input type="text" id="jobs" name="jobs" value="${memberbean.jobs}"></li> --%>
<%-- 	          		<li><span>學歷:</span><input type="text" id="education" name="education" value="${memberbean.education}"></li> --%>
	          		
<!-- 	              </ul> -->
    


  </body>    