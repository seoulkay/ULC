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
	
<section id="signup-section" class="signup-section section">
		<div class="section-inner">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->
			<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
				<h2 class="counter-desc">스탬프랠리 참여하기</h2>
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">${ufo.ufo_go_title }</div>
						<!-- <button class="btn btn-primary" onClick="refreshGo()" style="background-color: GREEN; color: WHITE"><span class="btn-text">나의 위치 리프레쉬!</span></button><br> -->
<%-- 							<input onclick="refreshGo()" type="image" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/icon_F5.svg" style="width: 35px; height: 35px;"> --%>
						<div class="team-figure">
							<div id="map" style="height: 30em;"></div>
						</div><br><br>
						<ul class="social-buttons list-unstyled">
							<!-- <li><a href="#" class="btn btn-social btn-google"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li> -->
							<li><button class="btn btn-warning" onClick="redirectGallery('go')" style="margin:3px"><span class="btn-text">갤러리로 가기</span></button> <button class="btn btn-social btn-facebook" onClick="getUfo('go')" style="margin:3px"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">스탬프 찍기</span></button> <button class="btn btn-warning" onClick="qrInfoShow()" style="margin:3px"><span class="btn-text">GPS가 잘 안잡힐 경우</span></button></li>
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
		</div>
	</div>
</section>
		

	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->

</body>
</html>