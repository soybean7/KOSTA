<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
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
	<!--SIDE MENU -->
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
							<h3>광고 상세정보</h3>
						</div>

						<div class="kf_inr_breadcrumb">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Ad Detail</a></li>
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
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-8">

						<a class="event_link edit" href="adEdit.do">수정<i class="fa fa-edit"></i></a>
						<a class="event_link remove" href="adDelete.do">삭제<i class="fa fa-remove"></i></a>
						<br>
						<br>

						<!--EVENT CONVOCATION OUTER Wrap START-->
						<div class="kf_convocation_outer_wrap">

							<!--EVENT CONVOCATION  Wrap START-->
							<div class="kf_convocation_wrap">
								<h4>
									<span>두성창법을 배워봅시다.</span>
								</h4>
								<ul class="convocation_timing">
									<li><i class="fa fa-calendar"></i>2017년 5월 19일</li>
									<li><i class="fa fa-clock-o"></i>10:00 am - 04:00 pm</li>
								</ul>

								<!--EVENT CONVOCATION DES START-->
								<div class="kf_convocation_des">
									<h5>title</h5>
									<p>민경훈의 두성창법을 배워봅시다.</p>

									<div class="convocation_slider">

										<div id="owl-demo-23" class="owl-carousel owl-theme">

											<div class="item">
												<figure>
													<img src="${ctx}/resources/extra-images/Head_Voice.jpg"
														alt="" />
												</figure>
											</div>
											<div class="item">
												<figure>
													<img src="${ctx}/resources/extra-images/MC01.jpg" alt="" />
												</figure>
											</div>
											<div class="item">
												<figure>
													<img src="${ctx}/resources/extra-images/MC02.jpg" alt="" />
												</figure>
											</div>

										</div>
									</div>

									<!-- EVENT CONVOCATION MAP  Wrap START -->
									<div class="kf_convocation_map">
										<div id="map-canvas" class="map-canvas"></div>
										<a class="convocation_link" href="#">Details</a> <a
											class="convocation_link" href="#">Organizer</a> <a
											class="convocation_link" href="#">Venue</a>
									</div>


									<div id="google-map-canvas" class="google-map-canvas"
										style="width: 100%; height: 340px"
										title="Samsung Mobile Display"></div>
									<!--EVENT CONVOCATION DES END-->

								</div>
								<!--EVENT CONVOCATION  Wrap END-->

								<!--EVENT SPEAKER Wrap START-->
								<div class="kf_event_speakers">
									<div class="heading_5">
										<h4>
											<span>발표자, 진행자</span>
										</h4>
									</div>
									<div class="row">
										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure>
													<img src="${ctx}/resources/extra-images/MC01.jpg" alt="" />
												</figure>
												<h5>
													<a href="#">죄민상</a>
												</h5>
												<p>강사</p>
											</div>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure>
													<img src="${ctx}/resources/extra-images/Head_Voice.jpg"
														alt="" />
												</figure>
												<h5>
													<a href="#">민경훈</a>
												</h5>
												<p>실습조교</p>
											</div>
										</div>
									</div>
								</div>
								<!--EVENT SPEAKER Wrap End-->

								<!--EVENT GALLERY Wrap STAT-->
								<div class="kf_event_gallery">
									<div class="heading_5">
										<h4>
											<span>상세 소개 사진</span>
										</h4>
									</div>
									<ul class="event_gallery_des">
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery1.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery2.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery3.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery4.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery5.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery6.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery7.jpg"
												alt="" /></a></li>
										<li><a href="#"><img
												src="${ctx}/resources/extra-images/event_gallery8.jpg"
												alt="" /></a></li>
									</ul>
									<a class="event_link edit" href="#">수정<i class="fa fa-edit"></i></a>
									<a class="event_link remove" href="#">삭제<i
										class="fa fa-remove"></i></a>
								</div>
								<!--EVENT GALLERY Wrap End-->

							</div>
							<!--EVENT CONVOCATION OUTER Wrap END-->

						</div>

						<!--KF_EDU_SIDEBAR_WRAP START-->

						<!--KF_SIDEBAR_SEARCH_WRAP START-->
						<!--KF_SIDEBAR_SEARCH_WRAP END-->

						<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
						<!--KF_SIDEBAR_ARCHIVE_WRAP END-->




						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP START-->
						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP END-->

						<!--KF SIDE BAR COURSES LIST WRAP START WRAP START-->
						<!--KF SIDE BAR COURSES LIST WRAP START WRAP END-->

						<!--KF SIDE BAR TAG CLOUD WRAP START-->
						<!--KF SIDE BAR TAG CLOUD WRAP END-->

						<!--KF EDU SIDEBAR WRAP END-->

						<!--Content Wrap End-->
						</div>
						</div>
						</div>
						</section>
						</div>
						<!--FOOTER START-->
						<%@ include file="/views/header/footer.jspf"%>
						<!--FOOTER END-->

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
</body>
</html>
