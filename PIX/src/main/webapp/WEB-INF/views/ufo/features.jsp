<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	</jsp:include>
	
	<div style="height: 6em;"></div>
	
	<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}">
	<!-- Section 01 -->
	<section id="info-section">
		<div class="feature-blocks container">
			<div id="feature-block-1" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #0081C8">${ufo.info_title }</span></h3>
					</div>
				</div>
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<div class="feature-desc">
							<p>${ufo.info_info_text }</p>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<c:if test="${ufo.info_info_pic ne null}">
							<img class="img-responsive" src="https://www.ufo79.com/image/${ufo.info_info_pic}" alt="">
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section 02 -->
	<section>
	<div class="feature-blocks container" >
			<div id="feature-block-3" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #FCB131">${ufo.history_title }</span></h3>
					</div>
				</div>
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">						
						<div class="feature-desc">
							<p>${ufo.info_hist_text }</p>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<div class="figure-holder" align="center">
							<c:if test="${ufo.info_hist_pic ne null}">
							<img class="img-responsive" src="https://www.ufo79.com/image/${ufo.info_hist_pic}" alt="">
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	<!-- Section 03 -->
	<section style="background-color: #A9D7E6">		
		<div class="feature-blocks container" >		
			<div id="feature-block-3" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #00A651;">${ufo.location_title }</span></h3>
					</div>
				</div>		
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<div class="figure-holder" align="center" style="box-shadow: -10px 10px 10px 1px #666666;">
							<c:if test="${ufo.info_location_pic ne null}">
							<img class="img-responsive" src="https://www.ufo79.com/image/${ufo.info_location_pic}" alt="">
							</c:if>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<div class="feature-desc">
							<div class="alert alert-success" role="alert" style="background-color: #16adde; color: WHITE; border-color: #16adde;box-shadow: -10px 10px 10px 1px #666666;">${ufo.info_location_text }</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</c:if>
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

