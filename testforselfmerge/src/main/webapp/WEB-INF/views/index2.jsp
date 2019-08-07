<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<title>哥機拉手機平台</title>

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
/* Global */
a {
	-webkit-transition: all 150ms ease;
	-moz-transition: all 150ms ease;
	-ms-transition: all 150ms ease;
	-o-transition: all 150ms ease;
	transition: all 150ms ease;
}

a:hover {
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
	/* IE 8 */
	filter: alpha(opacity = 50); /* IE7 */
	opacity: 0.6;
	text-decoration: none;
}

/* Container */
.container-fluid {
	background: white;
	margin: 40px auto 10px;
	padding: 20px 0px;
	max-width: 960px;
	max-height: 182px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
}

/* Page Header */
.page-header {
	background: #fbf4e0;
	margin: -30px 0px 0px;
	padding: 20px 40px;
	border-top: 4px solid #ccc;
	color: #a83b3b;
	text-transform: uppercase;
}

.page-header h3 {
	line-height: 0.88rem;
	color: #a83b3b;
}

/* Thumbnail Box */
.caption {
	height: 140px;
	width: 100%;
	margin: 20px 0px;
	padding: 20px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.caption .span4, .caption .span8 {
	padding: 0px 20px;
}

.caption .span4 {
	border-right: 1px dotted #CCCCCC;
}

.caption h3 {
	color: #a83b3b;
	line-height: 2rem;
	margin: 0 0 20px;
	text-transform: uppercase;
}

.caption p {
	font-size: 1rem;
	line-height: 1.6rem;
	color: #a83b3b;
}

.btn.btn-mini {
	background: #a83b3b;
	border-radius: 0 0 0 0;
	color: #fbf4e0;
	font-size: 0.63rem;
	text-shadow: none !important;
}

.carousel-control {
	top: 33%;
}

/* Footer */
.footer {
	margin: auto;
	width: 100%;
	max-width: 960px;
	display: block;
	font-size: 0.69rem;
}

.footer, .footer a {
	color: #fff;
}

p.right {
	float: right;
}
</style>




<script type="text/javascript">
							function count() {
								let i = document.getElementById("count").innerHTML;
								i++;
								document.getElementById("count").innerHTML = i;
									
								  let JSONObj = {"click":i}
								  JSONObj['adId'] = ${advertise.adId}
								  JSONObj['memberid'] = '${memberbean.memberid}'
								  console.log(JSONObj)
								  
								  $.ajax({
										type:"POST",
										url:"${pageContext.request.contextPath}/countclick",
										data:JSONObj,
										dataType:"json",
										success:function(data){
											alert(data);
										}
								  });
							}
							function count1() {
								let i1 = document.getElementById("count1").innerHTML;
								i1++;
								document.getElementById("count1").innerHTML = i1;
									
								  var JSONObj={"click":i1}
								        JSONObj['adId'] = ${advertise.adId}
							
								 JSONObj['memberid'] = '${memberbean.memberid}'
								  $.ajax({
										type:"POST",
										url:"${pageContext.request.contextPath}/countclick",
										data:JSONObj,
										dataType:"json",
										success:function(data){
											alert(data);
										}
								  });
							}
							function count2() {
								let i2 = document.getElementById("count2").innerHTML;
								i2++;
								document.getElementById("count2").innerHTML = i2;
									
								  var JSONObj={"click":i2}
// 								  console.log('asdfs',adId);
								           JSONObj['adId'] = ${advertise2.adId}
								  JSONObj['memberid'] = '${memberbean.memberid}'
								  $.ajax({
										type:"POST",
										url:"${pageContext.request.contextPath}/countclick",
										data:JSONObj,
										dataType:"json",
										success:function(data){
											alert(data);
										}
								  });
							}
// 							var i4 = 0;
// 							function count4() {
// 								console.log(i)
// 								i3++;
// 								document.getElementById("count4").innerHTML = i4;
							
// 								  var JSONObj={"click":i4,"adId":${advertise4.adId}}
// 								        
// 								  $.ajax({
// 										type:"POST",
// 										url:"${pageContext.request.contextPath}/countclick",
// 										data:JSONObj,
// 										dataType:"json",
// 										success:function(data){
// 											alert(data);
// 										}
// 								  });
// 							}
	var productDetail = []
	
	function getajax() {
		
	
			$.ajax({								
					url : "${pageContext.request.contextPath}/tobanner",
				    type : "POST",
					async : true,
					dataType:"json",						
					contentType : "application/json",			
					success : function(data) {
						console.log("data"+data);
						var names = JSON.parse(JSON.stringify(data).split(","));
						this.productDetail = data
						console.log("productDetail"+productDetail);
			
// 					for (i in names) {
// 					adId[i] =names[i].adId
// // 					productId +=names[i].productId
					
// 					}
// 					alert(adId[1]);
				
// 				var productId = "";
// 				alert(names[1].adId);
			
										},
										error : function(data, textStatus, errorThrown) {
											console.log(data);
										},
									}).then(response => {
										this.productDetail = response
										console.log('r', response)
										
											$('.banImg').each(function(index)
											{
												$(this).attr('src',"<c:url value='/getPicture/" + response[index].productId + "' />");
												});
											console.log($('.banImg'))
										
										
										
									}).catch(error => {
										console.log(error)
									});
								}
function countBanner(index) {
		
		
		let JSONObj = {"click":this.productDetail[index].click+1}
	
		JSONObj['adId'] = this.productDetail[index].adId
		  JSONObj['memberid'] = '${memberbean.memberid}'
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/countclick",
			data:JSONObj,
			dataType:"json",
			
	  }).then(e =>{
		  console.log('data',e)
		  this.getajax()
	  });
		
	}
	function changeImg(id) {
		console.log("getid"+id)
		var x = document.getElementById(id).value;
		
		 $('#'+id+'-img').attr("src", "<c:url value='/getPicture5/" + (x) +"'/>")
		 var index = productDetail.findIndex(e => e.productId === parseInt(x))
		}
	
	

