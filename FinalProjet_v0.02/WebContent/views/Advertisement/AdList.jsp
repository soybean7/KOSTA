<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Ad List</title>

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
    <!-- register Modal -->
                <!--SIGNIN AS USER START-->
                    <!--FORM FIELD START-->
                    <!--FORM FIELD END-->
                    <!--OPTION START-->
                    <!--OPTION END-->
                    <!--OPTION START-->
                    <!--OPTION END-->
                <!--SIGNIN AS USER END-->
    <!-- register Modal end-->
    
    <!-- SIGNIN MODEL START -->
    <!-- SIGNIN MODEL END -->

        <!--HEADER START-->
        <%@ include file="/views/header/side.jspf"%>
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
								<h3>등록된 광고 list</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">Ad List</a></li>
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
    						
  							<c:forEach var="adList" items="${adLists }" varStatus="sts"> 
    						<div class="kf_event_list_wrap">
    							<div class="row">
    								<div class="col-lg-6 col-md-5 col-sm-5">
    									<!--EVENT LIST THUMB Start-->
    									<div class="kf_event_list_thumb">
    										<figure>
												<img src="${ctx}/resources/extra-images/Head_Voice.jpg" ${sts.image1 }alt=""/>
                                                <div class="defaultCountdown"></div>
											</figure>
    									</div>
    									<!--EVENT LIST THUMB END-->
    								</div>

    								<div class="col-lg-6 col-md-7 col-sm-7">
    									<!--EVENT LIST DES Start-->
    									<div class="kf_event_list_des">
                                            <p class="hide">${sts.adId}</p>
                                            <p class="hide">${sts.meetingId}</p>
    										<h4><a href="#">두성창법 전수${sts.titie}</a></h4>
    										<p>민경훈의 두성창법을 배우고 싶은분은 연락주세요!!${sts.contents}</p>
    										<ul class="kf_event_list_links">
    											<li><i class="fa fa-user"></i><a href="#">${sts.name}죄민창</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">${sts.meetingDate}</a></li>
                                                <li><i class="fa fa-map-marker">죄민창시 죄민창구 죄민창1로${sts.mapmarker}</i>
                                                    <a href="#">${sts.meetingPlace}</a></li>
    										</ul>
    									</div>
    									<!--EVENT LIST DES END-->
    								</div>
    							</div>
    						</div>
    						</c:forEach>
    						<!--EVENT LIST Wrap END-->
    						
    						
    						
    						<!--KF_SIDEBAR_SEARCH_WRAP START-->
    							
    						<div class="widget widget-search">
                                	<h2>광고 검색</h2>
    								<form>
    									<input type="search" placeholder="검색어">
    								</form>
    						</div>
    						<!--KF_SIDEBAR_SEARCH_WRAP END-->
    						
    						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP START-->
    						<div class="widget widget-categories">
	    							<h2>카테고리</h2>
									<ul>
                                        <li><a href=""><i class="fa fa-caret-right"></i>교육</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>비즈니스</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>인문학 &amp; 역사</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>건강</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>취미생활</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>여행</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>스포츠</a></li>
									</ul>
    						</div>
    						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP END-->
    						
    					</div>

    					<!--KF_EDU_SIDEBAR_WRAP START-->
						<!--KF EDU SIDEBAR WRAP END-->
    				</div>
    			</div>
    		</section>		
    		
    	</div>
        <!--Content Wrap End-->
        
        <!--FOOTER START-->
        <%@ include file = "/views/header/footer.jspf"%>
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
    <!--COUNTDOWN-->
    <script src="${ctx}/resources/js/jquery.plugin.js"></script>
    <script src="${ctx}/resources/js/jquery.countdown.js"></script>
    <!--Custom JavaScript-->
    <script src="${ctx}/resources/js/custom.js"></script>
    
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Ad List</title>

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
    <!-- register Modal -->
                <!--SIGNIN AS USER START-->
                    <!--FORM FIELD START-->
                    <!--FORM FIELD END-->
                    <!--OPTION START-->
                    <!--OPTION END-->
                    <!--OPTION START-->
                    <!--OPTION END-->
                <!--SIGNIN AS USER END-->
    <!-- register Modal end-->
    
    <!-- SIGNIN MODEL START -->
    <!-- SIGNIN MODEL END -->

        <!--HEADER START-->
        <%@ include file="/views/header/side.jspf"%>
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
								<h3>등록된 광고 list</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">Ad List</a></li>
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
    						
  							<c:forEach var="adList" items="${adLists }" varStatus="sts"> 
    						<div class="kf_event_list_wrap">
    							<div class="row">
    								<div class="col-lg-6 col-md-5 col-sm-5">
    									<!--EVENT LIST THUMB Start-->
    									<div class="kf_event_list_thumb">
    										<figure>
												<img src="${ctx}/resources/extra-images/Head_Voice.jpg" ${sts.image1 }alt=""/>
                                                <div class="defaultCountdown"></div>
											</figure>
    									</div>
    									<!--EVENT LIST THUMB END-->
    								</div>

    								<div class="col-lg-6 col-md-7 col-sm-7">
    									<!--EVENT LIST DES Start-->
    									<div class="kf_event_list_des">
                                            <p class="hide">${sts.adId}</p>
                                            <p class="hide">${sts.meetingId}</p>
    										<h4><a href="#">두성창법 전수${sts.titie}</a></h4>
    										<p>민경훈의 두성창법을 배우고 싶은분은 연락주세요!!${sts.contents}</p>
    										<ul class="kf_event_list_links">
    											<li><i class="fa fa-user"></i><a href="#">${sts.name}죄민창</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">${sts.meetingDate}</a></li>
                                                <li><i class="fa fa-map-marker">죄민창시 죄민창구 죄민창1로${sts.mapmarker}</i>
                                                    <a href="#">${sts.meetingPlace}</a></li>
    										</ul>
    									</div>
    									<!--EVENT LIST DES END-->
    								</div>
    							</div>
    						</div>
    						</c:forEach>
    						<!--EVENT LIST Wrap END-->
    						
    						
    						
    						<!--KF_SIDEBAR_SEARCH_WRAP START-->
    							
    						<div class="widget widget-search">
                                	<h2>광고 검색</h2>
    								<form>
    									<input type="search" placeholder="검색어">
    								</form>
    						</div>
    						<!--KF_SIDEBAR_SEARCH_WRAP END-->
    						
    						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP START-->
    						<div class="widget widget-categories">
	    							<h2>카테고리</h2>
									<ul>
                                        <li><a href=""><i class="fa fa-caret-right"></i>교육</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>비즈니스</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>인문학 &amp; 역사</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>건강</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>취미생활</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>여행</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>스포츠</a></li>
									</ul>
    						</div>
    						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP END-->
    						
    					</div>

    					<!--KF_EDU_SIDEBAR_WRAP START-->
						<!--KF EDU SIDEBAR WRAP END-->
    				</div>
    			</div>
    		</section>		
    		
    	</div>
        <!--Content Wrap End-->
        
        <!--FOOTER START-->
        <%@ include file = "/views/header/footer.jspf"%>
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
    <!--COUNTDOWN-->
    <script src="${ctx}/resources/js/jquery.plugin.js"></script>
    <script src="${ctx}/resources/js/jquery.countdown.js"></script>
    <!--Custom JavaScript-->
    <script src="${ctx}/resources/js/custom.js"></script>
    
</body>
>>>>>>> branch 'master' of https://github.com/soybean7/KOSTA
</html>