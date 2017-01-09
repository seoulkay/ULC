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
					<li><a class="scrollto" href="#signup-section">이벤트 참여하기</a></li>
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
		<div class="section-intro">지나간 축제가 아닌 지나온 축제!<br>강릉 단오제에 대한 간단한 메인 소개, 또는 메이킹 필름 등 관련 내용</div>
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
				<div class="features-content-wrapper col-xs-12 col-sm-6 com-md-6">
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
			<a href="${pageContext.request.contextPath}/ufo/features
" class="btn btn-secondary">축제 정보 더보기</a>
		</div>

	</section>
	<!--//features-section-->

	<section id="customers-section" class="customers-section section">
		<h2 class="section-title">서베이 결과보기</h2>
		<div class="section-intro">나눌수록 즐거운 축제, 참가한 분들의 솔직하고 재미있는 서베이 결과를 확인하세요!</div>
		<div class="container">
			<div class="stories-wrapper row">
				<div class="item item-1 col-xs-12 col-md-6">
					<div class="item-inner text-center">
						<div class="item-mask"></div>
						<div class="item-content">
							<h3 class="content-title">강릉단오제를 방문한 이유는?</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>단오제의 의미를 곱씹고 역사적 발자취를 따라서</p>
								<p>강릉에 놀러왔다가 우연히</p>
								<p>단오제 행사에 참가자로 참여하게 되어서</p>
								<p>강릉에 살아서</p>
							</div>
							<!-- <a class="item-link" href="#"></a> -->
							<a class="item-link" href="http://www.ufo79.com/PIX/ufo/stories#story-block-1"></a>
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
							<h3 class="content-title">강릉단오제를 방문한 이유는?</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>단오제의 의미를 곱씹고 역사적 발자취를 따라서</p>
								<p>강릉에 놀러왔다가 우연히</p>
								<p>단오제 행사에 참가자로 참여하게 되어서</p>
								<p>강릉에 살아서</p>
							</div>
							<!-- <a class="item-link" href="#"></a> -->
							<a class="item-link" href="http://www.ufo79.com/PIX/ufo/stories#story-block-1"></a>
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
							<h3 class="content-title">강릉단오제를 방문한 이유는?</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>단오제의 의미를 곱씹고 역사적 발자취를 따라서</p>
								<p>강릉에 놀러왔다가 우연히</p>
								<p>단오제 행사에 참가자로 참여하게 되어서</p>
								<p>강릉에 살아서</p>
							</div>
							<!-- <a class="item-link" href="#"></a> -->
							<a class="item-link" href="http://www.ufo79.com/PIX/ufo/stories#story-block-1"></a>
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
							<h3 class="content-title">강릉단오제를 방문한 이유는?</h3>
							<div class="content-desc">
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>단오제의 의미를 곱씹고 역사적 발자취를 따라서</p>
								<p>강릉에 놀러왔다가 우연히</p>
								<p>단오제 행사에 참가자로 참여하게 되어서</p>
								<p>강릉에 살아서</p>
							</div>
							<!-- <a class="item-link" href="#"></a> -->
							<a class="item-link" href="http://www.ufo79.com/PIX/ufo/stories#story-block-1"></a>
						</div>
						<!--//item-content-->
					</div>
					<!--//item-inner-->
				</div>
				<!--//item-->
			</div>
			<!--//row-->
			<div class="action-wrapper text-center">
				<a class="btn btn-secondary" href="${pageContext.request.contextPath}/ufo/stories
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

				<h2 class="counter-desc">강릉단오제 서베이 이벤트 참여하기</h2>

				<div class="form-wrapper">
					<!-- <h2 class="form-title">설문조사에 참여하시고 선물을 받아가세요!</h2> -->
					<div class="form-box">
						<!-- <h3 class="form-heading">설문조사에 참여하시고 선물을 받아가세요!</h3> -->
						<div class="form-desc">설문조사에 참여하시고 선물을 받아가세요!</div>
						<ul class="social-buttons list-unstyled">
							<!-- <li><a href="#" class="btn btn-social btn-google"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li> -->
							<li><a href="#" class="btn btn-social btn-facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">페이스북 계정으로 이벤트 참여하기</span></a></li>
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
										name="firstname" placeholder="이름">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="lastname" class="sr-only">Last Name</label> <input
										type="text" class="form-control" id="lastname" name="lastname"
										placeholder="성">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="firstname" class="sr-only">Email Address</label> <input
										type="email" class="form-control" id="emailaddress"
										name="emailaddress" placeholder="이메일주소">
								</div>
								<!--//form-group-->
								<div class="form-group col-xs-12 col-sm-6">
									<label for="password" class="sr-only">Password</label> <input
										type="password" class="form-control" id="password"
										name="password" placeholder="비밀번호">
								</div>
								<!--//form-group-->

							</div>
							<!--//row-->
							<div class="legal-note">By signing up, you agree to our
								terms of services and privacy policy.</div>

							<button type="submit" class="btn btn-primary btn-cta">회원가입</button>
							<div class="alter-login">이미 계정이 있으신가요?<a class="login-link" href="#"
									data-toggle="modal" data-target="#login-modal">로그인하기</a>
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
		<h2 class="section-title">행사장 찾아오는 길</h2>
		<div class="section-intro">천년의 기다림, 세계인의 어울림! 인류무형문화유산 강릉단오제에 여러분을 초대합니다.</div>
		<!-- <a class="btn btn-secondary" href="support
">행사장 및 주차안내</a> -->
		<div class="team-figure">
			<img class="img-responsive support-team"
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/index_dano_home_map.JPG"
				alt="">
		</div>
		<div class="section-content-title">
			<ul class="section-list list-unstyled">
				<li><img class="tick-icon"
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
					alt=""> 네비게이션 검색</li>
					<li><div class="section-content">명칭 검색 : 네비게이션에 [단오문화관]이나 [단오장길]을 검색</div></li>
					<li><div class="section-content">주소 검색 : 강원도 강릉시 노암동 722-2번지</div></li>
					<br>
				<li><img class="tick-icon"
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
					alt=""> 버스터미널, 강릉역에서 택시를 타고 강릉단오장으로 오실 분!</li>
					<li><div class="section-content">택시 요금 : 강릉역 약 3,000원, 버스터미널 약 4,000원</div></li>
					<br>
				<li><img class="tick-icon"
					src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg"
 					alt=""> 버스터미널에서 버스를 타고 강릉단오장으로 오실 분!</li>
					<li>
					<table class="table table-striped table-bordered">
							<tr>
								<th>출발지</th>
								<th>오시는 방법</th>
							</tr>
							<tr>
								<td>버스터미널</td>
								<td>버스터미널에서 길을 건너지 않은 쪽 정류장에서 버스를 기다리세요.<br>
								버스는 교보생명 혹은 신영극장이라고 써 있는 버스 어떤 것을 골라 타셔도 됩니다.</td>
							</tr>						
						</table>
						</li>
			</ul>
		</div>
		<!--//feature-list-->
		<!--//team-figure-->
	</section>
	<!--//support-section-->

	<section class="apps-section section text-center">
		<h2 class="section-title">강릉단오제 앱 다운로드</h2>
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
				<!-- <li><a class="btn btn-download-app btn-windows-download"
					href="#"><i class="fa fa-windows" aria-hidden="true"></i> <span
						class="btn-text"><span class="intro-text">Download
								from</span><span class="main-text">Windows Phone Store</span></span></a></li> -->
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

	
</body>
</html>

