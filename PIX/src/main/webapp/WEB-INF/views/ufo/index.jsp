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
<title>2017 단오제</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/flexslider.css">

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head>

<body data-spy="scroll" data-target="#page-nav">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->

	<section class="promo-section section section-on-bg">
		<div class="hero-slider-wrapper">
			<div class="flexslider hero-slider">
				<ul class="slides">
					<li class="slide slide-1"></li>
					<!-- <li class="slide slide-2"></li>
					<li class="slide slide-3"></li> -->
				</ul>
			</div>
			<div class="hero-slider-mask"></div>
		</div>
		<%-- <!--//hero-slider-wrapper-->
		<div class="container promo-content">
			<h2 class="headline">
				The Perfect Design Framework <br>for Startup Businesses
			</h2>
			<p class="tagline">Good design is good business, try our demo
				today!</p>
			<div class="actions">
				<a class="btn btn-cta btn-primary" href="#" data-toggle="modal"
					data-target="#signup-modal">Start Free Trial</a> <br
					class="visible-xs-block"> <a href="#" class="play-trigger"
					data-toggle="modal" data-target="#modal-video"><img
					class="play-icon"
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/play-icon.svg"
					alt="">See how it works</a>
			</div>
		</div> --%>
		<!--//container-->
	</section>
	<!--//promo-section-->

	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="#overview-section">축제영상</a></li>
					<li><a class="scrollto" href="#features-section">축제 주요정보</a></li>
					<li><a class="scrollto" href="#customers-section">서베이 결과보기</a></li>
					<li><a class="scrollto" href="#signup-section">Get Started</a></li>
					<li><a class="scrollto" href="#support-section">찾아오시는 길</a></li>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

	<section id="overview-section" class="overview-section section">
		<h2 class="section-title">축제영상 : 단오제 메이킹 필름</h2>
		<div class="section-intro">지나간 축제가 아닌 자나온 축제!<br>강릉 단오제에 대한 간단한 메인 소개, 또는 메이킹 필름 등 관련 내용</div>
		<!--//section-intro-->
		<div class="figures-wrapper">
			<div class="container text-center">
				<figure class="macbook-screen">
					<img class="img-responsive"
						src="${pageContext.request.contextPath}/resources/ufo/assets/images/index_dano_home_video.jpg"
						alt="">
				</figure>
				<%-- <figure class="ipad-screen">
					<img class="img-responsive"
						src="${pageContext.request.contextPath}/resources/ufo/assets/images/ipad-screen.png"
						alt="">
				</figure>
				<figure class="iphone-screen">
					<img class="img-responsive"
						src="${pageContext.request.contextPath}/resources/ufo/assets/images/iphone-screen.png"
						alt="">
				</figure> --%>
				<a href="#" type="button" class="play-icon" data-toggle="modal"
					data-target="#modal-video"><img
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/play-icon-md.svg"
					alt=""></a>
			</div>
			<!--//container-->
		</div>
		<%-- <!--//figures-wrapper-->
		<div class="benefits-wrapper">
			<div class="container text-center">
				<div class="row">
					<div class="item col-xs-12 col-sm-4">
						<div class="item-inner">
							<img class="item-icon"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/clock-white.svg"
								alt="">
							<h3 class="item-title">10X Faster Development</h3>
							<div class="item-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa. Cum sociis natoque penatibus et magnis dis
								parturient montes, nascetur ridiculus mus.</div>
						</div>
						<!--//item-inner-->
					</div>
					<!--//item-->
					<div class="item col-xs-12 col-sm-4">
						<div class="item-inner">
							<img class="item-icon"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/presenter-white.svg"
								alt="">
							<h3 class="item-title">Increase Productivity</h3>
							<div class="item-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa. Cum sociis natoque penatibus et magnis dis
								parturient montes, nascetur ridiculus mus.</div>
						</div>
						<!--//item-inner-->
					</div>
					<!--//item-->
					<div class="item col-xs-12 col-sm-4">
						<div class="item-inner">
							<img class="item-icon"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/chat-white.svg"
								alt="">
							<h3 class="item-title">Better Collabration</h3>
							<div class="item-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa. Cum sociis natoque penatibus et magnis dis
								parturient montes, nascetur ridiculus mus.</div>
						</div>
						<!--//item-inner-->
					</div>
					<!--//item-->
				</div>
				<!--//row-->
			</div>
			<!--//container-->
		</div> --%>
		<!--//benefits-->
		<div class="press-wrapper">
			<div class="container">
				<div class="logos row">
					<div class="logo col-xs-6 col-sm-3">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-1.svg"
							alt="">
					</div>
					<div class="logo col-xs-6 col-sm-3">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-2.svg"
							alt="">
					</div>
					<div class="logo col-xs-6 col-sm-3">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-3.svg"
							alt="">
					</div>
					<div class="logo col-xs-6 col-sm-3">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-4.svg"
							alt="">
					</div>
				</div>
			</div>
			<!--//container-->
		</div>
		<!--//press-wrapper-->
	</section>
	<!--//overview-section-->

	<section id="features-section" class="features-section section">
		<h2 class="section-title">축제 주요정보</h2>
		<div class="container">
			<div class="row">
				<div class="features-content-wrapper col-xs-12 col-sm-7 com-md-7">
					<div class="intro">강릉에서 단오는 큰 명절이다. 단오를 중심으로 8일 간의 축제, 그 속에서 펼쳐지는 신과 인간의 소통은 자연과 인간, 인간과 인간의 상생을 위한 휴먼드라마이다.</div>
					<!--//intro-->
					<ul class="feature-list list-unstyled">
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 5 일요일: 수리마당 "단오맞이 실버가요제"</li>
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 6 월요일: 단오문화제 "2016 주민자체한마당"</li>
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 7 화요일: 수리마당</li>
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 8 수요일: 단오문화제</li>
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 9 목요일: 수리마당</li>
						<li><img class="tick-icon"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
							alt=""> 2016. 6. 10 금요일: 단오문화제</li>
					</ul>
					<!--//feature-list-->

					<div id="reviews-carousel" class="reviews-carousel carousel slide"
						data-ride="carousel">
						<!--//wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<blockquote class="review center-block">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>강릉단오제를 준비하면서 힘들긴 했지만 정말 의미있는 하루하루였습니다.<br>6월 5일부터 열리는 강릉단오제!<br>많이 참석해서 즐거운 추억 많이 만들어가세요~</p>
								</blockquote>
								<!--//review-->
								<div class="source">
									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<!--//rating-->
									<img class="profile"
										src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-1.png"
										alt="" />
									<div class="name">김칠구 조직위원장</div>
								</div>
								<!--//source-->
							</div>
							<!--//item-->

							<div class="item">
								<blockquote class="review center-block">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>A great way to Lorem ipsum dolor sit amet, consectetuer
										adipiscing elit. Aenean commodo ligula eget dolor. Aenean
										massa. Cum sociis natoque penatibus et magnis dis parturient
										montes, nascetur ridiculus mus.</p>
								</blockquote>
								<!--//review-->
								<div class="source">
									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<!--//rating-->
									<img class="profile"
										src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-2.png"
										alt="" />
									<div class="name">Rob Kim, Mashable</div>
								</div>
								<!--//source-->
							</div>
							<!--//item-->

							<div class="item">
								<blockquote class="review center-block">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>A great way to Lorem ipsum dolor sit amet, consectetuer
										adipiscing elit. Aenean commodo ligula eget dolor. Aenean
										massa. Cum sociis natoque penatibus et magnis dis parturient
										montes, nascetur ridiculus mus.</p>
								</blockquote>
								<!--//review-->
								<div class="source">
									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<!--//rating-->
									<img class="profile"
										src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-3.png"
										alt="" />
									<div class="name">Kevin Howell, Wired</div>
								</div>
								<!--//source-->
							</div>
							<!--//item-->

						</div>
						<!--//carousel-inner-->

						<!--//Indicators-->
						<ol class="carousel-indicators">
							<li data-target="#reviews-carousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#reviews-carousel" data-slide-to="1"></li>
							<li data-target="#reviews-carousel" data-slide-to="2"></li>
						</ol>

					</div>
					<!--//reviews-carousel-->
				</div>
				<!--//features-content-wrapper-->
			</div>
			<!--//row-->
		</div>
		<!--//container-->

		<div class="features-figure-wrapper">
			<img class="img-responsive"
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/index_dano_home_feature.jpg"
				alt="">
		</div>
		<!--//features-figure-wrapper-->

		<div class="action-wrapper text-center">
			<a href="${pageContext.request.contextPath}/features
