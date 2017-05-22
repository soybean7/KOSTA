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

	<title>광고 수정   </title>

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
	<link href="style.css" rel="stylesheet">
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
    <!-- register Modal end-->
    
    <!-- SIGNIN MODEL START -->
    <div class="modal fade" id="signin-box" tabindex="-1" role="dialog">
        <div class="modal-dialog">
        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <div class="modal-content">
                <div class="user-box">
                    <h2>Sign In</h2>
                    <!--FORM FIELD START-->
                    <div class="form">
                        <div class="input-container">
                            <input type="text" placeholder="E-mail">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                        <div class="input-container">
                            <input type="password" placeholder="Password">
                            <i class="fa fa-unlock"></i>
                        </div>
                        <div class="input-container">
                            <label>
                                <span class="radio">
                                    <input type="checkbox" name="foo" value="1" checked>
                                    <span class="radio-value" aria-hidden="true"></span>
                                </span>
                                <span>Remember me</span>
                            </label>
                        </div>
                        <div class="input-container">
                            <button class="btn-style">Sign In</button>
                        </div>
                    </div>
                    <!--FORM FIELD END-->
                    <!--OPTION START-->
                    <div class="option">
                        <h5>Or Using</h5>
                    </div>
                    <!--OPTION END-->
                    <!--OPTION START-->
                    <div class="social-login">
                        <a href="#" class="google"><i class="fa fa-google-plus"></i>Google Account</a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i>Facebook Account</a>
                    </div>
                    <!--OPTION END-->
                
                </div>
                <div class="user-box-footer">
                    <p>Don't have an account?<br><a href="#">Sign up as a User</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- SIGNIN MODEL END -->
    
    <div id="sidr">
		<div class="logo_wrap">
			<a href="#"><img src="${ctx}/resources/extra-images/logo.png" alt=""></a>
		</div>
		<div class="clearfix clear"></div>
		<!-- Your content -->
		<div class="kf-sidebar">
			<!--KF_SIDEBAR_SEARCH_WRAP START-->
			<div class="widget widget-search">
				<h2>Search Course</h2>
				<form>
					<input type="search" placeholder="Keyword...">
				</form>
			</div>
			<!--KF_SIDEBAR_SEARCH_WRAP END-->

			<p class="copy-right-sidr">Design and Developed by KodeForest @ All Rights Reserved by KodeForest</p>
		</div>
	</div>
    	<!--HEADER START-->
    	<header id="header_2">
    		<!--kode top bar start-->
    		<div class="top_bar_2">
	    		<div class="container">
	    			<div class="row">
	    				<div class="col-md-5">
	    					<div class="pull-left">
	    						<em class="contct_2"><i class="fa fa-phone"></i> Call Us  on 0800 123 46 4747</em>
	    					</div>
	    				</div>
	    				<div class="col-md-7">
    						<div class="lng_wrap">
	    						<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
									<i class="fa fa-globe"></i>Language
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><i><img src="images/english.jpg" alt=""></i>English</a></li>
										<li><a href="#"><i><img src="images/german.jpg" alt=""></i>German</a></li> 
									</ul>
								</div>
	    					</div>
    						<ul class="login_wrap">
    							<li><a href="#" data-toggle="modal" data-target="#reg-box"><i class="fa fa-user"></i>Register</a></li>
    							<li><a href="#" data-toggle="modal" data-target="#signin-box"><i class="fa fa-sign-in"></i>Sign In</a></li>
    						</ul>
	    					<ul class="top_nav">
	    						<li><a href="blog-detail.html">News</a></li>
	    						<li><a href="event-detail.html">Event</a></li>
	    						<li><a href="our-courses.html">Giving</a></li>
	    						<li><a href="contactus.html">contact us</a></li>
	    					</ul>
	    					
	    				</div>
	    			</div>
	    		</div>
	    	</div>
    		<!--kode top bar end-->
        	
	    	<!--kode navigation start-->
    		<div class="kode_navigation">
    			<div id="mobile-header">
                	<a id="responsive-menu-button" href="#sidr-main"><i class="fa fa-bars"></i></a>
                </div>
    			<div class="container">
    				<div class="row">
    					<div class="col-md-2">
    						<div class="logo_wrap">
    							<a href="#"><img src="${ctx}/resources/extra-images/logo_2.png" alt=""></a>
    						</div>
    					</div>
    					<div class="col-md-10">
    						<!--kode nav_2 start-->
    						<div class="nav_2" id="navigation">
    							<ul>
    								<li><a href="index.html">home</a></li>
									<li><a href="aboutus.html">About Us</a></li>
		                            <li><a href="#">Event</a>
		                            	<ul>
		                                    <li><a href="our-event.html">our Event</a></li>
		                                    <li><a href="event-list.html">Event List</a></li>
		                                    <li><a href="event-detail.html">Event Detail</a></li>
		                                </ul>
		                            </li>
		                            <li><a href="#">Blog</a>
		                            	<ul>
		                                    <li><a href="our-blog.html">our Blog</a></li>
		                                    <li><a href="blog-2-column.html">blog 2 column</a></li>
		                                    <li><a href="blog-3-column.html">blog 3 column</a></li>
		                                    <li><a href="blog-left-sidebar.html">blog with left sidebar</a></li>
		                                    <li><a href="blog-right-sidebar.html">blog with right sidebar</a></li>
		                                    <li><a href="blog-detail.html">blog-detail</a></li>
		                                </ul>
		                            </li>
		                            <li><a href="#">Course</a>
		                            	<ul>
		                                	<li><a href="our-courses.html">Our Course</a></li>
		                                    <li><a href="courses-list.html">Course List</a></li>
		                                	<li><a href="courses-detail.html">Course Detail</a></li>
		                                </ul>
		                            </li>
		                            <li><a href="#">Teacher</a>
		                            	<ul>
		                                	<li><a href="our-teacher.html">Our Teacher</a></li>
		                                    <li><a href="our-teacher-details.html">our teacher details</a></li>
		                                </ul>
		                            </li>
		                            <li><a href="#">Gallery</a>
		                            	<ul>
		                                	<li><a href="gallery-masonary-2col.html">Masonary 2 Col </a></li>
		                                	<li><a href="gallery-masonary.html">Masonary 3 Col </a></li>
		                                	<li><a href="gallery-masonary-4col.html">Masonary 4 Col </a></li>
		                                    <li><a href="filterable-gallery.html">Simple gallery</a></li>
		                                </ul>
		                            </li>
									<li><a href="#">Pages</a>
		                            	<ul>
		                                    <li><a href="404.html">404 Page</a></li>
		                                </ul>
		                            </li>
									<li><a href="#">Contact US</a>
		                            	<ul>
		                                    <li><a href="contactus.html">Contact Us 1</a></li>
		                                    <li><a href="contactus-2.html">Contact Us 2</a></li>
		                                </ul>
		                            </li>
		                            <li><a id="simple-menu" href="#sidr"><i class="fa fa-bars"></i></a></li>
    							</ul>
    						</div>
    						<!--kode nav_2 end-->
    					</div>
    				</div>
    			</div>
    		</div>
    		<!--kode navigation end-->
		</header>
		<!--HEADER END-->

        <!--Banner Wrap Start-->
        <div class="kf_inr_banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    	<!--KF INR BANNER DES Wrap Start-->
                        <div class="kf_inr_ban_des">
                        	<div class="inr_banner_heading">
								<h3>광고 수정</h3>
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
                            
                            <a class="event_link edit" href="#">저장<i class="fa fa-edit"></i></a>
                                    <a class="event_link remove" href="#">취소<i class="fa fa-remove"></i></a>
                            <br><br>
                            <!-- BLOG PG FORM START-->
	    						<div class="blog_pg_form">
	    							<div class="blog-detl_heading">
	    							</div>
	    							<form>
                                        <div class="col-md-2">
                                            <input type="text" placeholder="제목" readonly>
                                        </div>
	    										
                                        <div class="col-md-10">
	    										<input type="text" placeholder="수정할 내용을 입력하세요.">
	    							    </div>
                                        <div class="col-md-3">
                                            <input type="text" placeholder="E-mail" readonly>
                                        </div><br>
                                        <div class="col-md-9">
                                            <input type="text" placeholder="Exmple@hotmail.com">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" placeholder="전화번호">
                                        </div>
                                        <div class="col-md-9">
                                            <input type="text" placeholder="010-0000-1111">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" placeholder="시작일">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="date">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" placeholder="시작시간">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="time">
                                        </div>
                                        <div class="col-md-12">
                                            <textarea placeholder="내용"></textarea>
                                        </div>
	    								
	    							</form>
	    						</div>
	    						<!-- BLOG PG FORM END-->

							<!--EVENT CONVOCATION OUTER Wrap START-->
							<div class="kf_convocation_outer_wrap">	
                                
                                <!--EVENT CONVOCATION  Wrap START-->
								<div class="kf_convocation_wrap">

                                    <!--EVENT SPEAKER Wrap START-->
								<div class="kf_event_speakers">
									<div class="heading_5">
										<h4><span>메인노출사진</span></h4>
									</div>
									<div class="row">
										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure><img src="${ctx}/resources/extra-images/MC01.jpg" alt=""/></figure>
                                                <p>사진1</p>
                                                <p>Filename : extra-images/MC01.jpg</p>
											</div>
                                            <center><a class="convocation_link" href="#" >사진변경</a></center>
										</div>
                                        

										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure><img src="${ctx}/resources/extra-images/Head_Voice.jpg" alt=""/></figure>
												<p>사진2</p>
                                                <p>Filename : extra-images/Head_Voice.jpg</p>
											</div>
                                            <center><a class="convocation_link" href="#" >사진변경</a></center>
										</div>
                                        
									</div>
								</div>
								<!--EVENT SPEAKER Wrap End-->

										<!--EVENT CONVOCATION MAP  Wrap START-->
										<div class="kf_convocation_map">
											<div id="map-canvas" class="map-canvas"></div>
											<a class="convocation_link" href="#">위치변경</a>
										</div>
										<!--EVENT CONVOCATION MAP  Wrap END-->
                                        
                                        
