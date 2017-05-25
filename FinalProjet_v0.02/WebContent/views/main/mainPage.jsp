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
    <div class="kode_wrapper">
	    <!-- register Modal -->
	    <div class="modal fade" id="reg-box" tabindex="-1" role="dialog">
	        <div class="modal-dialog">
	        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	            <div class="modal-content">
	            	<!--SIGNIN AS USER START-->
	                <div class="user-box">
	                	<h2>Sign up as a User</h2>
	                    <!--FORM FIELD START-->
	                    <div class="form">
	                        <div class="input-container">
	                            <input type="text" placeholder="Name">
	                            <i class="fa fa-user"></i>
	                        </div>
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
	                            <button class="btn-style">Sign Up</button>
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
	                <!--SIGNIN AS USER END-->
	                <div class="user-box-footer">
	                    Already have an account? <a href="#">Sign In</a>
	                </div>
	                <div class="clearfix"></div>
	            </div>
	            <div class="clearfix"></div>
	        </div>
	    </div>
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
    
    	<!--SIDE MENU -->
			<%@ include file = "/views/header/side.jspf" %>
    	<!--HEADER-->
    		<%@ include file = "/views/header/header.jspf"%>      

        <!--Banner Wrap Start-->
        <div class="kf_inr_banner padding_more">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    	<!--KF INR BANNER DES Wrap Start-->
                        <div class="kf_inr_ban_des">
                        	<div class="inr_banner_heading">
								<h3>Our Courses</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">Our Courses</a></li>
								</ul>
							</div>
                        </div>
                        <!--KF INR BANNER DES Wrap End-->
                    </div>
                    
 					</div>
                </div>
            </div>
        </div>

        <!--Banner Wrap End-->

    	<!--Content Wrap Start-->
    	<!--search bar start-->
    	
		    <!--search bar end-->
	 		<section>
                <div class="search_bar_outer_wrap">
	    		<div class="container">
	    			<div class="inr_pg_search_wrap">
		    			<form>
		    				<div class="search_bar_des">
		    					<input type="search" placeholder="Search Courses"/>
		    					<select id="basic">
                                    <option value="name">모임 개설자</option>
                                    <option value="title">모임명</option>
                                    <option value="place">모임장소</option>
                                    <option value="category">모임 카테고리</option>
                                    <option value="hashtag">모임 해시태그</option>
                                </select>
		    				</div>
		    				<button>검색</button>
		    			</form>
		    		</div>
			    </div>
		    </div>
	 			<div class="container">

	 				<div class="row">
	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum1.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Agriculture Online Guide</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Video Tutorials</a>
	 									<span><sup>$</sup>27</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum2.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Tourism Courses</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Guide</a>
	 									<span><sup>$</sup>69</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum3.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Cultural Awarness Courses</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Culture</a>
	 									<span><sup>$</sup>27</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum4.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Social Economics Courses</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Economics</a>
	 									<span><sup>$</sup>99</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum5.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>History of Arts</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Hostory</a>
	 									<span><sup>$</sup>27</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum6.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Photography Classes</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Complete Course</a>
	 									<span><sup>$</sup>69</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum7.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Banking Courses</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Banking</a>
	 									<span><sup>$</sup>99</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum8.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Social Media Management</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">Social</a>
	 									<span><sup>$</sup>27</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->


	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-4 col-sm-6">

	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<img src="${ctx}/resources/extra-images/col-3-thum9.jpg" alt=""/>
	 								<figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption>
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>Learn Search Engine Optimization</h6>
	 								<p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. </p>
	 								<div class="video_link_wrap">
	 									<a href="#">SEO</a>
	 									<span><sup>$</sup>69</span>
	 								</div>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="#">Thomas Van</a>
		 								<div class="rating">
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
											<span>☆</span>
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->
	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->

	 					</div>

	 					<div class="col-md-12">
	 						<!--KF_PAGINATION_WRAP START-->
							<div class="kf_edu_pagination_wrap">
								<ul class="pagination">
									<li>
										<a href="#" aria-label="Previous">
										<span aria-hidden="true"><i class="fa fa-angle-left"></i>PREV</span>
										</a>
									</li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li>
										<a href="#" aria-label="Next">
										<span aria-hidden="true">Next<i class="fa fa-angle-right"></i></span>
										</a>
									</li>
								</ul>
							</div>
							
							<a href="${ctx}/meeting/registMeeting.do" class="btn btn-primary">개설</a>
							<!--KF_PAGINATION_WRAP END-->
 						</div>

	 				</div>
	 			</div>
	 		</section>
        <!--Content Wrap End-->
		<!--FOOTER-->
		<%@ include file = "/views/header/footer.jspf"%> 
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
    