" class="btn btn-secondary">축제정보 더보기</a>
		</div>

	</section>
	<!--//features-section-->

	<section id="customers-section" class="customers-section section">
		<h2 class="section-title">서베이 결과보기</h2>
		<div class="section-intro">나눌수록 즐거운 축제, 참간한 분들의 솔직하고 재미있는 익명의 서베이 결과를 확인하세요!</div>
		<div class="container">
			<div class="stories-wrapper row">
				<div class="item item-1 col-xs-12 col-md-6">
					<div class="item-inner text-center">
						<div class="item-mask"></div>
						<div class="item-content">
							<h3 class="content-title">#친구와 함께즐기기<br>#농악축제</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit
									aenean commodo ligula eget dolor aenean massa. Cum sociis
									natoque penatibus.</p>
							</div>
							<a class="item-link" href="#"></a>
						</div>
						<!--//item-content-->
					</div>
					<!--//item-inner-->
				</div>
				<!--//item-->
				<div class="item item-2 col-xs-12 col-md-6">
					<div class="item-inner text-center">
						<div class="item-mask"></div>
						<div class="item-content">
							<h3 class="content-title">
								#가면이 살짝 무서워요<br>#관노가면극
							</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit
									aenean commodo ligula eget dolor aenean massa. Cum sociis
									natoque penatibus.</p>
							</div>
							<a class="item-link" href="#"></a>
						</div>
						<!--//item-content-->
					</div>
					<!--//item-inner-->
				</div>
				<!--//item-->
				<div class="item item-3 col-xs-12 col-md-6">
					<div class="item-inner text-center">
						<div class="item-mask"></div>
						<div class="item-content">
							<h3 class="content-title">
								#폭죽<br>#마지막까지 너무 즐거웠습니다.
							</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit
									aenean commodo ligula eget dolor aenean massa. Cum sociis
									natoque penatibus.</p>
							</div>
							<a class="item-link" href="#"></a>
						</div>
						<!--//item-content-->
					</div>
					<!--//item-inner-->
				</div>
				<!--//item-->
				<div class="item item-4 col-xs-12 col-md-6">
					<div class="item-inner text-center">
						<div class="item-mask"></div>
						<div class="item-content">
							<h3 class="content-title">
								#강릉단오제<br>#등이 너무 예뻐요
							</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit
									aenean commodo ligula eget dolor aenean massa. Cum sociis
									natoque penatibus.</p>
							</div>
							<a class="item-link" href="#"></a>
						</div>
						<!--//item-content-->
					</div>
					<!--//item-inner-->
				</div>
				<!--//item-->
			</div>
			<!--//row-->
			<div class="action-wrapper text-center">
				<a class="btn btn-secondary" href="${pageContext.request.contextPath}/stories