<!--                                        <div id="google-map-canvas" class="google-map-canvas" style="width: 100%; height: 340px" title="Samsung Mobile Display"></div>-->

									</div>
									<!--EVENT CONVOCATION DES END-->

								</div>
								<!--EVENT CONVOCATION  Wrap END-->

								<!--EVENT SPEAKER Wrap START-->
								<div class="kf_event_speakers">
									<div class="heading_5">
										<h4><span>발표자, 진행자</span></h4>
									</div>
									<div class="row">
										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure><img src="${ctx}/resources/extra-images/MC01.jpg" alt=""/></figure>
												<h5><a href="#">죄민상</a></h5>
												<p>강사</p>
											</div>
                                            <center><a class="convocation_link" href="#" >사진변경</a></center>
										</div>

										<div class="col-md-4 col-sm-4">
											<div class="kf_event_speakers_des">
												<figure><img src="${ctx}/resources/extra-images/Head_Voice.jpg" alt=""/></figure>
												<h5><a href="#">민경훈</a></h5>
												<p>실습조교</p>
											</div>
                                            <center><a class="convocation_link" href="#" >사진변경</a></center>
										</div>
									</div>
								</div>
								<!--EVENT SPEAKER Wrap End-->

								<!--EVENT GALLERY Wrap STAT-->
								<div class="kf_event_gallery">
									<div class="heading_5">
										<h4><span>상세 소개 사진</span></h4>
									</div>
									<ul class="event_gallery_des">
										<li><a href="#"><img src="${ctx}/resources/extra-images/event_gallery1.jpg" alt=""/></a>
                                        <center><a class="convocation_link" href="#" >사진변경</a></center>
                                        </li>
                                        
										<li><a href="#"><img src="${ctx}/resources/extra-images/event_gallery2.jpg" alt=""/></a>
                                        <center><a class="convocation_link" href="#" >사진변경</a></center>
                                        </li>
										<li><a href="#"><img src="${ctx}/resources/extra-images/event_gallery3.jpg" alt=""/></a><center><a class="convocation_link" href="#" >사진변경</a></center></li>
									</ul>
									<a class="event_link edit" href="#">저장<i class="fa fa-edit"></i></a>
                                    <a class="event_link remove" href="#">취소<i class="fa fa-remove"></i></a>
								</div>
								<!--EVENT GALLERY Wrap End-->

							</div>
							<!--EVENT CONVOCATION OUTER Wrap END-->

						</div>

        <!--Content Wrap End-->

    </div>
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
	<!--Map-->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<!--select menu-->
	<script src="${ctx}/resources/js/jquery.selectric.min.js"></script>
	<!--Side Menu-->
	<script src="${ctx}/resources/js/jquery.sidr.min.js"></script>
	<!--Custom JavaScript-->
	<script src="${ctx}/resources/js/custom.js"></script>
    
</body>
</html>