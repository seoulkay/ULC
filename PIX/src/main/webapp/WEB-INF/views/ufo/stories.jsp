<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>${ufo.title }</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="https://www.ufo79.com/image/favicon.ico">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head>

<body class="stories-page" data-spy="scroll" data-target="#page-nav">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->

	<section class="heading-section section section-on-bg">
		<div class="hero-wrapper">
			<div class="hero-holder"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
			<h2 class="headline">서베이</h2>
			<div class="intro">나눌수록 즐거운 축제, 참가한 분들의 솔직하고 재미있는 익명의 서베이 결과를 확인하세요!</div>
			<div class="actions">
				<a class="scrollto" href="#story-block-1">서베이 문항 보기</a> <a
					class="scrollto" href="#story-block-1"><img
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg"
					alt=""></a>
			</div>
			<!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="page-nav nav list-inline">
					<li><a class="scrollto" href="#story-block-1">문항 1</a></li>
					<li><a class="scrollto" href="#story-block-2">문항 2</a></li>
					<li><a class="scrollto" href="#story-block-3">문항 3</a></li>
					<li><a class="scrollto" href="#story-block-4">문항 4</a></li>
					<li><a class="scrollto" href="#story-block-5">문항 5</a></li>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

	<div class="stories container">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
		<div id="story-block-${statusEle.count }" class="story-block story-block-${ele.question }">

			<div class="story-item">
				<div class="row">
					<div class="figure-holder col-sm-12 col-sm-6 col-md-7">
						<div class="inner">
