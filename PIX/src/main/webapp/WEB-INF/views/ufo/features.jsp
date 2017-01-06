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
<title>2017 강릉단오제</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="favicon.ico">
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

<body class="features-page" data-spy="scroll" data-target="#page-nav">
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
			<h2 class="headline">축제 정보</h2>
			<div class="intro">2017 강릉단오제 날짜를 넣어주세요.</div>
			<div class="actions">
                 <a class="scrollto-no-offset" href="#page-nav">View featured posts</a>
                 <a class="scrollto-no-offset" href="#page-nav"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="page-nav nav list-inline">
					<li><a class="scrollto" href="#feature-block-1">축제 정보</a></li>
					<li><a class="scrollto" href="#feature-block-2">축제 역사</a></li>
					<li><a class="scrollto" href="#feature-block-3">프로그램 일정</a></li>
					<!-- <li><a class="scrollto" href="#feature-block-4">Feature Four</a></li> -->
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

	<div class="feature-blocks container">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">단오를 중심으로 8일간의 축제</h3>
					<div class="feature-desc">
						<p>&nbsp;강릉에서 단오는 큰 명절이다.</p>
						<p>&nbsp;단오를 중심으로 8일간의 축제, 그 속에서 펼쳐지는 신과 인간의 소통은 자연과 인간, 인간과
							인간의 상생을 위한 휴먼드라마이다.</p>
						<!-- <p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
							commodo ligula eget dolor. Lorem ipsum dolor sit amet, <a
								href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1"
								target="_blank">Screenshot: Admin AppKit Theme</a> consectetuer
							adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum
							dolor sit amet, consectetuer adipiscing elit. Aenean commodo
							ligula eget dolor.
						</p> -->
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/feature-1.png"
							alt="">
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-1-->
		<div id="feature-block-2" class="feature-block feature-block-2">
			<div class="row">
				<div
					class="feature-content col-md-4 col-sm-6 col-xs-12 col-md-push-8 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">강릉 단오제의 역사</h3>
					<div class="feature-desc">
						<p>&nbsp;문화적 침탈을 일삼았던 일제강점기에도 단오제는 열렸고, 중요한 기록을 남겼다. 한국전쟁 중에도
							단오제는 맥을 이어왔다.</p>
						<p>&nbsp;노인들과 무녀들은 시기적으로 어려울 때는 압박의 눈을 피해 중앙시장이나 남대천 변, 성남동
							한구석에서 소규모로 나마 빼놓지 않고 단오제를 치뤘다고 증언한다.</p>
						<p>&nbsp;이처럼 강릉단오제는 비교적 온전히 전승되고 있거나 고증을 통하여 원형 복원이 가능할 만큼 면면히
							이어지고 있었다는 것이다.</p>
						<p>&nbsp;이런 덕분에 강릉단오제는 1967년 중요무형문화제 13호로 등록되면서 우리민족 전통 민속축제의
							원형성을 간직한 단오축제로서 고유의 가치를 획득하였다.</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-8 col-sm-6 col-xs-12 col-md-pull-4 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/feature-2.png"
							alt="">
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-2-->
		<div id="feature-block-3" class="feature-block feature-block-3">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">프로그램 일정</h3>
					<div class="feature-desc">
						<p>2016.6.5 (일) ~ 2016.6.12 (일)</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<table class="table table-striped table-bordered">
							<tr>
								<td><strong>6월 5일 (일)</strong></td>
							</tr>
							<tr>
								<td>&nbsp;21:00 불꽃놀이 - 단오섬</td>
							</tr>
							<tr>
								<td><strong>6월 6일 (월)</strong></td>
							</tr>
							<tr>
								<td>&nbsp;10:00 묵념</td>
							</tr>
							<tr>
								<td><strong>6월 7일 (화)</strong></td>
							</tr>
							<tr>
								<td>
									<p>&nbsp;16:30 프린지마당 - 대도호부관아</p>
									<p>&nbsp;18:00 영신제 - 홍제동 여성황사</p>
									<p>&nbsp;19:00 영신행차 - 홍제동 여성황사</p>
									<p>&nbsp;19:00 신통대길 길놀이 - 대도호부관아</p>
									<p>&nbsp;22:00 불꽃놀이 - 단오섬</p>
							</tr>
						</table>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-3-->
		<%-- <div id="feature-block-4" class="feature-block feature-block-4">
			<div class="row">
				<div
					class="feature-content col-md-4 col-sm-6 col-xs-12 col-md-push-8 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">Feature Four Heading</h3>
					<div class="feature-desc">
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit.</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
							commodo ligula eget dolor. Lorem ipsum dolor sit amet, <a
								href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1"
								target="_blank">Screenshot: Admin AppKit Theme</a> consectetuer
							adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum
							dolor sit amet, consectetuer adipiscing elit. Aenean commodo
							ligula eget dolor.
						</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-8 col-sm-6 col-xs-12 col-md-pull-4 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/feature-4.png"
							alt="">
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-4--> --%>

	</div>
	<!--//feature-blocks-->



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
					<div
						class="video-container embed-responsive embed-responsive-16by9">
						<iframe id="vimeo-video"
							src="//player.vimeo.com/video/140875675?color=ffffff&amp;wmode=transparent"
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

	<!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->
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
	<!--//configure-panel-->

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

	<!-- Vimeo video API -->
	<script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/vimeo.js"></script>

	<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
	<script
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>

</body>
</html>

