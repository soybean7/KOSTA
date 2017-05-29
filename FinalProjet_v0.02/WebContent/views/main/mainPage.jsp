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
								<h3>모임 리스트</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="${ctx}/meeting/meetingSearchAll.do">홈</a></li>
									<li><a href="${ctx}/meeting/meetingSearchAll.do">모임 리스트</a></li>
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
		    			<form id="frm" onsubmit="return search_submit();" method="post">
		    				<div class="search_bar_des">
		    					<input type="search" id="search" name="keyword" placeholder="모임 검색"/>
		    					<select id="basic" name="searchType">
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
	 					<!-- 제안모임 리스트 시작 -->
	 				<c:forEach var="meeting" items="${meetingList}">
	 					
	 					<div class="col-md-4 col-sm-6" onclick="location.href='${ctx}/meeting/detailMeeting.do?meetingId=${meeting.meetingId}';">
	 						<!--EDU2 COLUM 3 Wrap Start-->
	 						<div class="edu2_col_3_wrap">
	 							<figure>
	 								<!-- 
	 								<img src="${ctx}/resources/extra-images/col-3-thum1.jpg" alt=""/>
	 								 -->
	 								<img src="${ctx}/resources/userData/meeting/images/${meeting.image}" alt="명준옵하~"/>
	 								<!-- <figcaption><a href="#"><i class="fa fa-play"></i></a></figcaption> -->
	 							</figure>

	 							<!--EDU2 COLUM 3 Des Start-->
	 							<div class="edu2_col_3_des">
	 								<h6>${meeting.title }</h6>
	 								<p>${meeting.guidence }</p>

	 								<!--EDU2 COLUM 3 Ftr Start-->
		 							<div class="edu2_col_3_ftr">
		 								<figure><img src="${ctx}/resources/extra-images/col_3_des1.jpg" alt=""/></figure>
		 								<a href="${ctx}/meeting/searchMeetingByEmail.do">${meeting.regUser}</a>
		 								<div style="float:right">
										</div>
		 							</div>
		 							<!--EDU2 COLUM 3 Ftr End-->
	 							</div>
	 							<!--EDU2 COLUM 3 Des End-->
	 						</div>
	 						<!--EDU2 COLUM 3 Wrap End-->
	 					



	 					</div>
						</c:forEach>
						<!-- 제안모임 리스트 끝 -->


	 					<div class="col-md-12">
	 						<!--KF_PAGINATION_WRAP START-->
							<div class="kf_edu_pagination_wrap">
								<ul class="pagination">
									
									<li>
										<c:if test="${paging.startPageNo != 0}">
										<a href="${ctx }/meeting/${requestMapping}pageNo=${paging.firstPageNo}">Start</a>
										</c:if>
									</li>
									<li>
										<c:if test="${paging.startPageNo != 0}">
										<a href="${ctx }/meeting/${requestMapping}pageNo=${paging.prevPageNo}" aria-label="Previous">
										<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
										</a>
										</c:if>
									</li>
									<c:forEach var="i" begin="${paging.startPageNo }" end="${paging.endPageNo }" step="1">
										<c:if test="${paging.startPageNo != 0}">
											<li><a href="${ctx }/meeting/${requestMapping}pageNo=${i}">${i}</a></li>
										</c:if>
									</c:forEach>
									<li>
										<c:if test="${paging.startPageNo != 0}">
										<a href="${ctx }/meeting/${requestMapping}pageNo=${paging.nextPageNo}" aria-label="Next">
										<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
										</a>
										</c:if>
									</li>
									<li>
										<c:if test="${paging.startPageNo != 0}">
										<a href="${ctx }/meeting/${requestMapping}pageNo=${paging.finalPageNo}">End</a>
										</c:if>
									</li>
								</ul>
							</div>
							
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
	
	<script type="text/javascript">
		function search_submit() {
			
			var searchType = $("select[name=searchType]").val();
			
			switch(searchType) {
			case 'title':
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByTitle.do";
				break;
			case 'place':
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByPlace.do";
				break;
			case 'category':
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByCategory.do";
				break;
			case 'hashtag':
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByHashtag.do";
				break;
			case 'date':
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByDate.do";
				break;
			default:
				document.getElementById("frm").action = "${ctx}/meeting/searchMeetingByTitle.do";
				break;
			}
			
			/* if(searchType === 'title') {
				document.getElementById("frm").action = "searchMeetingByTitle.do";
			} else if(searchType === 'place') {
				document.getElementById("frm").action = "searchMeetingByPlace.do";
			} else if(searchType === 'category') {
				document.getElementById("frm").action = "searchMeetingByCategory.do";
			} */
			if($("#basic").val() === '') {
				return false;
			} else if($("#search").val().replace(/ /g, '') === ''){
				return false;
			} else {
				return true;
			}
		}
	
	
	</script>

    
</body>
</html>
    