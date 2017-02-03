<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="remodal-bg">	
<!-- ******HEADER****** -->
<header id="header" class="header">
	<div class="container">
		<h1 class="logo">
			<a href="index"> <img
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/logo_dano.png"
				alt=""><span class="text">단오제</span>
			</a>
		</h1>
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
					<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/index">홈</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/blog">공지사항</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/features">축제정보</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/stories">서베이</a></li>
					<li class="nav-item"><a href="" data-toggle="modal" data-target="#stampRally" data-dismiss="modal">스탬프랠리</a></li>
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