<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<link rel="shortcut icon" href="https://www.ufo79.com/image/https://www.ufo79.com/image/favicon.ico">
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
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.info_info_pic}"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
			<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">축제 정보</h2>
			<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
			
			<div class="actions">
           	<a class="scrollto-no-offset" href="#page-nav">축제 정보 보러가기</a>
                 <a class="scrollto-no-offset" href="#page-nav"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">홈</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li><a class="scrollto" href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li><a class="scrollto" href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">서베이</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li><a class="scrollto" href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li></c:if>
					<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
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
					<h3 class="feature-title">${info.title }</h3>
					<div class="feature-desc">
						<p>${info.content }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
					<c:if test="${info.photo_file ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${info.photo_file}"
							alt="">
					</c:if>
					<c:if test="${info.photo_file eq null}">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/dano_feature01.jpg"
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
					class="feature-content col-md-4 col-sm-6 col-xs-12 col-md-push-8 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">${hist.title }</h3>
					<div class="feature-desc">
						<p>${hist.content }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-8 col-sm-6 col-xs-12 col-md-pull-4 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder">
						
						<c:if test="${hist.photo_file ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${hist.photo_file}"
							alt="">
						</c:if>
						<c:if test="${hist.photo_file eq null}">
							<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/dano_feature02.jpg"
							alt="">
						</c:if>
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
					<h3 class="feature-title">${prog.title }</h3>
					<div class="feature-desc">
						<p>${ufo.event_date }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<p>${prog.content }</p>
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



</body>
</html>

