<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '1074619385980281',
	      xfbml      : true,
	      version    : 'v2.8'
	    });
	    //추가의 이닛 옵션들은 여기서 
	    FB.getLoginStatus(function(response) {
			  if (response.status === 'connected') {
			    // the user is logged in and has authenticated your
			    // app, and response.authResponse supplies
			    // the user's ID, a valid access token, a signed
			    // request, and the time the access token 
			    // and signed request each expire
			    // alert('1');
			    //alert(JSON.stringfy(response))
			    var uid = response.authResponse.userID;
			    var accessToken = response.authResponse.accessToken;
			  } else if (response.status === 'not_authorized') {
			    // the user is logged in to Facebook, 
			    // but has not authenticated your app
				 // alert('2');
			  	//alert(JSON.stringfy(response))
			  } else {
			    // the user isn't logged in to Facebook.
			    //alert('3');
			    //alert(JSON.stringify(response))
			  }
			 }, true);   
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	  
	  FB.login(function(response) {
		    if (response.authResponse) {
		     console.log('Welcome!  Fetching your information.... ');
		     FB.api('/me', function(response) {
		       console.log('Good to see you, ' + response.name + '.');
		     });
		    } else {
		     console.log('User cancelled login or did not fully authorize.');
		    }
		}, {scope: 'email,user_likes,publish_actions', return_scope: true});
	</script>
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