<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--test  -->
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>MOIGO</title>

	<!-- Bootstrap core CSS -->
	<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
	<!-- Full Calender CSS -->
	<link href="${ctx}/resources/css/fullcalendar.css" rel="stylesheet">
	<!-- Owl Carousel CSS -->
	<link href="${ctx}/resources/css/owl.carousel.css" rel="stylesheet">
	<!-- Pretty Photo CSS -->
	<link href="${ctx}/resources/css/prettyPhoto.css" rel="stylesheet">
	<!-- Bx-Slider StyleSheet CSS -->
	<link href="${ctx}/resources/css/jquery.bxslider.css" rel="stylesheet"> 
	<!-- Font Awesome StyleSheet CSS -->
	<link href="${ctx}/resources/css/font-awesome.min.css" rel="stylesheet">
	<link href="${ctx}/resources/svg/style.css" rel="stylesheet">
	<!-- Widget CSS -->
	<link href="${ctx}/resources/css/widget.css" rel="stylesheet">
	<!-- Typography CSS -->
	<link href="${ctx}/resources/css/typography.css" rel="stylesheet">
	<!-- Shortcodes CSS -->
	<link href="${ctx}/resources/css/shortcodes.css" rel="stylesheet">
	<!-- Custom Main StyleSheet CSS -->
	<link href="${ctx}/resources/css/style.css" rel="stylesheet">
	<!-- Color CSS -->
	<link href="${ctx}/resources/css/color.css" rel="stylesheet">
	<!-- Responsive CSS -->
	<link href="${ctx}/resources/css/responsive.css" rel="stylesheet">
	<!-- SELECT MENU -->
	<link href="${ctx}/resources/css/selectric.css" rel="stylesheet">
	<!-- SIDE MENU -->
	<link rel="stylesheet" href="${ctx}/resources/css/jquery.sidr.dark.css">

</head>

<body>
	<!--KF KODE WRAPPER WRAP START-->
	<%@ include file="/views/header/side.jspf"%>
	<!--HEADER START-->
	<%@ include file="/views/header/header.jspf"%>
	<!--HEADER END-->

	<!--Banner Wrap Start-->
	<div class="kf_inr_banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!--KF INR BANNER DES Wrap Start-->
					<div class="kf_inr_ban_des">
						<div class="inr_banner_heading">
							<h3>모임수정</h3>
						</div>

						<div class="kf_inr_breadcrumb">
							<ul>
								<li><a href="#">모임관리</a></li>
								<li><a href="#">모임수정</a></li>
							</ul>
						</div>
					</div>
					<!--KF INR BANNER DES Wrap End-->
				</div>
			</div>
		</div>
	</div>

	<!--Banner Wrap End-->

	<!--Content Wrap Start-->
	<div class="kf_content_wrap">
		<select>
			<option value="1">족구모임</option>
			<option value="2">테니스모임</option>
			<option value="2">수영모임</option>
		</select>
		<section>
			<div class="container">
				<div class="row">
					<div class="contct_wrap">
						<form>
							<div class="col-md-8">
								<div class="contact_heading">
									<h4>모임 수정</h4>
								</div>
								<div class="row">
									<div class="col-md-10">
										<div class="contact_des">
											<div class="inputs_des">
												<span><i class="fa fa-user"></i>모임명/카테고리</span> <input
													type="text">
											</div>

											<div class="inputs_des">
												<span><i class="fa fa-envelope-o"></i>모임일시</span> <input
													type="text">
											</div>

											<div class="inputs_des">
												<span><i class="fa fa-file-text-o"></i>접수기간</span> <input
													type="text">
											</div>

											<div class="inputs_des">
												<span><i class="fa fa-file-text-o"></i>모임장소</span> <input
													type="text">
											</div>

											 <div class="kf_location_wrap">
				                            <div id="map-canvas" class="map-canvas"></div>
                                            <input id="xValue" type = "hidden" value="37.551619"/>
                                            <input id="yValue" type = "hidden" value="126.924989"/>
    		                              </div>

											<div class="inputs_des">
												<span><i class="fa fa-comments-o"></i>상세내용입력</span>
												<textarea></textarea>
											</div>
											<button>수정완료</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!--Content Wrap End-->
	<!--FOOTER START-->
	<%@ include file="/views/header/footer.jspf"%>
	<!--FOOTER END-->
	<!--KF KODE WRAPPER WRAP END-->

    

	<!--Bootstrap core JavaScript-->
	<script src="${ctx}/resources/js/jquery.js"></script>
	<script src="${ctx}/resources/js/bootstrap.min.js"></script>
	<!--Bx-Slider JavaScript-->
	<script src="${ctx}/resources/js/jquery.bxslider.min.js"></script>
	<!--Owl Carousel JavaScript-->
	<script src="${ctx}/resources/js/owl.carousel.min.js"></script>
	<!--Pretty Photo JavaScript-->
	<script src="${ctx}/resources/js/jquery.prettyPhoto.js"></script>
	<!--Full Calender JavaScript-->
	<script src="${ctx}/resources/js/moment.min.js"></script>
	<script src="${ctx}/resources/js/fullcalendar.min.js"></script>
	<script src="${ctx}/resources/js/jquery.downCount.js"></script>
	<!--Image Filterable JavaScript-->
	<script src="${ctx}/resources/js/jquery-filterable.js"></script>
	<!--Accordian JavaScript-->
	<script src="${ctx}/resources/js/jquery.accordion.js"></script>
	<!--Number Count (Waypoints) JavaScript-->
	<script src="${ctx}/resources/js/waypoints-min.js"></script>
	<!--v ticker-->
	<script src="${ctx}/resources/js/jquery.vticker.min.js"></script>
	<!--select menu-->
	<script src="${ctx}/resources/js/jquery.selectric.min.js"></script>
	<!--Side Menu-->
	<script src="${ctx}/resources/js/jquery.sidr.min.js"></script>
	<!--Custom JavaScript-->
	<script src="${ctx}/resources/js/custom.js"></script>
	<!--Map-->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false?key=AIzaSyBbg_zAD8oRt51tOHXM2XhOOjgUTtRGZF0"></script>

    
</body>
</html>
    