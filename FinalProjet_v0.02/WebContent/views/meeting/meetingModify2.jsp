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
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

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
	<form id="frm" name="frm" onsubmit="return check_submit();" enctype="multipart/form-data" action="${ctx}/meeting/registMeeting.do" method="POST">
	
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
										<img id="preview" src="${ctx}/resources/userData/meeting/images/${meeting.image}" width="300" alt="이미지">
										<input type="file" name="file" id="getfile" accept="image/*">
									</td>
									<td width="90%" class="td_center">
										<!-- 모임 내용 -->
										<div class="container">
											<div class="row">
												<div class="col-md-10">

													<div class="panel-body">
														<div class="form-horizontal">
															<div class="form-group">
																<span class="col-md-2 control-label"> 카테고리/모임명</span>

																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-3">
																			<select name="category" id="category" class="form-control">
																				 <option selected value="${myCategory}">${myCategory}</option>
																				 <c:forEach items="${category}" var="list">
																				 	<option value="${list}">${list}</option>
																				 </c:forEach>
																			</select>
																		</div>
																		<div class="col-md-9">
																			<input type="text" value="${meeting.title}" id="title" name="title" class="form-control" />
																		</div>
																	</div>
																</div>
															</div>


															<div class="form-group">
																<span class="col-md-2 control-label"> 모임일시</span>
																<div class="col-md-8">
																	<input type="date" value="${meeting.date}" id="date" name="date" class="form-control" />
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 신청일시</span>
																<div class="col-md-8">
																	<input type="date" value="${meeting.startDate}" id="startDate" name="startDate" class="form-control" />
																	<input type="date" value="${meeting.endDate}" id="endDate" name="endDate" class="form-control" />
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 모임장소</span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-10">
																			<input type="text" value="${meeting.place}"id="place" name="place" class="form-control" />
																		</div>
																		<div class="col-md-2">
																			<button onclick="placeSearch()">검색</button>
																		</div>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 유/무료선택</span>
																<div class="col-md-8">
																	<input type="hidden" id="fee" name="fee" value="0">
																	<div class="row">
																		<div class="col-md-3 ">
																			<label> <input type="radio" name="check" value="유료">
																				유료 신청
																			</label>
																		</div>
																		<div class="col-md-3 ">
																			<label> <input type="radio" name="check" checked="checked" value="무료">
																				무료 신청
																			</label>
																		</div>
																	</div>
																	<div id="moneyEdit" class="row">
																	
																	</div>
																</div>
															</div>


															<div class="form-group">
																<span class="col-md-2 -control-label"> 총인원</span>
																<div class="col-md-2">
																	<input class="form-control" value="${meeting.participants}" type="text" id="participants" name="participants" placeholder="ex)50"/>
																</div>
																<span class="col-md-1 control-label">명</span>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 간단한 모임소개 입력</span>
																<div class="col-md-8">
																	<textarea id="guidence" name="guidence" class="form-control" rows="5">${meeting.guidence}</textarea>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 상세내용 입력</span>
																<div class="col-md-8">
																	<textarea id="content" name="content" class="form-control" rows="5">${meeting.content}</textarea>
																</div>
															</div>

															<div class="form-group">
																<span class="col-md-2 control-label"> 해시태그</span>
																<div class="col-md-8">
																	<div class="row">
																		<div class="col-md-10">
																			<input type="text" name="hashtags" class="form-control" />
																		</div>
																		<div class="col-md-2">
																			<button onclick="addHashtag()">추가</button>
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
																			<select id="firstNum" name="firstNum" class="form-control">
																				<option value="010">010</option>
																				<option value="011">011</option>
																				<option value="017">017</option>
																			</select>
																		</div>

																		<div class="col-md-3">
																			<input id="secondNum" name="secondNum" type="text" class="form-control" />
																		</div>

																		<div class="col-md-3">
																			<input id="thirdNum" name="thirdNum" type="text" class="form-control" />
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
																			<input id="firstEmail" name="firstEmail" type="text" class="form-control" />
																		</div>
																		<div class="col-md-1">
																			<span>@</span>
																		</div>
																		<div class="col-md-3">
																			<select id="lastEmail" name="lastEmail" class="form-control">
																				<option value="naver.com">네이버</option>
																				<option value="daum.net">다음</option>
																				<option value="nate.com">네이트</option>
																			</select>
																		</div>



																	</div>
																	<input type="hidden" name="contact" id="contact" value="${meeting.contact}"/>
																</div>
															</div>

														</div>


													</div>

													<div class="form-group">
														<button id="regist" type="submit" class="btn btn-primary">등록</button>
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

		</section>
	</div>
	 </form>
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
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			var contact = $("#contact").val().split('/');
			var phoneNumber = contact[0].split('-');
			var email = contact[1].split('@');
			/* document.getElementById('firstNum').value = '011'; */
