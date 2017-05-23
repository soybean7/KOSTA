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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style>
#btn_div {
	font-family: "MD이솝체";
	display: inline-block;
	width: 95%;
	padding: .5em 0;
	font-size: 18px;
	font-weight: bold;
	color: #4F4F4F;
	cursor: pointer;
	text-align: center;
	background-color: #DEDEDE;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#F4F4F4),
		to(#DEDEDE));
	border: 1px #C3C3C3 solid;
	border-bottom-color: #a2a2a2;
	border-top-color: #e3e3e3;
	border-radius: 6px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#btn_style {
	width: 95%;
	padding: .5em 0;
	font-family: "MD이솝체";
	border: 1px solid #0a3c59;
	background: #3e779d;
	background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7),
		to(#3e779d));
	background: -webkit-linear-gradient(top, #65a9d7, #3e779d);
	background: -moz-linear-gradient(top, #65a9d7, #3e779d);
	background: -ms-linear-gradient(top, #65a9d7, #3e779d);
	background: -o-linear-gradient(top, #65a9d7, #3e779d);
	background-image: -ms-linear-gradient(top, #65a9d7 0%, #3e779d 100%);
	padding: 17px 34px;
	-webkit-border-radius: 17px;
	-moz-border-radius: 17px;
	border-radius: 17px;
	-webkit-box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	-moz-box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	text-shadow: #7ea4bd 0 1px 0;
	color: #06426c;
	font-size: 18px;
	font-family: MD이솝체, helvetica, serif;
	text-decoration: none;
	vertical-align: middle;
}

#btn_style:hover {
	font-family: "MD이솝체";
	border: 1px solid #0a3c59;
	text-shadow: #1e4158 0 1px 0;
	background: #3e779d;
	background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7),
		to(#3e779d));
	background: -webkit-linear-gradient(top, #65a9d7, #3e779d);
	background: -moz-linear-gradient(top, #65a9d7, #3e779d);
	background: -ms-linear-gradient(top, #65a9d7, #3e779d);
	background: -o-linear-gradient(top, #65a9d7, #3e779d);
	background-image: -ms-linear-gradient(top, #65a9d7 0%, #3e779d 100%);
	color: #fff;
}

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
		<!--SIDE MENU -->
		<%@ include file="/views/header/side.jspf"%>
		<!--HEADER-->
		<%@ include file="/views/header/header.jspf"%>

		<!--Banner Wrap Start-->
		<div class="kf_inr_banner padding_more">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!--KF INR BANNER DES Wrap Start-->
						<div class="kf_inr_ban_des">
							<div class="inr_banner_heading">
								<h3>모임개설</h3>
							</div>

							<div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">모임개설</a></li>
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

	<div class="kf_content_wrap">
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<!--KF_BLOG DETAIL_WRAP START-->
						<div class="kf_blog_detail_wrap">

							<!-- BLOG DETAIL THUMBNAIL START-->
							<table>
								<tr>
									<td width="10%" class="td_center">
										<!-- 모임 대표 이미지 --> <%-- <img
										src="${ctx}/resources/extra-images/col-3-thum7.jpg" id="image"
										height="200" width="200" style="display: inline-block;" alt="" />
										<!-- 모임 대표 이미지 끝 --> <br> <br>
										<button id="changeBtn">이미지 변경</button> --%>
										<img id="preview" src="" width="300" alt="이미지">
										<input type="file" id="getfile" accept="image/*">
									</td>
									<td width="90%" class="td_center">
										<!-- 모임 내용 -->
										<div class="container">
											<div class="row">
												<div class="col-md-10">

													<div class="panel-body">
														<form class="form-horizontal">
															<div class="form-group">
																<span class="col-md-2 control-label"> 카테고리/모임명</span>

																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-3">
																			<select name="" class="form-control">
																				<option value="">카테고리</option>
																				<option value="">카테고리</option>
																				<option value="">카테고리</option>
																				<option value="">카테고리</option>
																				<option value="">카테고리</option>
																				<option selected value="">카테고리</option>
																			</select>
																		</div>
																		<div class="col-md-9">
																			<input type="text" class="form-control" />
																		</div>
																	</div>
																</div>
															</div>


															<div class="form-group">
																<span class="col-md-2 control-label"> 모임일시</span>
																<div class="col-md-8">
																	<input type="text" class="form-control" />
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 신청일시</span>
																<div class="col-md-8">
																	<input type="text" class="form-control" />
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 모임장소</span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-10">
																			<input type="text" class="form-control" />
																		</div>
																		<div class="col-md-2">
																			<button>검색</button>
																		</div>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 유/무료선택</span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-3 ">
																			<label> <input type="radio" name="gender">
																				유료 신청
																			</label>
																		</div>
																		<div class="col-md-3 ">
																			<label> <input type="radio" name="gender">
																				무료 신청
																			</label>
																		</div>
																	</div>
																</div>
															</div>


															<div class="form-group">
																<span class="col-md-2 control-label"> 그룹설정</span>
																<div class="col-md-8">


																	<table
																		class="table table-striped table-bordered table-hover">

																		<thead>
																			<tr>
																				<th>총인원</th>
																				<th>참가비용</th>
																				<th>선정방법</th>
																				<th>동반인원</th>

																			</tr>
																		</thead>
																		<tbody>
																			<tr class="odd gradeX">
																				<td><input type="number" size="5"
																					class="form-control" /> <span>명</span></td>
																				<td><input type="number" size="5"
																					class="form-control" />원</td>
																				<td><select name="" class="form-control">
																						<option value="">010</option>
																						<option value="">011</option>
																						<option value="">017</option>
																						<option selected value="">선착순</option>
																				</select></td>
																				<td><select name="" class="form-control">
																						<option value="">010</option>
																						<option value="">011</option>
																						<option value="">017</option>
																						<option selected value="">없음</option>
																				</select></td>

																			</tr>

																		</tbody>
																	</table>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 간단한 모임소개 입력</span>
																<div class="col-md-8">
																	<textarea class="form-control" rows="5"></textarea>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 상세내용 입력</span>
																<div class="col-md-8">
																	<textarea class="form-control" rows="5"></textarea>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 해시태그</span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-10">
																			<input type="text" class="form-control" />
																		</div>
																		<div class="col-md-2">
																			<button>추가</button>
																		</div>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 신청 문의 연락처
																	설정</span>

																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-2">
																			<span>연락처</span>
																		</div>

																		<div class="col-md-2">
																			<select name="" class="form-control">
																				<option value="">010</option>
																				<option value="">011</option>
																				<option value="">017</option>
																			</select>
																		</div>

																		<div class="col-md-3">
																			<input type="text" class="form-control" />
																		</div>

																		<div class="col-md-3">
																			<input type="text" class="form-control" />
																		</div>
																	</div>

																</div>

																<span class="col-md-2 control-label"> </span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-2">
																			<span>이메일</span>
																		</div>


																		<div class="col-md-3">
																			<input type="text" class="form-control" />
																		</div>
																		<div class="col-md-1">
																			<span>@</span>
																		</div>
																		<div class="col-md-3">
																			<select name="" class="form-control">
																				<option value="">네이버</option>
																				<option value="">다음</option>
																				<option value="">네이트</option>
																				<option selected value="">선택</option>
																			</select>
																		</div>



																	</div>

																</div>
															</div>

														</form>


													</div>

													<div class="form-group">
														<a href="#" class="btn btn-primary">primary</a> <a
															href="#" class="btn btn-success">success</a>
													</div>

												</div>

											</div>
										</div>

									</td>
								</tr>


							</table>
							<!-- BLOG DETAIL THUMBNAIL END-->

							<!--KF_BLOG DETAIL_DES START-->
							<div class="kf_blog_detail_des"></div>
							<!--KF_BLOG DETAIL_DES END-->

						</div>
						<!--KF_BLOG DETAIL_WRAP END-->
					</div>

				</div>
			</div>

			<!-- <div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">Heading here</h4>
							</div>

							body시작 
							<div class="panel-body">
								<form class="form-horizontal">
									<div class="form-group">
										<label for="inputfirstname" class="col-md-4 control-label">
											카테고리/모임명</label>

										<div class="col-md-8">
											<div class="row">
												<div class="col-md-3">
													<select name="" class="form-control">
														<option value="">카테고리</option>
														<option value="">카테고리</option>
														<option value="">카테고리</option>
														<option value="">카테고리</option>
														<option value="">카테고리</option>
														<option selected value="">카테고리</option>
													</select>
												</div>
												<div class="col-md-8">
													<input type="text" class="form-control"
														placeholder="Enter First Name..." />
												</div>
											</div>
										</div>
									</div>


									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											모임일시</label>
										<div class="col-md-8">
											<input type="text" class="form-control"
												placeholder="Enter Screen Name..." />
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											신청일시</label>
										<div class="col-md-8">
											<input type="text" class="form-control"
												placeholder="Enter Screen Name..." />
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											모임장소</label>
										<div class="col-md-8">
											<div class="row">
												<div class="col-md-10">
													<input type="text" class="form-control"
														placeholder="Enter Screen Name..." />
												</div>
												<div class="col-md-2">
													<button>추가</button>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											유/무료선택</label>
										<div class="col-md-8 ">
											<label> <input type="radio" name="gender"> 유료
												신청
											</label> <label> <input type="radio" name="gender">
												무료 신청
											</label>
										</div>
									</div>


									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											그룹설정</label>
										<div class="col-md-8">


											<table class="table table-striped table-bordered table-hover">

												<thead>
													<tr>
														<th>총인원</th>
														<th>참가비용</th>
														<th>선정방법</th>
														<th>동반인원</th>

													</tr>
												</thead>
												<tbody>
													<tr class="odd gradeX">
														<td><input type="number" size="5"
															class="form-control" /> <span>명</span></td>
														<td><input type="number" size="5"
															class="form-control" />원</td>
														<td><select name="" class="form-control">
																<option value="">010</option>
																<option value="">011</option>
																<option value="">017</option>
																<option selected value="">선착순</option>
														</select></td>
														<td><select name="" class="form-control">
																<option value="">010</option>
																<option value="">011</option>
																<option value="">017</option>
																<option selected value="">없음</option>
														</select></td>

													</tr>

												</tbody>
											</table>
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											간단한 모임소개 입력</label>
										<div class="col-md-8">
											<textarea class="form-control"
												placeholder="Enter Screen Name..." rows="5"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											상세내용 입력</label>
										<div class="col-md-8">
											<textarea class="form-control"
												placeholder="Enter Screen Name..." rows="5"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											해시태그</label>
										<div class="col-md-8">
											<div class="row">
												<div class="col-md-10">
													<input type="text" class="form-control"
														placeholder="Enter Screen Name..." />
												</div>
												<div class="col-md-2">
													<button>추가</button>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label for="inputscreenname" class="col-md-4 control-label">
											신청 문의 연락처 설정</label>

										<div class="col-md-8">
											<div class="row">
												<div class="col-md-2">
													<span>연락처</span>
												</div>

												<div class="col-md-2">
													<select name="" class="form-control">
														<option value="">010</option>
														<option value="">011</option>
														<option value="">017</option>
													</select>
												</div>

												<div class="col-md-3">
													<input type="text" class="form-control"
														placeholder="Enter Screen Name..." />
												</div>

												<div class="col-md-3">
													<input type="text" class="form-control"
														placeholder="Enter Screen Name..." />
												</div>
											</div>

										</div>

										<label for="inputscreenname" class="col-md-4 control-label">
										</label>
										<div class="col-md-8">
											<div class="row">
												<div class="col-md-2">
													<span>이메일</span>
												</div>


												<div class="col-md-3">
													<input type="text" class="form-control"
														placeholder="Enter Screen Name..." />
												</div>
												<div class="col-md-1">
													<span>@</span>
												</div>
												<div class="col-md-3">
													<select name="" class="form-control">
														<option value="">네이버</option>
														<option value="">다음</option>
														<option value="">네이트</option>
														<option selected value="">선택</option>
													</select>
												</div>



											</div>

										</div>
									</div>
								</form>
							</div>
-->

			<!-- 
							<div class="panel-footer">
								<form class="form-horizontal">
									<div class="form-group">
										<div class="col-md-8">
											<input type="submit" name="submit" value="submit"
												class="btn btn-default">
										</div>
									</div>
								</form>
							</div>
						</div>
				</div>
			</div>-->
		</section>
	</div>
	<!--Content Wrap End-->
	<%@ include file="/views/header/footer.jspf"%>

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
	<!--Map-->
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false?key=AIzaSyDR4TBGOfhyhldkwQ17KVIbS0pf36J8X6w"></script>
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#datetimepicker1').datetimepicker();
		});
		
		var file = document.querySelector('#getfile');

		file.onchange = function () {
		    var fileList = file.files ;

		    // 읽기
		    var reader = new FileReader();
		    reader.readAsDataURL(fileList [0]);

		    //로드 한 후
		    reader.onload = function  () {
		        document.querySelector('#preview').src = reader.result ;
		    };
		};
	</script>
</body>
</html>
