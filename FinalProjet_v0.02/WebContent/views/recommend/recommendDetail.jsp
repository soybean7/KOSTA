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
<style>
    
        #btn_div {
	        font-family: "MD이솝체";
	        display:inline-block;
	
	        width:95%;
	        padding:.5em 0;
	
	        font-size:18px;
	        font-weight:bold;
	        color:#4F4F4F;
	
	        cursor:pointer;
	
	        text-align:center;
	
	        background-color:#DEDEDE;
	        background-image:-webkit-gradient(linear,left top,left bottom,from(#F4F4F4),to(#DEDEDE));
	
	        border:1px #C3C3C3 solid;
	        border-bottom-color:#a2a2a2; 
	        border-top-color:#e3e3e3; 
	        border-radius:6px;
	        -moz-border-radius:6px;
	        -webkit-border-radius:6px;
	        text-overflow:ellipsis;
	        overflow:hidden;
	        white-space:nowrap;
        }
        
        
        #btn_style {
	       width:90%;
	       padding:.5em 0;
	       font-family: "MD이솝체";
	
	       border: 1px solid #0a3c59;
	       background: #3e779d;
	       background: -webkit-gradient(linear, left top, left bottom, from(#65a9d7), to(#3e779d));
	       background: -webkit-linear-gradient(top, #65a9d7, #3e779d);
	       background: -moz-linear-gradient(top, #65a9d7, #3e779d);
	       background: -ms-linear-gradient(top, #65a9d7, #3e779d);
	       background: -o-linear-gradient(top, #65a9d7, #3e779d);
	       background-image: -ms-linear-gradient(top, #65a9d7 0%, #3e779d 100%);
	       padding: 17px 34px;
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
        #btn_style:hover {
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
       
       .btn_love {
     	   width:90%;
	       padding: 0;
	       font-family: "MD이솝체";
	       font-size: 22px;
	       
		   border: 1px solid #401818;
		   background: #9c3e3e;
		   background: -webkit-gradient(linear, left top, left bottom, from(#d66565), to(#9c3e3e));
		   background: -webkit-linear-gradient(top, #d66565, #9c3e3e);
		   background: -moz-linear-gradient(top, #d66565, #9c3e3e);
		   background: -ms-linear-gradient(top, #d66565, #9c3e3e);
		   background: -o-linear-gradient(top, #d66565, #9c3e3e);
		   background-image: -ms-linear-gradient(top, #d66565 0%, #9c3e3e 100%);
		   padding: 10px 34px;
	       -webkit-border-radius: 10px;
	       -moz-border-radius: 10px;
	       border-radius: 17px;
		   -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
		   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
		   box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
		   text-shadow: #bd7f7f 0 1px 0;
		   color: #6b0606;
		   
	       font-family: MD이솝체, helvetica, serif;
	       text-decoration: none;
	       vertical-align: middle;
		   }
		.btn_love:hover {
		   font-family: "MD이솝체";
	       
		   border: 1px solid #401818;
		   text-shadow: #571e1e 0 1px 0;
		   background: #9c3e3e;
		   background: -webkit-gradient(linear, left top, left bottom, from(#d66565), to(#9c3e3e));
		   background: -webkit-linear-gradient(top, #d66565, #9c3e3e);
		   background: -moz-linear-gradient(top, #d66565, #9c3e3e);
		   background: -ms-linear-gradient(top, #d66565, #9c3e3e);
		   background: -o-linear-gradient(top, #d66565, #9c3e3e);
		   background-image: -ms-linear-gradient(top, #d66565 0%, #9c3e3e 100%);
		   color: #fff;
		   }
		.btn_love:active {
		   text-shadow: #571e1e 0 1px 0;
		   border: 1px solid #401818;
		   background: #d66565;
		   background: -webkit-gradient(linear, left top, left bottom, from(#9c3e3e), to(#9c3e3e));
		   background: -webkit-linear-gradient(top, #9c3e3e, #d66565);
		   background: -moz-linear-gradient(top, #9c3e3e, #d66565);
		   background: -ms-linear-gradient(top, #9c3e3e, #d66565);
		   background: -o-linear-gradient(top, #9c3e3e, #d66565);
		   background-image: -ms-linear-gradient(top, #9c3e3e 0%, #d66565 100%);
		   color: #fff;
		   }
       
       
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
        
        
    </style>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    /*
            $(function(){
                $(".btn_love").click(function(){
                	
                	$.ajax({
                		type: 'POST',
                		url: 'love.do',
                		data:
                			{
                				meetingId: '1001',
                				userEmail: 'testuser'
                			},
                			
                			success: function(result){
    							if($.trim(result) == 'ok'){
    								$("#idCheckResult").html("사용 가능한 ID 입니다.");
    							}else{
    								$("#idCheckResult").html("사용 중인 ID 입니다.");
    							}
    						}
                	});
                	
                	
                	console.log($(this).css("color"));
                	if($(this).css("color")=="rgb(255, 255, 255)"){
                		$(this).css("color","black");
                	}else {
                		$(this).css("color","white");
                	}
                });
            });
      */  
    </script>


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
								<h3>모임 제안</h3>
                        	</div>
                           
                            <div class="kf_inr_breadcrumb">
								<ul>
									<li><a href="#">홈</a></li>
									<li><a href="#">모임 제안 찾기</a></li>
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
                                    <td width="40%" class="td_center">
                                        <!-- 모임 대표 이미지 -->
                                        <!-- 
	    								<img src="${ctx}/resources/extra-images/col-3-thum7.jpg" height="320" width="320" style="display: inline-block;" alt=""/>
	    								 -->
	    								<img width="320" height="320" style="display: inline-block;"
	    									src="http://img.insight.co.kr/static/2016/03/22/700/bg040znw04rb8wgw554n.jpg"/>
                                        <!-- 모임 대표 이미지 끝 -->
                                    </td>
                                    <td  class="td_left">
                                        <!-- 모임 내용 -->
                                        <span style="display: inline-block;">
                                        <!-- 
                                        <a style="float:right; color:red" href="#">찜♡</a>
                                         -->
                                        <br>
                                        <h3 style="font-family: MD이솝체;"> ${meeting.title } </h3>
                                        </span>
                                        <br>
                                        <hr>

                                        <img src="https://image.flaticon.com/icons/svg/58/58960.svg" height="20"> 
                                        	모임 제안 장소 : ${meeting.place } <br>
                                        <img src="https://image.freepik.com/free-icon/calendar_318-77221.jpg" height="20">
                                        	모임 제안 기간 : <b>4월 25일 (화) ~ 5월 2일(화) </b>
                                        
                                      
                                        <hr width="100%">
                                        
                                        <span>
                                        ${meeting.guidence }<br>
                                        <div style="color:blue">
                                        	<c:forEach var="hashtag" items="${meeting.hashtags }">
                                        		#${hashtag } 
                                        	</c:forEach>
                                        </div>
                                        </span>
                                        <!-- 모임 내용 끝 -->
                                    </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                    <td class="td_center">
                                        <button id="btn_style">개설하기</button>
                                    </td>
                                    <td class="td_center">
                                    	<c:choose>
                                    		<c:when test="${exist eq 'exist' }">
                                       			<button class="btn_love" style="color:white;" 
                                       				onclick="location.href='love.do?meetingId=${meeting.meetingId}'"> ${meeting.sympathy } 찜♥</button>
                                       		</c:when>
                                       		<c:otherwise>
                                       			<button id="btn_love_btn" class="btn_love" 
                                       				onclick="location.href='love.do?meetingId=${meeting.meetingId}'"> ${meeting.sympathy } 찜♡</button>
                                       		</c:otherwise>
                                   		</c:choose>
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
        <!--Content Wrap End-->
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
	<!--Map-->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false?key=AIzaSyDR4TBGOfhyhldkwQ17KVIbS0pf36J8X6w"></script>

    
</body>
</html>
    