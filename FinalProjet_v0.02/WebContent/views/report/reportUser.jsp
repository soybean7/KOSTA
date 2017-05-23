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
	padding: 15px;
	font-family: "MD이솝체";
	border-bottom: 1px solid #ddd;
}

.td_left {
	padding: 15px;
	font-family: "MD이솝체";
	padding-left: 80px;
	border-bottom: 1px solid #ddd;
}

.td_center {
	padding: 15px;
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
							Don't have an account?<br> <a href="#">Sign up as a User</a>
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
								<h3>신고관리</h3>
							</div>

							<div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">홈</a></li>
									<li><a href="#">신고관리</a></li>
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
		<!-- 신고 시작 -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">



					<div id="page-wrapper">
						<div class="row">
							<div class="col-md-12">
								<!-- Advanced Tables -->
								<div class="panel panel-default">

									<div class="panel-body">
										<ul class="nav nav-tabs">
											<li class=""><a
												onclick="location.href='reportMeeting.jsp'"
												data-toggle="tab">신고모임내역</a></li>
											<li class="active"><a href="reportUser.jsp"
												data-toggle="tab">신고회원내역</a></li>
										</ul>
										<div class="panel-body">
											<div class="table-responsive">
												<form role="form">
													<div class="form-group input-group"
														style="width: 200px; float: right;">


														<input type="text" class="form-control"> <span
															class="input-group-btn">
			<!-- 												<button data-toggle="dropdown"
																class="btn btn-default dropdown-toggle">
																Default <span class="caret"></span>
															</button>
															<ul class="dropdown-menu">
																<li><a href="#">Action</a></li>
																<li><a href="#">Another action</a></li>
																<li><a href="#">Something else here</a></li>
																<li class="divider"></li>
																<li><a href="#">Separated link</a></li>
															</ul> -->


															<button class="btn btn-default" type="button">
																<i class="fa fa-search"></i>
															</button>
														</span>
													</div>
													<table
														class="table table-striped table-bordered table-hover"
														id="dataTables-example">

														<thead>
															<tr>
																<th>NO.</th>
																<th>이메일</th>
																<th>이름</th>
																<th>누적신고수</th>
																<th>작성 게시물 보기</th>
																<th>회원정지</th>
															</tr>
														</thead>
														<tbody>
															<tr class="odd gradeX">
																<td>1</td>
																<td>email@email.com</td>
																<td>홍길동</td>
																<td class="center">35</td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i>게시물보기
																	</button></td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i>정지
																	</button></td>
															</tr>

															<tr class="odd gradeX">
																<td>2</td>
																<td>email@email.com</td>
																<td>Lee</td>
																<td class="center">10</td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i> 게시물보기
																	</button></td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i>정지
																	</button></td>
															</tr>

															<tr class="odd gradeX">
																<td>3</td>
																<td>email@email.com</td>
																<td>jihye</td>
																<td class="center">16</td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i> 게시물보기
																	</button></td>
																<td class="center"><button class="btn btn-primary">
																		<i class="fa fa-edit "></i>정지
																	</button></td>
															</tr>

														</tbody>
													</table>
												</form>
											</div>

										</div>
									</div>
									<!--End Advanced Tables -->
								</div>
							</div>
							<!-- /. ROW  -->
						</div>
					</div>
				</div>
			</div>
			<!-- 신고 끝 -->
		</div>
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
