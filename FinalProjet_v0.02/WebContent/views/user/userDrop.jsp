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
	padding: 15px;
	font-family: "MD이솝체";
	text-align: center;
	border-bottom: 1px solid #ddd;
	border-right: 0px none;
	border-left: 0px none;
}

.input_text {
	padding: 5px;
	background-color: #3CBC8D;
	border-radius: 4px;
	color: white;
}
</style>


</head>

<body>
	<!--KF KODE WRAPPER WRAP START-->
	<!-- SIGNIN MODEL END -->
	<%@include file="/views/header/side.jspf"%>
	<!--KF_SIDEBAR_SEARCH_WRAP END-->
	<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
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
							<td class="td_center"><span style="color: red;">
									탈퇴하시겠습니까?<br> 탈퇴시 모든 정보가 삭제됩니다.
							</span></td>
						</tr>
						<tr>
							<td class="td_center">
								<button type="reset">취소</button>
								<a href="${ctx}/user/userDrop.do" role="button">회원탈퇴</a>
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
