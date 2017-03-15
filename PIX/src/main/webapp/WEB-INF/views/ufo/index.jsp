<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/flexslider.css">
	

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">

<style>
      #map {
        height: 30em;
      }
    </style>
</head>

<body data-spy="scroll" data-target="#page-nav" class="blog-page">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->

	<section class="heading-section section section-on-bg">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.main_image})"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
			<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
			<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
			<div class="actions">
                 <a class="scrollto-no-offset" href="#support-section"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="#support-section">${ufo.title }</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li><a class="scrollto" href="#signup-section">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}"><li><a class="scrollto" href="#qr-section">큐알코드랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}"><li><a class="scrollto" href="#info-section">안내</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'app')}"><li><a class="scrollto" href="#app-section">앱 다운로드</a></li></c:if>
					<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

<section id="support-section" class="support-section section text-center">
		<div class="team-figure">
		<div class="section-title">${ufo.event_short_description }</div><br>
		<div class="section-content" align="left" style="padding:10px;">${ufo.event_long_description }</div><br>
		</div>
		<br><br>
		<!--//feature-list-->
		<!--//team-figure-->
</section>
	
<section id="signup-section" class="signup-section section">
		<div class="section-inner">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->
			<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
				<h2 class="counter-desc">스탬프랠리 참여하기</h2>
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">스탬프랠리를 완성 후, ${ufo.title } 안내센터에서 선물과 교환하세요!</div>
						<!-- <button class="btn btn-primary" onClick="refreshGo()" style="background-color: GREEN; color: WHITE"><span class="btn-text">나의 위치 리프레쉬!</span></button><br> -->
<%-- 							<input onclick="refreshGo()" type="image" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/icon_F5.svg" style="width: 35px; height: 35px;"> --%>
						<div class="team-figure">
							<div id="map" style="height: 30em;"></div>
						</div><br><br>
						<ul class="social-buttons list-unstyled">
							<!-- <li><a href="#" class="btn btn-social btn-google"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li> -->
							<li><button class="btn btn-social btn-facebook" onClick="getUfo('go')"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">스탬프 찍기</span></button></li>
<!-- 							<li> -->
<!-- 								<button class="btn btn-social btn-facebook" onClick="alert('준비중입니다.')" style="background-color: YELLOW; color: BLACK"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">카카오톡 계정으로 이벤트 참여하기</span></button><br> -->
<!-- 							</li> -->
						</ul>
						<!--//social-buttons-->
						<div class="divider">
						</div>
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner" style="padding-top:45px; padding-left:15px; padding-right:15px; padding-bottom: 20px;">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										${ufo.ufo_go_desc}
									</div>
									<!--//inner-->
								</div>
								<!--//quote-item2-->			
							</div>
							<!--//row-->
						</div>
						<!--//quotes-->			
						
						<!--//divider-->
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->
				</c:if>
				<br><br><br>
<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
				<h2 class="counter-desc" id="qr-section">큐알코드랠리 참여하기</h2>
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">큐알 코드 랠리를 완성 후, ${ufo.title } 안내센터에서 선물과 교환하세요!</div>
						<div class="team-figure">
							<div class="subscribe-form form-inline" novalidate="novalidate">
				                <div class="form-group">
					                <img class="img-responsive" src="https://www.ufo79.com/image/qrUfo.png" style="margin-left: 0 auto; margin-right: 0 auto;">
				                	<br>
				                    <input type="password" id="qrNumber" class="form-control email-field" placeholder="코드를 넣어주세요" value="${gid}" name="qrNumber" required="" aria-required="true">
				                    <button class="btn btn-primary" onClick="qrRally();" style="margin:1em">큐알코드 인증</button>  
				                </div>                              
				            </div>
						</div>
						<br><br>
						<div class="divider">
						</div>
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner" style="padding-top:45px; padding-left:15px; padding-right:15px; padding-bottom: 20px;">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										<blockquote class="result">큐알코드랠리 참여방법</blockquote>
										<!--//blockquote-->
										<div class="tip">
										1. 큐알 코드를 읽어주세요.<br>
										2. 페이스북 로그인하기!<br>
										3. 곳곳에 숨어있는 큐알코드 찾기!<br>
										4. 큐알코드 인증 버튼 누르기!<br>
										5. 큐알 코드 랠리 완성 후, 선물 받기!
										</div>
										<!--//source-->
									</div>
									<!--//inner-->
								</div>
								<!--//quote-item2-->			
							</div>
							<!--//row-->
						</div>
						<!--//quotes-->			
						
						<!--//divider-->
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->
</c:if>
			</div>
			<!--//container-->
		</div>
		<!--//section-inner-->
	</section>