">서베이 결과 더보기</a>
			</div>
		</div>
		<!--//container-->
	</section>
	<!--//customers-section-->

	<section id="signup-section" class="signup-section section">
		<div class="section-inner">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->

				<h2 class="counter-desc">Customers Worldwide</h2>

				<div class="form-wrapper">
					<h2 class="form-title">Start Your Free Trial Today</h2>
					<div class="form-box">
						<h3 class="form-heading">30 Day Free Trial</h3>
						<div class="form-desc">Sign up now, it only takes 3 minutes</div>
						<ul class="social-buttons list-unstyled">
							<li><a href="#" class="btn btn-social btn-google"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li>
							<li><a href="#" class="btn btn-social btn-facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">Sign up with Facebook</span></a></li>
						</ul>
						<!--//social-buttons-->
						<div class="divider">
							<span class="or-text">OR</span>
						</div>
						<!--//divider-->
						<form class="signup-form">
							<div class="row">
								<div class="form-group col-xs-12 col-sm-6">
									<label for="firstname" class="sr-only">First Name</label> <input
										type="text" class="form-control" id="firstname"
										name="firstname" placeholder="First Name">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="lastname" class="sr-only">Last Name</label> <input
										type="text" class="form-control" id="lastname" name="lastname"
										placeholder="Last Name">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="firstname" class="sr-only">Email Address</label> <input
										type="email" class="form-control" id="emailaddress"
										name="emailaddress" placeholder="Email Address">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="password" class="sr-only">Password</label> <input
										type="password" class="form-control" id="password"
										name="password" placeholder="Create a Password">
								</div>
								<!--//form-group-->

							</div>
							<!--//row-->
							<div class="legal-note">By signing up, you agree to our
								terms of services and privacy policy.</div>

							<button type="submit" class="btn btn-primary btn-cta">Start
								Your Free Trial</button>
							<div class="alter-login">
								Already have an account? <a class="login-link" href="#"
									data-toggle="modal" data-target="#login-modal">Log in</a>
							</div>
						</form>
						<!--//form-->
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->

			</div>
			<!--//container-->
		</div>
		<!--//section-inner-->
	</section>
	<!--//signup-section-->

	<section id="support-section"
		class="support-section section text-center">
		<h2 class="section-title">찾아오시는 길</h2>
		<div class="section-intro">Lorem ipsum dolor sit amet,
			consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
			Aenean massa. Cum sociis natoque penatibus et magnis dis parturient
			montes</div>
		<a class="btn btn-secondary" href="support
