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

.input_text {
	padding: 5px;
	background-color: #f8c331;
	border-radius: 4px;
	color: white;
}

.btn_style {
	width: 15%;
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
	color: #ad33c6;
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
	background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7),
		to(#3e779d));
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
	<%@include file="/views/header/side.jspf"%>
	<!--KF_SIDEBAR_ARCHIVE_WRAP END-->
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
					<form action="${ctx}/user/userModify.do?email=${user.email}" method="POST">
						<table>
							<tr>
							<td rowspan="2" style="width: 30%;" class="td_center"><img
								width="300" src="#"><br>
								<button class="btn_style" type="button"
										style="width: 35%; font-size: 13px;">이미지 등록</button></td>
						</tr>
							<tr>
								<td class="td_left">
									회원email
									<img height="20"
									src="https://image.freepik.com/free-icon/email-filled-closed-envelope_318-75717.jpg">
									${user.email}<br>
									
									회원이름    
									<img height="20"
									src="https://image.freepik.com/free-icon/user_318-134392.jpg">
									<input class="input_text" type="text" name="name"
									value="${user.name}"><br>
									
									폰연락처
									 <img height="20"
									src="https://image.freepik.com/free-icon/old-typical-phone_318-31536.jpg">
									<input class="input_text" type="text" name="phoneNumber"
									value="${user.phoneNumber}"><br> 
									
									비밀번호
									<img height="20"
									src="https://image.freepik.com/free-icon/user_318-134392.jpg">
									<input class="input_text" type="text" name="password"
									value="${user.password}"><br>
									
									비밀번호확인
									<input class="input_text" type="text"
									value=""><br>
									
									
									가입날짜
									<img height="20"
									alt="가입일"
									src="https://image.freepik.com/free-icon/calendar_318-77221.jpg">
									2017-05-25<br></td>
							</tr>
							<tr>
								<td colspan="2" class="td_center"><textarea
										class="input_text" style="width: 100%;" rows="10"
										placeholder="안녕하세요 . 이메일은 ${user.email}이고 이름은 ${user.name}이고 핸드폰번호는 ${user.phoneNumber}이고 패스워드는 ${user.password}입니다."></textarea>
							</tr>
							<tr>
								<td colspan="2" class="td_center">
									<button class="btn_style" type="reset">취소</button>
									<button class="btn_style" type="submit">수정완료</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<!-- 회원정보수정 끝 -->




	</section>
	<!--Content Wrap End-->
	<!--NEWS LETTERS START-->
	<%@include file="/views/header/footer.jspf"%>
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