</script>

</head>

<body id="body" onload="getajax()" onload="getid()">

	<jsp:include page="header.jsp"></jsp:include>
	<input type="hidden" id="hdnSession" value="${memberbean.memberid}" />

	<section class="main-slider">
		<div id="home_slider_wrapper"
			class="rev_slider_wrapper fullscreen-container">
			<div id="home_slider"
				class="rev_slider fullscreenbanner tiny_bullet_slider"
				data-version="5.4.1">
				<ul>
					<!-- SLIDE  -->
					<li data-index="rs-73" data-thumb="images/slider/slider-1.png"
						data-transition="fade" data-slotamount="default"
						data-hideafterloop="0" data-hideslideonmobile="off"
						data-easein="default" data-easeout="default"
						data-masterspeed="300" data-rotate="0" data-saveperformance="off"
						data-title="Slide" data-param1="" data-param2="" data-param3=""
						data-param4="" data-param5="" data-param6="" data-param7=""
						data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE --> <img src="images/slider/slider-3.png"
						data-bgposition="cover" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="on" class="rev-slidebg"
						data-no-retina alt="Slider image" /> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<!-- 		-------------------------------changebanner-----------------------------------------				 -->
						<!-- 						<a href="#" class="tp-caption rev-btn  tp-resizeme" -->
						<!-- 						data-x="['left','left','left','left']" --> <!-- 						data-hoffset="['170','120','70','40']" -->
						<!-- 						data-y="['middle','middle','middle','middle']" --> <!-- 						data-voffset="['150','150','150','110']" data-width="150px" -->
						<!-- 						data-height="50px" data-whitespace="normal" data-type="button" -->
						<!-- 						data-responsive_offset="on" --> <!-- 						data-frames='[{"delay":500,"speed":1000,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]' -->
						<!-- 						data-textAlign="['center','center','center','center']" -->
						<!-- 						data-paddingtop="[6,6,6,6]" --> <!-- 						style="z-index: 5; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255, 255, 255, 1); letter-spacing: 2px; font-family: Roboto Condensed; border-color: rgb(255, 255, 255); border-style: solid; border-width: 1px 1px 1px 1px; outline: none; box-shadow: none; cursor: pointer; text-align: center">Shop -->
						<!-- 							Now</a> LAYER NR. 3 --> <!-- 						<div class="tp-caption   tp-resizeme" id="slide-73-layer-3" -->
						<!-- 							data-x="['left','left','left','left']" --> <!-- 							data-hoffset="['150','100','50','20']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-177','-177','-177','-157']" data-width="none" -->
						<!-- 							data-height="none" data-whitespace="normal" data-type="text" -->
						<!-- 							data-responsive_offset="on" --> <!-- 							data-frames='[{"delay":300,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['left','left','left','left']" --> <!-- 							data-paddingtop="[10,10,10,10]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[10,10,10,10]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px; font-family: Roboto Condensed;">PRODUCTS -->
						<!-- 						</div> --> <!-- LAYER NR. 4 --> <!-- 						<div class="tp-caption   tp-resizeme" id="slide-73-layer-2" -->
						<!-- 							data-x="['left','left','left','left']" --> <!-- 							data-hoffset="['150','100','50','20']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-30','-30','-30','-30']" -->
						<!-- 							data-fontsize="['70','70','70','50']" --> <!-- 							data-lineheight="['70','70','70','50']" -->
						<!-- 							data-width="['650','650','620','380']" data-height="none" -->
						<!-- 							data-whitespace="normal" data-type="text" --> <!-- 							data-responsive_offset="on" -->
						<!-- 							data-frames='[{"delay":200,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['left','left','left','left']" --> <!-- 							data-paddingtop="[20,20,20,20]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[30,30,30,30]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #5376b8; letter-spacing: -2px; font-family: Playfair Display;"> -->

						<!-- 						</div> -->
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-74" data-transition="fade"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-easein="default"
						data-easeout="default" data-masterspeed="300"
						data-thumb="images/slider/slider-3.png" data-rotate="0"
						data-saveperformance="off" data-title="Slide">
						<!-- MAIN IMAGE --> <img
						src="<c:url value='images/slider/slider-1.png' />" alt=""
						data-bgposition="cover" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="on" class="rev-slidebg"
						data-no-retina /> <!-- 					LAYERS LAYER NR. 6  --> <!-- 						href="shop.html" class="tp-caption rev-btn  tp-resizeme" -->
						<!-- 						data-x="['left','left','left','left']" --> <!-- 						data-hoffset="['880','760','600','330']" -->
						<!-- 						data-y="['middle','middle','middle','middle']" --> <!-- 						data-voffset="['120','250','150','110']" data-width="150px" -->
						<!-- 						data-height="50px" data-whitespace="normal" data-type="button" -->
						<!-- 						data-responsive_offset="on" --> <!-- 						data-frames='[{"delay":500,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]' -->
						<!-- 						data-textAlign="['center','center','center','center']" -->
						<!-- 						data-paddingtop="[8,8,8,8]" --> <!-- 						style="z-index: 6; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255, 255, 255, 1); letter-spacing: 2px; font-family: Roboto Condensed; border-color: rgb(255, 255, 255); border-style: solid; border-width: 1px 1px 1px 1px; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">Shop -->
						<!-- 							Now</a> LAYER NR. 7 --> <!-- 						<div class="tp-caption   tp-resizeme" id="slide-74-layer-3" -->
						<!-- 							data-x="['left','left','left','left']" --> <!-- 							data-hoffset="['820','700','540','270']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-177','-177','-177','-157']" data-width="none" -->
						<!-- 							data-height="none" data-whitespace="normal" data-type="text" -->
						<!-- 							data-responsive_offset="on" --> <!-- 							data-frames='[{"delay":400,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['left','left','left','left']" --> <!-- 							data-paddingtop="[10,10,10,10]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[10,10,10,10]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px; font-family: Roboto Condensed;">PRODUCTS -->
						<!-- 						</div> --> <!-- LAYER NR. 8 --> <!-- 						<div class="tp-caption   tp-resizeme" id="slide-74-layer-2" -->
						<!-- 							data-x="['left','left','left','left']" --> <!-- 							data-hoffset="['360','240','110','80']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-30','-30','-30','-30']" -->
						<!-- 							data-fontsize="['70','70','70','50']" --> <!-- 							data-lineheight="['70','70','70','50']" -->
						<!-- 							data-width="['650','650','620','380']" data-height="none" -->
						<!-- 							data-whitespace="normal" data-type="text" --> <!-- 							data-responsive_offset="on" -->
						<!-- 							data-frames='[{"delay":300,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['right','right','right','right']" -->
						<!-- 							data-paddingtop="[20,20,20,20]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[30,30,30,30]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #5376b8; letter-spacing: -2px; font-family: Playfair Display;"> -->

						<!-- 						</div> -->
					</li>



					<!-- SLIDE  -->
					<li data-index="rs-75" data-transition="fade"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-easein="default"
						data-easeout="default" data-masterspeed="300"
						data-thumb="images/slider/slider-2.png" data-rotate="0"
						data-saveperformance="off" data-title="Slide" data-param1=""
						data-param2="" data-param3="" data-param4="" data-param5=""
						data-param6="" data-param7="" data-param8="" data-param9=""
						data-param10="" data-description="">
						<!-- MAIN IMAGE --> <img src='images/slider/slider-2.png'
						data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="on" class="rev-slidebg"
						data-no-retina alt="slider img" /> <!-- LAYERS --> <!-- LAYER NR. 10 -->
						<!-- 						<div class="tp-caption   tp-resizeme" id="slide-75-layer-2" -->
						<!-- 							data-x="['center','center','center','center']" --> <!-- 							data-hoffset="['0','0','0','0']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-100','-100','-100','-90']" -->
						<!-- 							data-fontsize="['70','70','70','50']" --> <!-- 							data-lineheight="['70','70','70','50']" -->
						<!-- 							data-width="['650','650','620','380']" data-height="none" -->
						<!-- 							data-whitespace="normal" data-type="text" --> <!-- 							data-responsive_offset="on" -->
						<!-- 							data-frames='[{"delay":200,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['center','center','center','center']" -->
						<!-- 							data-paddingtop="[20,20,20,20]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[30,30,30,30]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 6; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #FFFF33; letter-spacing: -2px; font-family: Playfair Display;"> -->

						<!-- 						</div> LAYER NR. 11 --> <!-- 						<div class="tp-caption   tp-resizeme" id="slide-75-layer-3" -->
						<!-- 							data-x="['center','center','center','center']" --> <!-- 							data-hoffset="['0','0','0','0']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['-247','-247','-247','-217']" data-width="none" -->
						<!-- 							data-height="none" data-whitespace="normal" data-type="text" -->
						<!-- 							data-responsive_offset="on" --> <!-- 							data-frames='[{"delay":300,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]' -->
						<!-- 							data-textAlign="['left','left','left','left']" --> <!-- 							data-paddingtop="[10,10,10,10]" data-paddingright="[20,20,20,20]" -->
						<!-- 							data-paddingbottom="[10,10,10,10]" --> <!-- 							data-paddingleft="[20,20,20,20]" -->
						<!-- 							style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px; font-family: Roboto Condensed;">PRODUCTS -->
						<!-- 						</div> LAYER NR. 12 --> <!-- 						<div class="tp-caption rev-btn  tp-resizeme" -->
						<!-- 							data-x="['center','center','center','center']" --> <!-- 							data-hoffset="['0','0','0','0']" -->
						<!-- 							data-y="['middle','middle','middle','middle']" --> <!-- 							data-voffset="['80','80','80','50']" data-width="150px" -->
						<!-- 							data-height="50px" data-whitespace="normal" data-type="button" -->
						<!-- 							data-responsive_offset="on" --> <!-- 							data-frames='[{"delay":400,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]' -->
						<!-- 							data-textAlign="['center','center','center','center']" -->
						<!-- 							data-paddingtop="[6,6,6,6]" --> <!-- 							style="z-index: 8; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255, 255, 255, 1); letter-spacing: 2px; font-family: Roboto Condensed; border-color: rgb(255, 255, 255); border-style: solid; border-width: 1px 1px 1px 1px; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; text-align: center !important;">Shop -->
						<!-- 							Now</div> -->
					</li>
				</ul>
				<div class="tp-bannertimer"
					style="height: 10px; background: rgba(0, 0, 0, 0.15);"></div>

			</div>

		</div>

		<!-- END REVOLUTION SLIDER -->

	</section>

	<section>
		<!-- ------------------------------------------------------- -->
		<!-- 		<div class="container-fluid" style="height: 200px; width: 800px;"> -->
		<div class="row-fluid">
			<div class="span12" style="height: 300px">

				<!--     <div class="page-header"style="height:50px"> -->
				<!--         <h3>熱賣商品</h3> -->
				<!--         <p>熱賣商品</p> -->
				<!--     </div> -->
				<div class="carousel slide" id="myCarousel">
					<div class="carousel-inner" style="height: 300px">
						<div class="item active" onclick="countBanner(0)">
							<div class="bannerImage" style="text-align: center;">
								<a href="#"><img style="width: 800px; height: 200px;"
									class="banImg" src="images/asusbanner1.jpg" alt=""></a>
							</div>
						</div>
						<!-- /Slide1 -->
						<div class="item" onclick="countBanner(1)">
							<div class="bannerImage" style="text-align: center">
								<a href="#"><img class="banImg" src="images/htcbanner1.jpg"
									alt="product-img" /></a>
							</div>

						</div>
						<!-- /Slide2 -->

						<div class="item" onclick="countBanner(2)">

							<div class="bannerImage" style="text-align: center">
								<a href="#"> <img class="banImg"
									src="images/handphonebanner.JPG" alt="product-img" /></a>
							</div>
						</div>
						<!-- /Slide2 -->

					</div>

					<div class="control-box" style="width: 960px">
						<a data-slide="prev" href="#myCarousel"
							class="carousel-control left">‹</a> <a data-slide="next"
							href="#myCarousel" class="carousel-control right">›</a>
					</div>
					<!-- /.control-box -->

				</div>
				<!-- /#myCarousel -->

			</div>
			<!-- /.span12 -->
		</div>
		<!-- /.row -->
		<!-- 		</div> -->



	</section>

	<br>
	<br>
	<section class="product-category section">



		<div style="text-align: center">
			<a href="<spring:url value='/getApple'/>"> <img
				src="images/applelogo.png" style="width: 200px; height: 200px"
				alt="" />
			</a> <a href="<spring:url value='/getSamsung'/>"> <img
				src="images/samsunglogo.png" style="width: 200px; height: 200px"
				alt="" />
			</a> <a href="<spring:url value='/getAsus'/>"> <img
				src="images/asus.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getSharp'/>"> <img
				src="images/Sharp.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getHTC'/>"> <img
				src="images/HTC.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getmi'/>"> <img
				src="images/min.jpg" style="width: 200px; height: 200px" alt="" />
			</a>

		</div>
		<div style="text-align: center">
			<a href="<spring:url value='/getHuawei'/>"> <img
				src="images/Huawei.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getOppo'/>"> <img
				src="images/Oppo.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getSony'/>"> <img
				src="images/SONY.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getVIVO'/>"> <img
				src="images/vivo.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getSUGAR'/>"> <img
				src="images/sugar.png" style="width: 200px; height: 200px" alt="" />
			</a> <a href="<spring:url value='/getother'/>"> <img
				src="images/others.png" style="width: 200px; height: 200px" alt="" />
			</a>
		</div>

	</section>
	<!-- ------------------------------------------------------------------------------------- -->

	<!-- 推薦商品(廣告)開始 -->
	<section class="products section bg-gray">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>推薦廣告</h2>
				</div>
			</div>
			<div class="row">

				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb" onclick="count()">
							<span class="bage">Sale</span> <img class="img-responsive"
								src="<c:url value='/getPicture/${product.productId}' />"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<span id="count">${advertise.click}</span>

							<h4>
								<a
									href="<spring:url value='/backproduct?id=${product.productId}' />">
									${product.title}</a>
							</h4>
							<span id="adId">${advertise.adId}</span>
							<%-- 							<span id="memberid">${login.memberid}</span> --%>
							<p class="price">${product.price}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb" onclick="count1()">
							<img class="img-responsive"
								src="<c:url value='/getPicture/${product1.productId}' />"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<span id="count1">${advertise1.click}</span>
							<h4>
								<a
									href="<spring:url value='/backproduct?id=${product1.productId}' />">
									${product1.title}</a>
							</h4>
							<span id="adId">${advertise1.adId}</span>
							<p class="price">${product1.price}</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb" onclick="count2(${advertise2.adId})">
							<img class="img-responsive"
								src="<c:url value='/getPicture/${product2.productId}' />"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<span id="count2">${advertise2.click}</span>
							<h4>
								<a href="product-single.html">${product2.title}</a>
							</h4>
							<span id="adId">${advertise2.adId}</span>
							<p class="price">${product2.price}</p>
						</div>
					</div>
				</div>

				<!-- 推薦商品(廣告)結束 -->

				<!-- Modal -->
				<!-- 				<div class="modal product-modal fade" id="product-modal"> -->
				<!-- 					<button type="button" class="close" data-dismiss="modal" -->
				<!-- 						aria-label="Close"> -->
				<!-- 						<i class="tf-ion-close"></i> -->
				<!-- 					</button> -->
				<!-- 					<div class="modal-dialog " role="document"> -->
				<!-- 						<div class="modal-content"> -->
				<!-- 							<div class="modal-body"> -->
				<!-- 								<div class="row"> -->
				<!-- 									<div class="col-md-8 col-sm-6 col-xs-12"> -->
				<!-- 										<div class="modal-image"> -->
				<!-- 											<img class="img-responsive" -->
				<!-- 												src="images/shop/products/modal-product.jpg" -->
				<!-- 												alt="product-img" /> -->
				<!-- 										</div> -->
				<!-- 									</div> -->
				<!-- 									<div class="col-md-4 col-sm-6 col-xs-12"> -->
				<!-- 										<div class="product-short-details"> -->
				<!-- 											<h2 class="product-title">GM Pendant, Basalt Grey</h2> -->
				<!-- 											<p class="product-price">$200</p> -->
				<!-- 											<p class="product-short-description">Lorem ipsum dolor -->
				<!-- 												sit amet, consectetur adipisicing elit. Rem iusto nihil cum. -->
				<!-- 												Illo laborum numquam rem aut officia dicta cumque.</p> -->
				<!-- 											<a href="cart.html" class="btn btn-main">Add To Cart</a> <a -->
				<!-- 												href="product-single.html" class="btn btn-transparent">View -->
				<!-- 												Product Details</a> -->
				<!-- 										</div> -->
				<!-- 									</div> -->
				<!-- 								</div> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- /.modal -->

			</div>
		</div>
	</section>

	<!--
Start Call To Action
==================================== -->

	<footer class="footer section text-center">
		<div class="container">
			<p class="copyright-text">Powered by EEIT107 第五組</p>
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



</body>
</html>
