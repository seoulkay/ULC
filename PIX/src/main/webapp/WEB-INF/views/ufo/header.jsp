<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- ******HEADER****** -->
<header id="header" class="header">
	<div class="container">
<%-- 		<h1 class="logo">
			<a href="index"> <img
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/logo_dano.png"
				src="https://www.ufo79.com/image/${ufo.logo }"
				alt=""><span class="text">${ufo.title }</span>
			</a>
		</h1> --%>
		<div class="logo">
			<a href="index"> <img
<%-- 				src="${pageContext.request.contextPath}/resources/ufo/assets/images/logo_dano.png" --%>
				src="https://www.ufo79.com/image/${ufo.logo }"
				alt="">
			</a>
		</div>
		<!--//logo-->
		<nav class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--//nav-toggle-->
			</div>
			<!--//navbar-header-->
			<div id="navbar-collapse" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<c:if test="${fn:contains(sessionScope.eventMenu, 'index')}">
					   <li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">홈</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'blog')}">
						<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/blog">공지사항</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}">
					 <li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}">
						<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">서베이</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
						<li class="nav-item"><a href="#" onclick="stampRally()">스탬프랠리</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
						<li class="nav-item"><a href="#" onclick="qrRally()">QR코드랠리</a></li>
					</c:if>
					<!--//dropdown-->
				</ul>
				<!--//nav-->
			</div>
			<!--//navabr-collapse-->
		</nav>
		<!--//main-nav-->
	</div>
	<!--//container-->
</header>
<!--//header-->