/* 			$("#firstNum option:eq(0)").prop("selected", true);   왜 안되는 것인가!!! 망할!! what the fuck!!!*/ 
			$('#secondNum').val(phoneNumber[1]);
			$('#thirdNum').val(phoneNumber[2]);
			$('#firstEmail').val(email[0]);
/* 			$('#lastEmail option[value="daum.net"]').attr('selected', 'selected'); */
			
			$(function() {
				$("#date, #startDate, #endDate").datepicker({
					dateFormat : 'yy-mm-dd'
				});
			})
		});
		
		var file = document.querySelector('#getfile');
		
		file.onchange = function () {
			
			var maxFileSize = 512000;
			var fileList = file.files;
			if(fileList[0].size > maxFileSize) {
				alert('선택하신 그림 파일은 허용 최대크기인 ' + maxFileSize/1024 + ' KB 를 초과하였습니다.');
				return;
			}
		    // 읽기
		    var reader = new FileReader();
		    reader.readAsDataURL(fileList [0]);

		    //로드 한 후
		    reader.onload = function() {
		        document.querySelector('#preview').src = reader.result ;
		    };
		};
	</script>
	<script>
		var radioBtn = document.querySelectorAll('input[type=radio][name="check"]');

		function changeHandler(event) {
		   if ( this.value === '유료' ) {
			   $('#moneyEdit').append("<div class='col-md-2'> <span>비용: </span></div> <div class='col-md-5'><input type='text' id='bill' class='form-control'></div>");
		   } else if ( this.value === '무료' ) {
			   $('#moneyEdit').empty();
		   }  
		}

		Array.prototype.forEach.call(radioBtn, function(radioBtn) {
		   radioBtn.addEventListener('change', changeHandler);
		});
		
	</script>
	
	<script type="text/javascript">
		function check_submit() {
			var title = $('#title').val();
			var category = $("select[name=category]").val();
			var date = $('#date').val();
			var startDate = $('#startDate').val();
			var endDate = $('#endDate').val();
			var place = $('#place').val();
			var fee = $('#fee').val($('#bill').val());
			var participants = $('#participants').val();
			var guidence = $('#guidence').val();
			var content = $('#content').val();
			var firstNum = $("select[name=firstNum]").val();
			var secondNum = $('#secondNum').val();
			var thirdNum = $('#thirdNum').val();
			var firstEmail = $('#firstEmail').val();
			var lastEmail = $('#lastEmail').val();
			
			alert(firstNum + secondNum + thirdNum);
			alert(firstEmail + lastEmail );
			if(title === '') {
				$('#title').focus();
				return false;
			} else if(category === '카테고리') {
				$("select[name=category]").focus();
				return false;
			} else if(date === '') {
				$('#date').focus();
				return false;
			} else if(startDate === '') {
				$('#startDate').focus();
				return false;
			} else if(endDate === '') {
				$('#endDate').focus();
				return false;
			} else if(place === '') {
				$('#place').focus();
				return false;
			} else if(participants === '') {
				$('#participants').focus();
				return false;
			} else if(guidence === '') {
				$('#guidence').focus();
				return false;
			} else if(content === '') {
				$('#content').focus();
				return false;
			} else if(firstNum === '') {
				$('#firstNum').focus();
				return false;
			} else if(secondNum === '') {
				$('#secondNum').focus();
				return false;
			} else if(thirdNum === '') {
				$('#thirdNum').focus();
				return false;
			} else if(firstEmail === '') {
				$('#firstEmail').focus();
				return false;
			} else if(lastEmail === '') {
				$('#lastEmail').focus();
				return false;
			} else {
				$('#contact').val(firstNum + "-" + secondNum + "-" + thirdNum + "/" + firstEmail + "@" + lastEmail);
				$('#fee').val($('#bill').val());
				return true;
			}
		}
	</script>
</body>
</html>