<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}">
<section id="info-section">
	<!--//signup-section-->
	<div class="feature-blocks container">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row">
				<!-- <div class="feature-content col-md-4 col-sm-6 col-xs-12"> -->
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<h3 class="feature-title">${ufo.info_title }</h3>
					<div class="feature-desc">
						<p>${ufo.info_info_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
<!-- 				<div class="feature-figure col-md-8 col-sm-6 col-xs-12"> -->
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<div class="figure-holder" align="center">
					<c:if test="${ufo.info_info_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_info_pic}"
							alt="">
					</c:if>
					<c:if test="${ufo.info_info_pic eq null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/white.png"
							alt="">
					</c:if>
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
					class="feature-content col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">${ufo.history_title }</h3>
					<div class="feature-desc">
						<p>${ufo.info_hist_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder" align="center">
						<c:if test="${ufo.info_hist_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_hist_pic}"
							alt="">
						</c:if>
						<c:if test="${ufo.info_hist_pic eq null}">
							<img class="img-responsive"
							src="https://www.ufo79.com/image/white.png"
							alt="">
						</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		</div>
	<div class="feature-blocks container">
		<!--//feature-block-2-->
		<div id="feature-block-3" class="feature-block feature-block-3">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">${ufo.program_title }</h3>
					<div class="feature-desc">
						<p>${ufo.event_date }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<p>${ufo.info_program_text }</p>
						<c:if test="${ufo.info_program_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_program_pic}"
							alt="">
						</c:if>
						<c:if test="${ufo.info_program_pic eq null}">
							<img class="img-responsive"
							src="https://www.ufo79.com/image/white.png"
							alt="">
						</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<div id="feature-block-4" class="feature-block feature-block-3">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">${ufo.location_title}</h3>
					<div class="feature-desc">
						<p>${ufo.info_location_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<c:if test="${ufo.info_location_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_location_pic}"
							alt="">
						</c:if>
						<c:if test="${ufo.info_location_pic eq null}">
							<img class="img-responsive"
							src="https://www.ufo79.com/image/white.png"
							alt="">
						</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-3-->
	</div>
<!-- 	<section id="features-section" class="features-section section"> -->
</section>
</c:if>
<c:if test="${fn:contains(sessionScope.eventMenu, 'newsletter')}">
	<section id="app-section" class="apps-section section text-center">
		<div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">${ufo.title } 뉴스레터 구독하기</h3>
            <div class="block-intro">${ufo.title }의 소식을 보내드립니다.</div>
            <div class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail"  type="email" class="form-control email-field" placeholder="이메일 주소를 입력하세요." name="email" required="" aria-required="true">
                    <button class="btn btn-primary" onClick="sendNewsLetterEmail();">구독하기</button>  
                </div>                              
            </div>
        </div><!--//container-->
    </div><!--//blog-signup-block-->
	</section>
	<!--//apps-section-->
</c:if>
<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}">
<!-- 수정이 필요하다 -->
<section id="survey-section"
		class="support-section section text-center">
<h2 class="section-title">${ufo.title } 서베이</h2>
<div class="stories container">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
		<div id="story-block-${statusEle.count }" class="story-block story-block-${ele.question }">

			<div class="story-item">
				<div class="row">
					<div class="figure-holder col-sm-12 col-sm-6 col-md-7">
						<div class="inner">
<!-- 						우선 단오제용 -->
<!-- 							<img class="img-responsive" -->
								src="${pageContext.request.contextPath}/resources/pix/img/${ele.ques_img }.png"
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
</section>
</c:if>
<c:if test="${fn:contains(sessionScope.eventMenu, 'app')}">
<section id="app-section" class="apps-section section text-center">
		<h2 class="section-title">${ufo.title } 앱 다운로드</h2>
		<div class="container">
			<ul class="apps-list list-inline">
				<li><a class="btn btn-download-app btn-apple-download" href="#"><i
						class="fa fa-apple" aria-hidden="true"></i> <span class="btn-text"><span
							class="intro-text">Download on the</span><span class="main-text">App
								Store</span></span></a></li>
				<li><a class="btn btn-download-app btn-andriod-download"
					href="https://www.ufo79.com/image/${ufo.apk_name }"><i class="fa fa-android" aria-hidden="true"></i> <span
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
</c:if>
	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->

</body>
</html>