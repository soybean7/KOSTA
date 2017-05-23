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


<style>
        .td_basic {
            padding:15px;
            font-family: "MD이솝체";
            border-bottom: 1px solid #ddd;
        }
        .td_left {
            padding:15px;
            font-family: "MD이솝체";
            padding-left: 80px;
            border-bottom: 1px solid #ddd;
        }
        .td_center {
            padding:15px;
            font-family: "MD이솝체";
            text-align: center;
            border-bottom: 1px solid #ddd;
            border-right: 0px none;
            border-left: 0px none;
        }
        .td_basic, .td_left, .td_center {
            border-right: 0px none;
            border-left: 0px none;
        }
        
        .input_text {
        	padding : 5px;
        	background-color: #3CBC8D;
        	border-radius: 4px;
    		color: white;
        }
        
        .btn_style {
	       width:15%;
	       font-family: "MD이솝체";
	
	       border: 1px solid #0a3c59;
	       background: #3e779d;
	       background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7), to(#3e779d));
	       background: -webkit-linear-gradient(top, #65a9d7, #3e779d);
	       background: -moz-linear-gradient(top, #65a9d7, #3e779d);
	       background: -ms-linear-gradient(top, #65a9d7, #3e779d);
	       background: -o-linear-gradient(top, #65a9d7, #3e779d);
	       background-image: -ms-linear-gradient(top, #65a9d7 0%, #3e779d 100%);
	       -webkit-border-radius: 17px;
	       -moz-border-radius: 17px;
	       border-radius: 17px;
	       -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
	       -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
	       box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
	       text-shadow: #7ea4bd 0 1px 0;
	       color: #06426c;
	       font-size: 18px;
	       font-family: MD이솝체, helvetica, serif;
	       text-decoration: none;
	       vertical-align: middle;
       }
        .btn_style:hover {
           font-family: "MD이솝체";
	       border: 1px solid #0a3c59;
	       text-shadow: #1e4158 0 1px 0;
	       background: #3e779d;
	       background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7), to(#3e779d));
	       background: -webkit-linear-gradient(top, #65a9d7, #3e779d);
	       background: -moz-linear-gradient(top, #65a9d7, #3e779d);
	       background: -ms-linear-gradient(top, #65a9d7, #3e779d);
	       background: -o-linear-gradient(top, #65a9d7, #3e779d);
	       background-image: -ms-linear-gradient(top, #65a9d7 0%, #3e779d 100%);
	       color: #fff;
       }
    </style>


</head>

<body>
	<!--KF KODE WRAPPER WRAP START-->
	<div class="kode_wrapper">
		<!-- register Modal -->
		<div class="modal fade" id="reg-box" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-content">
					<!--SIGNIN AS USER START-->
					<div class="user-box">
						<h2>Sign up as a User</h2>
						<!--FORM FIELD START-->
						<div class="form">
							<div class="input-container">
								<input type="text" placeholder="Name"> <i
									class="fa fa-user"></i>
							</div>
							<div class="input-container">
								<input type="text" placeholder="E-mail"> <i
									class="fa fa-envelope-o"></i>
							</div>
							<div class="input-container">
								<input type="password" placeholder="Password"> <i
									class="fa fa-unlock"></i>
							</div>
							<div class="input-container">
								<label> <span class="radio"> <input
										type="checkbox" name="foo" value="1" checked> <span
										class="radio-value" aria-hidden="true"></span>
								</span> <span>Remember me</span>
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
							<a href="#" class="google"><i class="fa fa-google-plus"></i>Google
								Account</a> <a href="#" class="facebook"><i
								class="fa fa-facebook"></i>Facebook Account</a>
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
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-content">
					<div class="user-box">
						<h2>Sign In</h2>
						<!--FORM FIELD START-->
						<div class="form">
							<div class="input-container">
								<input type="text" placeholder="E-mail"> <i
									class="fa fa-envelope-o"></i>
							</div>
							<div class="input-container">
								<input type="password" placeholder="Password"> <i
									class="fa fa-unlock"></i>
							</div>
							<div class="input-container">
								<label> <span class="radio"> <input
										type="checkbox" name="foo" value="1" checked> <span
										class="radio-value" aria-hidden="true"></span>
								</span> <span>Remember me</span>
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
							<a href="#" class="google"><i class="fa fa-google-plus"></i>Google
								Account</a> <a href="#" class="facebook"><i
								class="fa fa-facebook"></i>Facebook Account</a>
						</div>
						<!--OPTION END-->

					</div>
					<div class="user-box-footer">
						<p>
							Don't have an account?<br>
							<a href="#">Sign up as a User</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- SIGNIN MODEL END -->

		<div id="sidr">
			<div class="logo_wrap">
				<a href="#"><img src="${ctx}/resources/extra-images/logo.png"
					alt=""></a>
			</div>
			<div class="clearfix clear"></div>
			<!-- Your content -->
			<div class="kf-sidebar">
				<!--KF_SIDEBAR_SEARCH_WRAP START-->
				<div class="widget widget-search">
					<h2>모임 검색</h2>
					<form>
						<input type="search" placeholder="Keyword...">
					</form>
				</div>
				<!--KF_SIDEBAR_SEARCH_WRAP END-->

				<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
				<div class="widget widget-archive ">
					<h2>Archives</h2>
					<ul class="sidebar_archive_des">
						<li><a href=""><i class="fa fa-angle-right"></i>January
								2016</a></li>
						<li><a href=""><i class="fa fa-angle-right"></i>February
								2016</a></li>
						<li><a href=""><i class="fa fa-angle-right"></i>March
								2016</a></li>
						<li><a href=""><i class="fa fa-angle-right"></i>April
								2016</a></li>
						<li><a href=""><i class="fa fa-angle-right"></i>May 2016</a>
						</li>
						<li><a href=""><i class="fa fa-angle-right"></i>June 2016</a>
						</li>
						<li><a href=""><i class="fa fa-angle-right"></i>August
								2016</a></li>
					</ul>
				</div>
				<!--KF_SIDEBAR_ARCHIVE_WRAP END-->

				<p class="copy-right-sidr">Design and Developed by KodeForest @
					All Rights Reserved by KodeForest</p>
			</div>
		</div>
		<!--HEADER START-->
		<%@include file="/views/header/header.jspf"%>
		<!--HEADER END-->


		<!--Banner Wrap Start-->
		<div class="kf_inr_banner padding_more">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!--KF INR BANNER DES Wrap Start-->
						<div class="kf_inr_ban_des">
							<div class="inr_banner_heading">
								<h3>회원정보수정</h3>
							</div>

							<div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">마이페이지</a></li>
									<li><a href="#">회원정보수정</a></li>
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
	<section>
		<!-- 마이페이지 시작 -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<!-- 마이페이지 목차 -->
					<div class="nav_2" id="navigation">
						<ul>
							<li><a href="#">마이페이지 홈</a></li>
							<li><a href="#">회원정보수정</a></li>
							<li><a href="#">비밀번호변경</a></li>
							<li><a href="#">신청내역</a></li>
							<li><a href="#">회원탈퇴</a></li>
						</ul>
					</div>

					<!-- 회원정보수정 시작 -->
					<table>
						<tr>
							<td rowspan="2" style="width: 30%;" class="td_center">
							<img
								width="300" 
								src="data:image/png;base64,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"><br>
								<button class="btn_style" type="button" style="width:60%; font-size:15px;">이미지 변경</button></td>
							<td class="td_left"><img height="20"
								src="https://image.freepik.com/free-icon/user_318-134392.jpg">
								<input class="input_text" type="text" value="홍길동">
							</td>
						</tr>
						<tr>
							<td class="td_left"><img height="20"
								src="https://image.freepik.com/free-icon/email-filled-closed-envelope_318-75717.jpg">
								abc@def.com<br> <img height="20"
								src="https://image.freepik.com/free-icon/old-typical-phone_318-31536.jpg">
								
								<input class="input_text" type="text" value="010-123-4567" ><br> 
								
								<img height="20" alt="가입일"
									src="https://image.freepik.com/free-icon/calendar_318-77221.jpg">
								0000-00-00<br></td>
						</tr>
						<tr>
							<td colspan="2" class="td_center">
							<textarea class="input_text" style="width:100%;" rows="10" placeholder="안녕하세요 홍길동입니다."></textarea>
						</tr>
						<tr>
							<td colspan="2" class="td_center">
							<button class="btn_style" type="reset">취소</button>
							<button class="btn_style" type="submit">수정완료</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- 회원정보수정 끝 -->




	</section>
	<!--Content Wrap End-->
	<!--NEWS LETTERS START-->
	<div class="edu2_ft_topbar_wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="edu2_ft_topbar_des">
						<h5>MOIGO.COM</h5>
					</div>
				</div>
				<div class="col-md-6">
					<div class="edu2_ft_topbar_des">
						<form>
							<input type="email" placeholder="Enter Valid Email Address">
							<button>
								<i class="fa fa-paper-plane"></i>Submit
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--NEWS LETTERS END-->
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