">행사장 및 주차안내</a>
		<div class="team-figure">
			<img class="img-responsive support-team"
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/index_dano_home_map.JPG"
				alt="">
		</div>
		<!--//team-figure-->
	</section>
	<!--//support-section-->

	<section class="apps-section section text-center">
		<h2 class="section-title">단오제 앱 다운로드</h2>
		<div class="container">
			<ul class="apps-list list-inline">
				<li><a class="btn btn-download-app btn-apple-download" href="#"><i
						class="fa fa-apple" aria-hidden="true"></i> <span class="btn-text"><span
							class="intro-text">Download on the</span><span class="main-text">App
								Store</span></span></a></li>
				<li><a class="btn btn-download-app btn-andriod-download"
					href="#"><i class="fa fa-android" aria-hidden="true"></i> <span
						class="btn-text"><span class="intro-text">Get it on</span><span
							class="main-text">Google Play</span></span></a></li>
				<li><a class="btn btn-download-app btn-windows-download"
					href="#"><i class="fa fa-windows" aria-hidden="true"></i> <span
						class="btn-text"><span class="intro-text">Download
								from</span><span class="main-text">Windows Phone Store</span></span></a></li>
			</ul>
			<!--//apps-list-->
		</div>
		<!--//container-->
	</section>
	<!--//apps-section-->

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

	<%-- <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->
	<div id="config-panel" class="config-panel hidden-xs hidden-sm">
		<div class="panel-inner">
			<a id="config-trigger" class="config-trigger config-panel-hide"
				href="#"><i class="fa fa-cog"></i></a>
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
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>

	<!--//Page Specific JS -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/home.js"></script>

	<!-- Vimeo video API -->
	<script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/vimeo.js"></script>

	<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
	<script
		src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>

</body>
</html>

