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
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/flexslider.css">

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">


</head>

<body data-spy="scroll" data-target="#page-nav" class="blog-page">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->

	<section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.main_image})"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
		<c:choose>
			<c:when test="${!empty ufo.q1_img}">
		   			<img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:30em; margin: 0 auto;" data-dismiss="modal">
			</c:when>
			<c:otherwise>
			<div style="height:3em"></div>
					<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
					<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
							<div class="actions">
                 			<a class="scrollto" href="#page-nav-wrapper"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            				</div>
			</c:otherwise>
		</c:choose>			

		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder">
		<div class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline" >
					<li class="active" style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">홈</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">서베이</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li></c:if>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
<section id="page-nav-wrapper" class="support-section section text-center" style="padding:1em;">
		<div class="team-figure" >
		<div class="row" style="padding: 0.5em">
			<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #16adde">승리자들</span></h3>
		</div>
		<div class="row">
			<c:choose>
				<c:when test="${not empty winner }">
					<c:forEach items="${winner}" var="ele" varStatus="stat">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<h4 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #ed45a4">${stat.count}. ${ele.first_name } ${ele.last_name }</span></h4>
						<img alt="" src="https://www.ufo79.com/image/${ele.ufo_image }" class="img-responsive" style="width: 100%">
					</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<p>승리자가 없습니다.</p>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="row" style="padding: 0.5em">
			<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #00a27c">공지</span></h3>
		</div>		
		<div class="row" >
				<marquee>
				<h4 style="white-space:nowrap;">
				<c:if test="${not empty ufo.ufo_notice1 }">${ufo.ufo_notice1}<span style="color: #ED45A4; ">&emsp;||&emsp;</span></c:if>
				<c:if test="${not empty ufo.ufo_notice2 }">${ufo.ufo_notice2}<span style="color: #ED45A4; ">&emsp;||&emsp;</span></c:if> 
				<c:if test="${not empty ufo.ufo_notice3 }">${ufo.ufo_notice3}</c:if>
				</h4>
				</marquee>
		</div>
		<div class="row">
			<div style="height:3px; background-color: #ECD0E2"></div>
			<div style="height:1.5em"></div>
		</div>
		<c:if test="${not empty ufo.fb_live }">
		<div class="row" style="padding: 0.5em">
			<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #00a27c">L!VE</span></h3>
		</div>	
		<div class="row">
			<div class="fb-video" data-href="${ufo.fb_live }" data-width="500" data-show-text="false"></div>
		</div>
		</c:if>
		<div class="section-title" style="margin-bottom: 0;">${ufo.event_short_description }</div><br>
		<div class="section-content" align="left" style="padding:10px;">${ufo.event_long_description }
		</div>
		
		</div>
		<!--//feature-list-->
		<!--//team-figure-->
</section>

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