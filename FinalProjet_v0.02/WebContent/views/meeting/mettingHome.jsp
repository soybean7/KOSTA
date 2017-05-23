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
    						<h3>내가 개설한 모임</h3>
    						<div class="kf_event_list_wrap">
    							<div class="row">
    								<div class="col-lg-6 col-md-5 col-sm-5">
    									<!--EVENT LIST THUMB Start-->
    									<div class="kf_event_list_thumb">
    										<figure>
												<img src="${ctx}/resources/extra-images/archive-1.jpg" alt=""/>
                                                <div class="defaultCountdown"></div>
											</figure>
    									</div>
    									<!--EVENT LIST THUMB END-->
    								</div>

    								<div class="col-lg-6 col-md-7 col-sm-7">
    									<!--EVENT LIST DES Start-->
    									<div class="kf_event_list_des">
    										<h4><a href="#">모임명 <span>족구모임</span></a></h4>
    										<p></p>
    										<ul class="kf_event_list_links">
    											<li><i class="fa fa-user"></i><a href="#">강명준</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">참여신청 : 5월 15일 1:30 ~ 5월 29일 2:00</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">모임기간 : 5월 29일 4:00 ~ 5:00</a></li>
    										</ul>
    									</div>
    									<!--EVENT LIST DES END-->
    								</div>
    							</div>
    						</div>
    						<!--EVENT LIST Wrap END-->

    					</div>

    					<!--KF_EDU_SIDEBAR_WRAP START-->
    					<div class="col-md-4">
    						<div class="kf-sidebar">

    							<!--KF_SIDEBAR_SEARCH_WRAP START-->
    							<div class="widget widget-search">
                                	<h2>Search Course</h2>
    								<form>
    									<input type="search" placeholder="Keyword...">
    								</form>
    							</div>
    							<!--KF_SIDEBAR_SEARCH_WRAP END-->

    							<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
    							<div class="widget widget-archive ">
    								<h2>Archives</h2>
    								<ul class="sidebar_archive_des">
    									<li>
    										<a href="#"><i class="fa fa-angle-right"></i>January</a>
    									</li>
    									<li>
    										<a href="#"><i class="fa fa-angle-right"></i>February</a>
    									</li>
    									<li>
    										<a href="#"><i class="fa fa-angle-right"></i>March</a>
    									</li>
    									<li>
    										<a href="#"><i class="fa fa-angle-right"></i>April</a>
    									</li>
    									<li>
    										<a href="#"><i class="fa fa-angle-right"></i>May</a>
    									</li>
    								</ul>
    							</div>
    							<!--KF_SIDEBAR_ARCHIVE_WRAP END-->


    							<!--KF SIDEBAR RECENT POST WRAP START-->
    							<div class="widget widget-recent-posts">
    								<h2>Recent Posts</h2>
    								<ul class="sidebar_rpost_des">
                                    	<!--LIST ITEM START-->
                                   		<li>
                                            <figure>
                                            	<img src="${ctx}/resources/extra-images/archive-1.jpg" alt="">
                                                <figcaption><a href="#"><i class="fa fa-search-plus"></i></a></figcaption>
                                            </figure>
                                            <div class="kode-text">
                                                <h6><a href="#">Lorem ipsum dolor sit amet sint occaecat cupidatat</a></h6>
                                                <span><i class="fa fa-clock-o"></i>10 Jan, 2016</span>
                                            </div>
    									</li>
                                        <!--LIST ITEM START-->
										<!--LIST ITEM START-->
                                   		<li>
                                            <figure>
                                            	<img src="${ctx}/resources/extra-images/archive-2.jpg" alt="">
                                                <figcaption><a href="#"><i class="fa fa-search-plus"></i></a></figcaption>
                                            </figure>
                                            <div class="kode-text">
                                                <h6><a href="#">Lorem ipsum dolor sit amet sint occaecat cupidatat</a></h6>
                                                <span><i class="fa fa-clock-o"></i>10 Jan, 2016</span>
                                            </div>
    									</li>
                                        <!--LIST ITEM START-->
                                        <!--LIST ITEM START-->
                                   		<li>
                                            <figure>
                                            	<img src="${ctx}/resources/extra-images/archive-3.jpg" alt="">
                                                <figcaption><a href="#"><i class="fa fa-search-plus"></i></a></figcaption>
                                            </figure>
                                            <div class="kode-text">
                                                <h6><a href="#">Lorem ipsum dolor sit amet sint occaecat cupidatat</a></h6>
                                                <span><i class="fa fa-clock-o"></i>10 Jan, 2016</span>
                                            </div>
    									</li>
                                        <!--LIST ITEM START-->
    								</ul>
    							</div>
    							<!--KF SIDEBAR RECENT POST WRAP END-->

    							<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP START-->
	    						<div class="widget widget-categories">
	    							<h2>categories</h2>
									<ul>
										<li><a href=""><i class="fa fa-caret-right"></i>Business &amp; Economics</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>Politics &amp; History</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>Medical Sciences &amp; Health</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>Fine Arts</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>Tourism &amp; Culture</a></li>
										<li><a href=""><i class="fa fa-caret-right"></i>Sports</a></li>
									</ul>
	    						</div>
	    						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP END-->

	    						<!--KF SIDE BAR COURSES LIST WRAP START WRAP START-->
	    						<div class="widget widget-courses-list">
	    							<h2>Latest Courses</h2>
	    							<ul>
	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist1.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>

	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist2.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>

	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist3.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>

	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist4.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>

	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist5.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>

	    								<li>
                                        	<figure>
                                            	<img src="${ctx}/resources/extra-images/courseslist6.jpg" alt=""/>
	    										<a href="#">View Detail</a>
	    									</figure>
	    								</li>
	    							</ul>
	    						</div>
	    						<!--KF SIDE BAR COURSES LIST WRAP START WRAP END-->

	    						<!--KF SIDE BAR TAG CLOUD WRAP START-->
	    						<div class="widget widget-tag-cloud">
	    							<h2>Tags Cloud</h2>
	    							<ul>
	    								<li><a href="#">Science</a></li>
	    								<li><a href="#">Development</a></li>
	    								<li><a href="#">Fine Arts</a></li>
	    								<li><a href="#">Research</a></li>
	    								<li><a href="#">Admissions</a></li>
	    								<li><a href="#">PHD</a></li>
	    								<li><a href="#">History &amp; Politics</a></li>
	    								<li><a href="#">Sports</a></li>
	    							</ul>

	    						</div>
	    						<!--KF SIDE BAR TAG CLOUD WRAP END-->
    						</div>
    					</div>
						<!--KF EDU SIDEBAR WRAP END-->
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
    