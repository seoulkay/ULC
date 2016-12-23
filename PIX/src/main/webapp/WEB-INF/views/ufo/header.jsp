<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ******HEADER****** -->
<header id="header" class="header">
	<div class="container">
		<h1 class="logo">
			<a href="index
"><img
				src="${pageContext.request.contextPath}/resources/ufo/assets/images/logo.svg"
				alt=""><span class="text">Startup Kit</span></a>
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
					<li class="nav-item"><a href="index">Home</a></li>
					<li class="nav-item"><a href="features">Features</a></li>
					<li class="nav-item"><a href="stories">Stories</a></li>
					<li class="nav-item"><a href="blog">Blog</a></li>
				<!--//dropdown-->
				<li class="nav-item"><a href="#" class="login-trigger"
					data-toggle="modal" data-target="#login-modal">Log in</a></li>
				<li class="nav-item nav-item-cta last"><a class="btn-signup"
					href="#" data-toggle="modal" data-target="#signup-modal">Sign
						Up</a></li>
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