<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
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
					<!--//dropdown-->
					<li class="nav-item nav-item-cta last" style="padding-top: 3em"><img id="userPic" class="img-responsive" style="height:20px"></img></li>
						<li class="nav-item">
						<a href="#" class="login-trigger" id="UserInfo"
						data-toggle="modal" data-target="#" style="display:none;" onClick="fbLogout()">
								<span id="userName"></span>
						</a>
					</li>
				
					<li class="nav-item"><a href="#" class="login-trigger" id="LoginBtn"
						data-toggle="modal" data-target="#login-modal">Log in ${sessionScope.userName }</a></li>
<!-- 					<li class="nav-item nav-item-cta last"><a class="btn-signup" -->
<!-- 						href="" data-toggle="modal" data-target="#signup-modal" id="SignupBtn" )>Sign Up</a></li> -->
<!-- 					<li><button onClick="fbLogout(); return false">LOGOUT</button></li> -->
					
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