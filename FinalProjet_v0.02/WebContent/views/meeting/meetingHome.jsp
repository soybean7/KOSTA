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
								<h3>모임관리 홈</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">모임관리 홈</a></li>
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
    		<section class="event_list_page">
    			<div class="container">
    				<div class="row">
    					<div class="col-md-8">
    						<!--EVENT LIST Wrap Start-->
    						<h3>내가 개설한 모임</h3> <br>\
    						<c:forEach var="meeting" items="${meetingList}">
    						<div class="kf_event_list_wrap" onclick="location.href='${ctx}/meeting/detailMeeting.do?meetingId=${meeting.meetingId}';">
    							<div class="row">
    								<div class="col-lg-6 col-md-5 col-sm-5">
    									<!--EVENT LIST THUMB Start-->
    									<div class="kf_event_list_thumb">
    										<figure>
												<img src="${ctx}/resources/userData/meeting/images/${meeting.image}" alt="이미지 로딩 실패"/>
                                                <div class="defaultCountdown"></div>
											</figure>
    									</div>
    									<!--EVENT LIST THUMB END-->
    								</div>

    								<div class="col-lg-6 col-md-7 col-sm-7">
    									<!--EVENT LIST DES Start-->
    									<div class="kf_event_list_des">
    										<h4><a>${meeting.title} <span>${meeting.category}</span></a></h4>
    										<p></p>
    										<ul class="kf_event_list_links">
    											<li><i class="fa fa-user"></i><a href="#">${meeting.regUser}</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">참여신청 : ${meeting.startDate} ~ ${meeting.endDate}</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">모임일시 : ${meeting.date}</a></li>
    											<a class="event_link edit" href="${ctx}/Ad/registAd.do?meetingId=${meetingId }">광고등록 신청 <i class="fa fa-share"></i></a>
    										</ul>
    									</div>
    									<!--EVENT LIST DES END-->
    								</div>
    							</div>
    						</div>
    						</c:forEach>
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

    
</body>
</html>
    