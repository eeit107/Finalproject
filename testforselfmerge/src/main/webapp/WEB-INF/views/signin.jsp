<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<script type="text/javascript">
	function check() {
		var password = document.getElementById("password").value;
		var repassword = document.getElementById("password2").value;
		if (password != password2) {
			window.alert("您輸入的新密碼與確認密碼不一致");
			signupForm.repassword.focus();
			return false;

		}
		return true;
		submit();
	}
	
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<title>註冊帳號</title>

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


	<section class="signin-page account">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="index.html"> <img src="images/signin.gif"
						alt="" width="200" height="auto">
					</a>
					<h2 class="text-center">註冊會員</h2>
					<!-- 						<form class="text-left clearfix" action="index.html"> -->
					<form action="<c:url value='/signin'/>" method="POST" enctype="multipart/form-data"
					onsubmit="javascript:return send();">
					
						<div class="form-group">
						<label for="memberid" class="col-sm-3 control-label">帳號</label>
							<input type="text" class="form-control" name="memberid" id="memberid"
								placeholder="必須輸入至少一個英文字母"  pattern="^[a-zA-Z0-9]{6,8}$" required>
						</div>
<!-- 						<div class="form-group"> -->
<!-- 						<label for="username" class="col-sm-3 control-label">姓名</label> -->
<!-- 							<input type="text" class="form-control" name="username" id="username" -->
<!-- 								placeholder="請輸入姓名" required> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 						<label for="phone" class="col-sm-3 control-label">手機號碼</label> -->
<!-- 							<input type="text" class="form-control" name="phone" -->
<!-- 								placeholder="EX:0912345678" pattern="^[0-9]{10,10}$" required> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 						<label for="email" class="col-sm-3 control-label">E-mail</label> -->
<!-- 							<input type="email" class="form-control" name="email" id="email" -->
<!-- 								placeholder="EX:test@gmail.com" required> -->
<!-- 						</div> -->
						<div class="form-group">
						<label for="password" class="col-sm-3 control-label">密碼</label>
							<input type="password" class="form-control" name="password" id="password" required>
						</div>
						<div class="form-group">
						<label for="password2" class="col-sm-3 control-label">確認密碼</label>
							<input type="password" class="form-control" name="password2" id="password2" required>
						</div>
						<div class="form-group">
							<label for="file" class="col-sm-3 control-label">上傳圖片</label>
							<input type="file" class="form-control" name="userImage"
								id="userImage" value="上傳圖片">
							<p></p>
							
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-main text-center">註冊</button>
						</div>
						<!-- 						</form> -->
						<p class="mt-20">點擊「註冊」即表示你同意我們的使用條款、資料政策和 Cookie
							政策。你可能會收到我們的簡訊通知，而且可以隨時選擇停止接收。</p>
						<!-- 							<form action="signin" method="POST"> -->
						<p class="mt-20">
							已有註冊一個帳號？<a href="<c:url value='/login'/>"> 登入</a>
						</p>
					</form>
					<p>
						<a href="<c:url value='/forget-password'/>">忘記密碼</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>

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