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
    <link href=${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Full Calender CSS -->
    <link href=${ctx}/resources/css/fullcalendar.css" rel="stylesheet">
    <!-- Owl Carousel CSS -->
    <link href=${ctx}/resources/css/owl.carousel.css" rel="stylesheet">
    <!-- Pretty Photo CSS -->
    <link href=${ctx}/resources/css/prettyPhoto.css" rel="stylesheet">
    <!-- Bx-Slider StyleSheet CSS -->
    <link href=${ctx}/resources/css/jquery.bxslider.css" rel="stylesheet"> 
    <!-- Font Awesome StyleSheet CSS -->
    <link href=${ctx}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="svg/style.css" rel="stylesheet">
    <!-- Widget CSS -->
    <link href=${ctx}/resources/css/widget.css" rel="stylesheet">
    <!-- Typography CSS -->
    <link href=${ctx}/resources/css/typography.css" rel="stylesheet">
    <!-- Shortcodes CSS -->
    <link href=${ctx}/resources/css/shortcodes.css" rel="stylesheet">
    <!-- Custom Main StyleSheet CSS -->
    <link href="style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href=${ctx}/resources/css/color.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href=${ctx}/resources/css/responsive.css" rel="stylesheet">
    <!-- SELECT MENU -->
    <link href=${ctx}/resources/css/selectric.css" rel="stylesheet">
    <!-- SIDE MENU -->
    <link rel="stylesheet" href=${ctx}/resources/css/jquery.sidr.dark.css">

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

			<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
			<div class="widget widget-archive ">
				<h2>Archives</h2>
				<ul class="sidebar_archive_des">
					<li>
						<a href=""><i class="fa fa-angle-right"></i>January 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>February 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>March 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>April 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>May 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>June 2016</a>
					</li>
					<li>
						<a href=""><i class="fa fa-angle-right"></i>August 2016</a>
					</li>
				</ul>
			</div>
			<!--KF_SIDEBAR_ARCHIVE_WRAP END-->

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
                                <em class="contct_2"><i class="fa fa-phone"></i> 전화번호 02-999-9999</em>
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
    						<div class="kf_event_list_wrap">
    							<div class="row">
    								<div class="col-lg-6 col-md-5 col-sm-5">
    									<!--EVENT LIST THUMB Start-->
    									<div class="kf_event_list_thumb">
    										<figure>
												<img src="${ctx}/resources/extra-images/Head_Voice.jpg" alt=""/>
                                                <div class="defaultCountdown"></div>
											</figure>
    									</div>
    									<!--EVENT LIST THUMB END-->
    								</div>

    								<div class="col-lg-6 col-md-7 col-sm-7">
    									<!--EVENT LIST DES Start-->
    									<div class="kf_event_list_des">
                                            <p class="hide">${ad.adId}</p>
                                            <p class="hide">${ad.meetingId}</p>
    										<h4><a href="#">두성창법 전수${ad.titie}</a></h4>
    										<p>민경훈의 두성창법을 배우고 싶은분은 연락주세요!!${ad.contents}</p>
    										<ul class="kf_event_list_links">
    											<li><i class="fa fa-user"></i><a href="#">${ad.name}죄민창</a></li>
    											<li><i class="fa fa-calendar"></i><a href="#">${meetingDate}</a></li>
                                                <li><i class="fa fa-map-marker"></i>
                                                    <a href="#">${meetingPlace}</a></li>
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
    					</div>
						<!--KF EDU SIDEBAR WRAP END-->
    				</div>
    			</div>
    		</section>		
    		
    	</div>
        <!--Content Wrap End-->
        
        <!--FOOTER START-->
        <footer>
            <!--EDU2 FOOTER CONTANT WRAP START-->
                <div class="container">
                    <div class="row">
                        <!--EDU2 FOOTER CONTANT DES START-->
                        <div class="col-md-3">
                            <div class="widget widget-links">
                                <h5>Information</h5>
                                <ul>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Our Stories</a></li>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">Our History</a></li>
                                    <li><a href="#">Sprcialist Info</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--EDU2 FOOTER CONTANT DES END-->

                        <!--EDU2 FOOTER CONTANT DES START-->
                        <div class="col-md-3">
                            <div class="widget widget-links">
                                <h5>Student Help</h5>
                                <ul>
                                    <li><a href="#">My Info</a></li>
                                    <li><a href="#">My Questions</a></li>
                                    <li><a href="#">F.A.Q</a></li>
                                    <li><a href="#">Serch Courses</a></li>
                                    <li><a href="#">Latest Informations</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--EDU2 FOOTER CONTANT DES END-->

                        <!--EDU2 FOOTER CONTANT DES START-->
                        <div class="col-md-3">
                            <div class="widget wiget-instagram">
                                <h5>Instagram</h5>
                                <ul>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-1.jpg" alt=""/></a></li>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-2.jpg" alt=""/></a></li>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-3.jpg" alt=""/></a></li>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-4.jpg" alt=""/></a></li>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-5.jpg" alt=""/></a></li>
                                    <li><a href="#"><img src="${ctx}/resources/extra-images/instagram-6.jpg" alt=""/></a></li>
                                </ul>
                            </div>
                        </div>
                        <!--EDU2 FOOTER CONTANT DES END-->

                        <!--EDU2 FOOTER CONTANT DES START-->
                        <div class="col-md-3">
                            <div class="widget widget-contact">
                                <h5>Contact</h5>
                                <ul>
                                    <li>PO Box UN152468, 1 Street North, New Towm, California, USA</li>
                                    <li>Phone : <a href="#"> 5 (012) 4565 789</a></li>
                                    <li>Fax : <a href="#"> 5 (012) 4565 789</a></li>
                                    <li>Email : <a href="#"> Info@info.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--EDU2 FOOTER CONTANT DES END-->
                    </div>
                </div>
        </footer>
        <!--FOOTER END-->
        <!--COPYRIGHTS START-->
        <div class="edu2_copyright_wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="edu2_ft_logo_wrap">
                            <a href="#"><img src="${ctx}/resources/extra-images/ft_logo.png" alt=""/></a>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="copyright_des">
                            <span>&copy; All Rights reserved. Powered By <a href="#">KODEFOREST</a></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <ul class="cards_wrap">
                            <li><a href="#"><img src="${ctx}/resources/extra-images/visacard.png" alt=""/></a></li>
                            <li><a href="#"><img src="${ctx}/resources/extra-images/mastercard.png" alt=""/></a></li>
                            <li><a href="#"><img src="${ctx}/resources/extra-images/americancard.png" alt=""/></a></li>
                            <li><a href="#"><img src="${ctx}/resources/extra-images/card.png" alt=""/></a></li>
                            <li><a href="#"><img src="${ctx}/resources/extra-images/descoverycard.png" alt=""/></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--COPYRIGHTS START-->
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
</html>