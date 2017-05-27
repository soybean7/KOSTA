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

<title>관리자용 광고 상세</title>

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
	<!--SIDE MENU -->
	<%@ include file="/views/header/side.jspf"%>
	<!--HEADER START-->
	<%@ include file="/views/header/header.jspf"%>
	<!--HEADER END-->
	<!--Banner Wrap Start-->
	<div class="kf_inr_banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!--KF INR BANNER DES Wrap Start-->
					<div class="kf_inr_ban_des">
						<div class="inr_banner_heading">
							<h3>광고 상세정보</h3>
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

						<a class="event_link edit" href="${ctx}Ad/adEdit.do">광고 승인<i class="fa fa-thumbs-o-up"></i></a>
						<a class="event_link remove" href="${ctx}Ad/adDelete.do">광고 거부<i class="fa fa-thumbs-down"></i></a>
						<br>
						<br>

						<!--EVENT CONVOCATION OUTER Wrap START-->
						<div class="kf_convocation_outer_wrap">

							<!--EVENT CONVOCATION  Wrap START-->
							<div class="kf_convocation_wrap">
								<h4>
									<span>AD ID : ${ad.adId}</span><br>
									<span>Meeting ID : ${meeting.meetingId}</span><br>
									<span>모임 제목 : ${meetingList.title}</span><br>
								</h4><br>
								<h4>광고 등록자 정보</h4>
								<h5>
									<span>이름 : ${ad.name}</span><br>
									<span>E-mail : ${ad.email}</span><br>
									<span>전화번호 : ${ad.phoneNumber}</span><br>
								</h5><br>
								<h4>광고 기간</h4>
								<h5>
									<span>광고시작 : ${ad.startDate}</span><br>
									<span>전화번호 : ${ad.endDate}</span><br>
								</h5><br>
								<h4>기타사항</h4>
								<h5>
									<span>상품정보 : ${ad.product}</span><br>
									<span>질문사항 : ${ad.question}</span><br>
									<span>승인상태 : ${ad.approval}</span><br>
								</h5><br>

								<!--EVENT CONVOCATION DES START-->
								<div class="kf_convocation_des">
									<h4>모임정보</h4>
									<div class="convocation_slider">
										<div id="owl-demo-23" class="owl-carousel owl-theme">

											<div class="item">
												<figure>
													<img src="${ctx}/resources/extra-images/${meeting.image}"
														alt="" />
												</figure>
											</div>
											
										</div>
									</div>
									<ul class="convocation_timing">
										<li><i class="fa fa-calendar"></i>${meeting.date }</li>
										<li><i class="fa fa-clock-o"></i>${meeting.date }</li>
									</ul>

									<!-- EVENT CONVOCATION MAP  Wrap START -->
									<div class="kf_convocation_map">
										<div id="map-canvas" class="map-canvas"></div>
										<a class="convocation_link" href="#">Details</a> <a
											class="convocation_link" href="#">Organizer</a> <a
											class="convocation_link" href="#">Venue</a>
									</div>


									<div id="google-map-canvas" class="google-map-canvas"
										style="width: 100%; height: 340px"
										title="Samsung Mobile Display"></div>
									<!--EVENT CONVOCATION DES END-->

								</div>
								<!--EVENT CONVOCATION  Wrap END-->

								<!--EVENT SPEAKER Wrap START-->
								<!--EVENT SPEAKER Wrap End-->

								<!--EVENT GALLERY Wrap STAT-->
									<a class="event_link edit" href="${ctx}/views/Advertisement/">수정<i class="fa fa-edit"></i></a>
									<a class="event_link remove" href="${ctx}/views/Advertisement/">삭제<i class="fa fa-remove"></i></a>
								</div>
								<!--EVENT GALLERY Wrap End-->

							</div>
							<!--EVENT CONVOCATION OUTER Wrap END-->

						</div>

						<!--KF_EDU_SIDEBAR_WRAP START-->

						<!--KF_SIDEBAR_SEARCH_WRAP START-->
						<!--KF_SIDEBAR_SEARCH_WRAP END-->

						<!--KF_SIDEBAR_ARCHIVE_WRAP START-->
						<!--KF_SIDEBAR_ARCHIVE_WRAP END-->




						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP START-->
						<!--KF EDU SIDEBAR COURSES CATEGORieS WRAP END-->

						<!--KF SIDE BAR COURSES LIST WRAP START WRAP START-->
						<!--KF SIDE BAR COURSES LIST WRAP START WRAP END-->

						<!--KF SIDE BAR TAG CLOUD WRAP START-->
						<!--KF SIDE BAR TAG CLOUD WRAP END-->

						<!--KF EDU SIDEBAR WRAP END-->

						<!--Content Wrap End-->
						</section>
						</div>
		
		<!-- 죄민상 meeting detail 복사 해옴. -->				
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
                                    <td width="40%" class="td_center">
                                        <!-- 모임 대표 이미지 -->
                                        <%-- ${ctx}/resources/userData/meeting/images/${meeting.image} --%>
                                        <img src="${ctx}/resources/userData/meeting/images/${meeting.image}" height="320" width="320" style="display: inline-block;" alt="이미지 오류"/>
                                        <!-- 모임 대표 이미지 끝 -->
                                    </td>
                                    <td width="60%" class="td_left">
                                        <!-- 모임 내용 -->
                                        <span style="display: inline-block;">
                                        <h3> ${meeting.title} </h3><br>
                                        <img src="https://image.freepik.com/free-icon/calendar-with-a-clock-time-tools_318-50627.jpg" height="20"> 모임일시 : <b>${meeting.date}</b><br>

                                        <img src="https://image.flaticon.com/icons/svg/58/58960.svg" height="20"> 모임장소 : ${meeting.place} <br>
                                        
                                        <img height="20" src="https://image.freepik.com/free-icon/group-of-people-in-a-formation_318-44341.jpg"> 신청인원 : 총 <b style="color:blue">${meeting.participants}</b>명 | <b style="color:blue">${meetingUser}</b>명 신청가능<br><br>

                                        ${meeting.content}<br>
                                        <div style="color:blue">#태그 #독서모임</div>
                                        </span>
                                        <!-- 모임 내용 끝 -->
                                    </td>
                                    </tr>
                                    <tr>
                                    <td class="td_left">
                                        <span>
                                        <b>[개설자정보]</b><br>
                                        	이름 : ${user.name }<br>
                                        <img height="20" src="https://image.freepik.com/free-icon/email-filled-closed-envelope_318-75717.jpg">${user.email}<br>
                                        <img height="20" src="https://image.freepik.com/free-icon/old-typical-phone_318-31536.jpg"> ${user.phoneNumber}
                                        </span>
                                    </td>
                                    <td class="td_center">
                                    <b>신청기간 : ${meeting.startDate} ~ ${meeting.endDate}</b><br><br>
                                    <c:if test="${meeting.regUser != loginedUser.email}">>
                                        <a id="btn_style" class="btn btn-primary">신청하기</a>
                                   	</c:if>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td colspan="2" class="td_center">
                                        image description
                                    </td>
                                    </tr>
                                    <tr>
                                    <td colspan="2" class="td_center">
                                        <div class="kf_location_wrap">
				                            <div id="map-canvas" class="map-canvas"></div>
                                            <input id="xValue" type = "hidden" value="37.551619"/>
                                            <input id="yValue" type = "hidden" value="126.924989"/>
    		                              </div>
                                    </td>
                                    </tr>
                                </table>
	    						<!-- BLOG DETAIL THUMBNAIL END-->

    							<!--KF_BLOG DETAIL_DES START-->
    							<div class="kf_blog_detail_des">
	    							

    								
	    						</div>
	    						<!--KF_BLOG DETAIL_DES END-->

	    						

    						</div>
    						<!--KF_BLOG DETAIL_WRAP END-->
    					</div>

    				</div>
    			</div>
    		</section>
    	</div>
    	<!-- 죄민상 meeting detail 복사 끝 -->
    	
						<!--FOOTER START-->
						<%@ include file="/views/header/footer.jspf"%>
						<!--FOOTER END-->

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
