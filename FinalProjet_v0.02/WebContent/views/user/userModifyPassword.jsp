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
        .td_center {
            padding:15px;
            font-family: "MD이솝체";
            text-align: center;
            border-bottom: 1px solid #ddd;
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
								<h3>비밀번호변경</h3>
							</div>

							<div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">마이페이지</a></li>
									<li><a href="#">비밀번호변경</a></li>
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
							<li><a href="${ctx}/user/showMyPage.do">마이페이지 홈</a></li>
							<li><a href="${ctx}/user/showModify.do">회원정보수정</a></li>
							<li><a href="${ctx}/views/user/userModifyPassword.jsp">비밀번호변경</a></li>
							<li><a href="${ctx}/views/user/userDrop.jsp">회원탈퇴</a></li>
							<li><a href="${ctx}/views/user/myMeetingRequestList.jsp">신청내역</a></li>
						</ul>
					</div>

					<!-- 회원정보수정 시작 -->
					<table>
						<tr>
							<td class="td_center">
								<input class="input_text" type="password" value="" placeholder="변경전 비밀번호">
								<span style="display:inline-block; width:200px; color:white"> 비밀번호</span>
							</td>
						</tr>
						<tr>
							<td class="td_center">
								<input class="input_text" type="password" value="" placeholder="변경할 비밀번호">
							<span style="display:inline-block; width:200px;">영대소문자,숫자 10자~</span> <br>
								<input class="input_text" type="password" value="" placeholder="비밀번호 확인">
								<span style="display:inline-block; width:200px; color:red;">비밀번호 불일치</span>
							</td>
						</tr>
						<tr>
							<td class="td_center">
							<button class="btn_style" type="reset">취소</button>
							<button class="btn_style" type="submit">비밀번호변경</button>
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