<!-- 						우선 단오제용 -->
<!-- 							<img class="img-responsive" -->
<%-- 								src="${pageContext.request.contextPath}/resources/pix/img/${ele.ques_img }.png" --%>
<!-- 								alt=""> -->
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/stories/dano_survey_thumb0${statusEle.count }.jpg"
								alt="">
							<div class="figure-mask"></div>
						</div>
						<!--//inner-->
					</div>
					<!--//figure-holder-->
					<div class="content col-sm-12 col-sm-6 col-md-5">
						<div class="inner">
							<h3 class="question"><span class="question-number">문항 ${statusEle.count }.</span>${ele.question }</h3>
							<c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
								<div class="answer">${status.count}. ${var.q_option }<span class="percentage">${var.percent }%</span></div>
							</c:forEach>
							<!--//desc-->
						</div>
						<!--//inner-->
					</div>
					<!--//content-->
				</div>
				<!--//row-->
			</div>
			<!--//story-item-->

			<div class="quotes">
				<div class="row">
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[0].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과1위) ${ele.questionOptions[0].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">우리나라 단오의 특성</span><br>1. 풍년을 기원하는 파종제로서의 단오<br>2. 풍년을 기원하는 파종제로서의 단오<br>3. 풍년을 기원하는 파종제로서의 단오</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[1].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과2위) ${ele.questionOptions[1].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">강릉의 3대 명소</span><br>1. 빙상 베뉴가 모여있는 강릉 올림픽 파크<br>2. 경포호와 경포해변이 한눈에 보이는 경포대<br>3. 강릉의 자랑 오죽헌</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->

				</div>
				<!--//row-->
			</div>
			<!--//quotes-->
		</div>
		<!--//story-block-->
</c:forEach>
	</div>
	
	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->

	<!-- Video Modal -->
	<div class="modal modal-video" id="modal-video" tabindex="-1"
		role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 id="videoModalLabel" class="modal-title sr-only">Video
						Tour</h4>
				</div>
				<div class="modal-body">
					<div class="video-container">
						<iframe id="vimeo-video"
							src="//player.vimeo.com/video/28872840?color=ffffff&amp;wmode=transparent"
							width="720" height="405" frameborder="0" webkitallowfullscreen
							mozallowfullscreen allowfullscreen></iframe>
					</div>
					<!--//video-container-->
				</div>
				<!--//modal-body-->
			</div>
			<!--//modal-content-->
		</div>
		<!--//modal-dialog-->
	</div>
	<!--//modal-->

	<!-- Login Modal -->
	<div class="modal modal-auth modal-login" id="login-modal"
		tabindex="-1" role="dialog" aria-labelledby="loginModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 id="loginModalLabel" class="modal-title text-center">Log
						in to your account</h4>
				</div>
				<div class="modal-body">
					<div class="social-login text-center">
						<ul class="social-buttons list-unstyled">
							<li><a href="#" class="btn btn-social btn-google btn-block"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Log in with Google</span></a></li>
							<li><a href="#"
								class="btn btn-social btn-facebook btn-block"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">Log in with Facebook</span></a></li>
						</ul>
					</div>
					<div class="divider">
						<span class="or-text">OR</span>
					</div>
					<div class="login-form-container">
						<form class="login-form">
							<div class="form-group email">
								<i class="material-icons icon">&#xE0BE;</i> <label
									class="sr-only" for="login-email">Email</label> <input
									id="login-email" name="login-email" type="email"
									class="form-control login-email" placeholder="Email">
							</div>
							<!--//form-group-->
							<div class="form-group password">
								<i class="material-icons icon">&#xE897;</i> <label
									class="sr-only" for="login-password">Password</label> <input
									id="login-password" name="login-password" type="password"
									class="form-control login-password" placeholder="Password">
								<div class="extra">
									<div class="checkbox remember">
										<label> <input type="checkbox"> Remember me
										</label>
									</div>
									<!--//check-box-->
									<div class="forgotten-password">
										<a href="#" id="resetpass-link" data-toggle="modal"
											data-target="#resetpass-modal">Forgotten password?</a>
									</div>
								</div>
								<!--//extra-->
							</div>
							<!--//form-group-->
							<button type="submit" class="btn btn-cta btn-block btn-primary">Log
								in</button>
						</form>
					</div>
					<!--//login-form-container-->

					<div class="option-container">
						<div class="lead-text">Don't have an account?</div>
						<a class="signup-link btn btn-ghost-alt" id="signup-link" href="#">Sign
							Up</a>
					</div>
					<!--//option-container-->
				</div>
				<!--//modal-body-->

			</div>
			<!--//modal-content-->
		</div>
		<!--//modal-dialog-->
	</div>
	<!--//modal-->

	<!-- Signup Modal -->
	<div class="modal modal-auth modal-signup" id="signup-modal"
		tabindex="-1" role="dialog" aria-labelledby="signupModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 id="signupModalLabel" class="modal-title text-center">Sign
						up to start your 30 day free trial!</h4>
				</div>
				<div class="modal-body">
					<div class="social-login text-center">
						<ul class="social-buttons list-unstyled">
							<li><a href="#" class="btn btn-social btn-google btn-block"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li>
							<li><a href="#"
								class="btn btn-social btn-facebook btn-block"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">Sign up with Facebook</span></a></li>
						</ul>
					</div>
					<div class="divider">
						<span class="or-text">OR</span>
					</div>
					<div class="login-form-container">
						<form class="login-form">
							<div class="form-group full-name">
								<i class="material-icons icon">&#xE7FD;</i> <label
									class="sr-only" for="signup-fullname">Your Full Name</label> <input
									id="signup-fullname" name="signup-fullname" type="text"
									class="form-control signup-email" placeholder="Your Full Name">
							</div>
							<!--//form-group-->
							<div class="form-group email">
								<i class="material-icons icon">&#xE0BE;</i> <label
									class="sr-only" for="signup-email">Your Email</label> <input
									id="signup-email" name="signup-email" type="email"
									class="form-control signup-email" placeholder="Your Email">
							</div>
							<!--//form-group-->
							<div class="form-group password">
								<i class="material-icons icon">&#xE897;</i> <label
									class="sr-only" for="signup-password">Create a Password</label>
								<input id="signup-password" name="signup-password"
									type="password" class="form-control signup-password"
									placeholder="Create a Password">
							</div>
							<!--//form-group-->
							<div class="legal-note">By signing up, you agree to our
								terms of services and privacy policy.</div>
							<button type="submit" class="btn btn-block btn-primary btn-cta">Sign
								up</button>

						</form>
					</div>
					<!--//login-form-container-->
					<div class="option-container">
						<div class="lead-text">Already have an account?</div>
						<a class="login-link btn btn-ghost-alt" id="login-link" href="#">Log
							in</a>
					</div>
					<!--//option-container-->
				</div>
				<!--//modal-body-->
			</div>
			<!--//modal-content-->
		</div>
		<!--//modal-dialog-->
	</div>
	<!--//modal-->

	<!-- Reset Password Modal -->
	<div class="modal modal-auth modal-resetpass" id="resetpass-modal"
		tabindex="-1" role="dialog" aria-labelledby="resetpassModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 id="resetpassModalLabel" class="modal-title text-center">Forgot
						your password?</h4>
				</div>
				<div class="modal-body">
					<div class="resetpass-form-container">
						<p class="intro">We'll email you a link to a page where you
							can easily create a new password.</p>
						<form class="resetpass-form">
							<div class="form-group email">
								<label class="sr-only" for="reg-email">Your Email</label> <input
									id="reg-email" name="reg-email" type="email"
									class="form-control login-email" placeholder="Your Email">
							</div>
							<!--//form-group-->
							<button type="submit" class="btn btn-block btn-secondary btn-cta">Reset
								Password</button>
						</form>
					</div>
					<!--//login-form-container-->
					<div class="option-container">
						<div class="lead-text">
							I want to <a class="back-to-login-link" id="back-to-login-link"
								href="#">return to login</a>
						</div>
					</div>
					<!--//option-container-->
				</div>
				<!--//modal-body-->
			</div>
			<!--//modal-content-->
		</div>
		<!--//modal-dialog-->
	</div>
	<!--//modal-->

	<%-- <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->
	<div id="config-panel" class="config-panel hidden-xs hidden-sm">
		<div class="panel-inner">
			<a id="config-trigger" class="config-trigger config-panel-hide"
				href="#"><i class="fa fa-cog"></i></a>
			<h5 class="panel-title">Choose Colour</h5>
			<ul id="color-options" class="list-unstyled list-inline">
				<li class="theme-1 active"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css"
					href="#"></a></li>
				<li class="theme-2"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-2.css"
					href="#"></a></li>
				<li class="theme-3"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-3.css"
					href="#"></a></li>
				<li class="theme-4"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-4.css"
					href="#"></a></li>
				<li class="theme-5"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-5.css"
					href="#"></a></li>
				<li class="theme-6"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-6.css"
					href="#"></a></li>
			</ul>
			<a id="config-close" class="close" href="#"><i
				class="fa fa-times-circle"></i></a>
		</div>
		<!--//panel-inner-->
	</div>
	<!--//configure-panel--> --%>

	<!-- Javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>

	<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
	<script
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>

</body>
</html>

