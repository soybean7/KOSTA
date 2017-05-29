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
<!-- datepicker -->
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
							<form action="${ctx }/recommend/registRecommend.do" method="POST">
								<table>
									<tr>
										<td width="10%" class="td_center">
										<label for="getfile">Image</label>
											<br /> 
											<input type="file" id="getfile" accept="image/*"/>
											<div id="image_preview">
												<img id="preview" src="" width="300" alt="이미지"/> 
												<br /> 
												<a href="#">Remove</a>
											</div>
										</td>
										<td width="90%" class="td_center">
											<!-- 모임 내용 -->
											<div class="container">
												<div class="row">
													<div class="col-md-10">

														<div class="panel-body">
															<div class="form-horizontal">
																<fieldset>
																	<div class="form-group">
																		<span class="col-md-2 control-label"> 카테고리/모임명</span>

																		<div class="col-md-8">
																			<div class="row">
																				<div class="col-md-3">
																					<select id="category" name="category" size="3">

																						<c:forEach items="${category }" var="category">
																							<option value="${category}">${category}</option>
																						</c:forEach>
																						<option selected value="">카테고리</option>

																					</select>
																				</div>
																				<div class="col-md-9">
																					<input type="text" name="title"
																						class="form-control" />
																				</div>
																			</div>
																		</div>
																	</div>


																	<div class="form-group">
																		<span class="col-md-2 control-label">제안일시</span>
																		<div class="col-md-8">
																			<div class="row">
																				<div class="col-md-3">
																					<input type="date" id="datepicker1"
																						name="startDate" class="form-control">
																				</div>
																				<div class="col-md-1">
																					<span>~</span>
																				</div>
																				<div class="col-md-3">
																					<input type="date" id="datepicker2" name="endDate"
																						class="form-control">
																				</div>
																			</div>
																		</div>
																	</div>

																	<div class="form-group">
																		<span class="col-md-2 control-label"> 모임장소</span>
																		<div class="col-md-8">
																			<div class="row">
																				<div class="col-md-10">
																					<input type="text" name="place"
																						class="form-control" />
																				</div>
																				<div class="col-md-2">
																					<button>검색</button>
																				</div>
																			</div>
																		</div>
																	</div>


																	<div class="form-group">
																		<span class="col-md-2 control-label"> 간단한 모임소개
																			입력</span>
																		<div class="col-md-8">
																			<textarea class="form-control" name="guidence"
																				rows="5"></textarea>
																		</div>
																	</div>

																	<div class="form-group">
																		<span class="col-md-2 control-label"> 상세내용 입력</span>
																		<div class="col-md-8">
																			<textarea class="form-control" name="content"
																				rows="5"></textarea>
																		</div>
																	</div>

																	<div class="form-group">
																		<span class="col-md-2 control-label"> 해시태그</span>
																		<div class="col-md-8">
																			<div class="row">
																				<div class="col-md-10">
																					<input id="tag" name="tag" type="text"
																						class="form-control" placeholder="HashTag" />
																				</div>
																				<div class="col-md-2">
																					<button id="hashTagBt" name="hashTagBt"
																						class="btn btn-default" type="button"
																						onclick="addTag()">추가!</button>
																				</div>
																			</div>
																		</div>
																	</div>


																	<!-- HashTag 출력 -->
																	<div class="form-group">
																		<div id="HashTagList" style="margin: 0 auto;"></div>
																	</div>
																	<br> <br> <br>
																	<!-- /HashTag출력 -->
																</fieldset>
															</div>
														</div>
													</div>
												</div>
											</div>
										</td>

									</tr>
								</table>
								<div class="form-group">
									<button type="submit" class="btn btn-primary">primary</button>
									<button type="reset" class="btn btn-success">success</button>
								</div>
							</form>
							<div class="kf_blog_detail_des"></div>
						</div>
					</div>
				</div>
			</div>

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
	<!-- datepicker -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script type="text/javascript">
	
		var file = document.querySelector('#getfile');
		
		$('#getfile').on('change', function() {

			ext = $(this).val().split('.').pop().toLowerCase(); //확장자
			
			
			var maxFileSize = 512000;
			var fileList = file.files;
			if(fileList[0].size > maxFileSize) {
				alert('선택하신 그림 파일은 허용 최대크기인 ' + maxFileSize/1024 + '?KB 를 초과하였습니다.');
				return;
			}
			//배열에 추출한 확장자가 존재하는지 체크
			if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
				resetFormElement($(this)); //폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
			} else {
				file = $('#getfile').prop("files")[0];
				blobURL = window.URL.createObjectURL(file);
				$('#image_preview img').attr('src', blobURL);
				$('#image_preview').slideDown(); //업로드한 이미지 미리보기 
				$(this).slideUp(); //파일 양식 감춤
			}
		});

		$('#image_preview a').bind('click', function() {
			resetFormElement($('#getfile')); //전달한 양식 초기화
			$('#getfile').slideDown(); //파일 양식 보여줌
			$(this).parent().slideUp(); //미리 보기 영역 감춤
			return false; //기본 이벤트 막음
		});
		

		//datePicker
		$(function() {
			$("#datepicker1, #datepicker2").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});

		//hashtag
		var count = 0;
		var out = new Array();
		var tagstr = "";
		function addTag() {
			out[count] = "";
			var div = document.createElement('div');

			var tags = new Array();
			tags[count] = document.getElementById('tag').value;
			document.getElementById('tag').value = "";

			if (tags[count] == "") {
				alert("HashTag를 입력하세요!");
			} else {
				out[count] += "<div id = 'hashTag' class='alert alert-info alert-dismissable' style='height: 50px; float: left;'>";
				out[count] += tags[count];
				out[count] += "<div class='deleteBox' style='display:inline;'>";
				out[count] += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true' onclick='removeTag(this)'> × </button>";
				out[count] += "</div>";
				out[count] += "</div>";
				out[count] += "<input name='hashtags' type='hidden' value='"+tags[count]+"'>";
			}
			div.innerHTML = out[count];
			div.id = count;

			// delete_box에 삭제할 fieldid 정보 건네기
			var deleteBox = div.getElementsByClassName('deleteBox')[0];
			// target이라는 속성에 삭제할 div id 저장
			deleteBox.setAttribute('target', div.id);

			document.getElementById('HashTagList').appendChild(div);
			count++;
			// ARRAY 에 값 추가

			if (count > 4) {
				document.getElementById('hashTagBt').setAttribute('disabled',
						true);
			}
		}

		function removeTag(obj) {

			var target = obj.parentNode.getAttribute('target');

			var field = document.getElementById(target);

			document.getElementById('HashTagList').removeChild(field);

			count--;

			if (count < 5) {
				document.getElementById('hashTagBt')
						.removeAttribute('disabled');
			}

		}

		//해시태그 호출
		var hashTagList = new Array();
		<c:forEach items="${ask.askHashTags}" var="tag">

		hashTagList.push("${tag}");
		</c:forEach>

		for (var i = 0; i < hashTagList.length; i++) {
			console.log(hashTagList[i]);
			document.getElementById('tag').value = hashTagList[i];
			addTag();
		}
	</script>

</body>
</html>
