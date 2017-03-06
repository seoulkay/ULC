<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- ******FOOTER****** -->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title"><a href="#remodal_q1">UFO79.com</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="#modal2">이용약관</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="#">개인정보 취급방침</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="#">커뮤니티정책</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="#">저작권정책</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a onClick="fbPost()" href="#">쿠키정책</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
		</div>
		<!--//row-->
		<div class="divider"></div>
		<div class="footer-bottom text-center">
			<ul class="social-media list-inline">
				<li><a href="http://www.twitter.com/share?=url=www.ufo79.com/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="https://www.facebook.com/sharer.php?u=www.ufo79.com/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="http://plus.google.com/share?url=www.ufo79.com/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-google-plus" aria-hidden="true"></i></a></li>
				<li><a href="https://story.kakao.com/share?url=www.ufo79.com/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-instagram" aria-hidden="true"></i></a></li>
			</ul>

			<small class="copyright"><a href="https://www.ufo79.com/"
				target="_blank">© UFO79 Corp.</a> ${ufo.info_contact_text }</small>
		</div>
	</div>
	<!--//container-->
</footer>
<!--//footer-->

<!-- Video Modal -->
<div class="modal modal-video" id="modal-video" tabindex="-1"
	role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="videoModalLabel" class="modal-title sr-only">Video Tour</h4>
			</div>
			<div class="modal-body">
				<div class="video-container embed-responsive embed-responsive-16by9">
					<iframe id="vimeo-video"
						src="//player.vimeo.com/video/140875675?color=ffffff&amp;wmode=transparent"
						width="720" height="405" frameborder="0" webkitallowfullscreen
						mozallowfullscreen allowfullscreen></iframe>
				</div>
				<!--//video-container-->
			</div>
			<!--//modal-body-->
		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->

<!-- Login Modal -->
<div class="modal modal-auth modal-login" id="login-modal" tabindex="-1"
	role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="loginModalLabel" class="modal-title text-center">SNS 계정으로 로그인하기</h4>
			</div>
			<div class="modal-body">
				<div class="social-login text-center">
					<ul class="social-buttons list-unstyled">
						<!-- <li><a href="#" class="btn btn-social btn-google btn-block"><i
								class="fa fa-google" aria-hidden="true"></i><span
								class="btn-text">구글로 로그인하기</span></a></li> -->
						<li onClick="fbLogin(); return false;"><span class="btn btn-social btn-facebook btn-block"><i
								class="fa fa-facebook" aria-hidden="true"></i><span
								class="btn-text">
								페이스북으로 로그인하기</span></span></li>
					</ul>
				</div>
<!-- 				<div class="divider"> -->
<!-- 					<span class="or-text">OR</span> -->
<!-- 				</div> -->
<!-- 				<div class="modal-header2"> -->
<!-- 				<h4 id="loginModalLabel" class="modal-title text-center">이메일주소로 로그인하기</h4> -->
<!-- 				</div> -->
<!-- 				<div class="login-form-container"> -->
<!-- 					<form class="login-form"> -->
<!-- 						<div class="form-group email"> -->
<!-- 							<i class="material-icons icon">&#xE0BE;</i> <label -->
<!-- 								class="sr-only" for="login-email">이메일주소</label> <input -->
<!-- 								id="login-email" name="login-email" type="email" -->
<!-- 								class="form-control login-email" placeholder="이메일주소"> -->
<!-- 						</div> -->
<!-- 						//form-group -->
<!-- 						<div class="form-group password"> -->
<!-- 							<i class="material-icons icon">&#xE897;</i> <label -->
<!-- 								class="sr-only" for="login-password">비밀번호</label> <input -->
<!-- 								id="login-password" name="login-password" type="password" -->
<!-- 								class="form-control login-password" placeholder="비밀번호"> -->
<!-- 							<div class="extra"> -->
<!-- 								<div class="checkbox remember"> -->
<!-- 									<label> <input type="checkbox">로그인 상태 유지</label> -->
<!-- 								</div> -->
<!-- 								//check-box -->
<!-- 								<div class="forgotten-password"> -->
<!-- 									<a href="#" id="resetpass-link" data-toggle="modal" -->
<!-- 										data-target="#resetpass-modal">비밀번호 찾기</a> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							//extra -->
<!-- 						</div> -->
<!-- 						//form-group -->
<!-- 						<button type="submit" class="btn btn-cta btn-block btn-primary">로그인 하기</button> -->
<!-- 					</form> -->
<!-- 				</div> -->
				<!--//login-form-container-->

<!-- 				<div class="option-container"> -->
<!-- 					<div class="lead-text">계정이 없으신가요?</div> -->
<!-- 					<a class="signup-link btn btn-ghost-alt" id="signup-link" href="#">회원가입</a> -->
<!-- 				</div> -->
				<!--//option-container-->
			</div>
			<!--//modal-body-->

		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->

<!-- Signup Modal -->
<div class="modal modal-auth modal-signup" id="signup-modal"
	tabindex="-1" role="dialog" aria-labelledby="signupModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="signupModalLabel" class="modal-title text-center">SNS로 계정 생성하기</h4>
			</div>
			<div class="modal-body">
				<div class="social-login text-center">
					<ul class="social-buttons list-unstyled">
<!-- 						<li><a href="#" class="btn btn-social btn-google btn-block"><i -->
<!-- 								class="fa fa-google" aria-hidden="true"></i><span -->
<!-- 								class="btn-text">구글 계정으로 회원가입</span></a></li> -->
						<li><a href="#" class="btn btn-social btn-facebook btn-block"><i
								class="fa fa-facebook" aria-hidden="true"></i><span
								class="btn-text">페이스북 계정으로 회원가입</span></a></li>
					</ul>
				</div>
				<div class="divider">
					<span class="or-text">OR</span>
				</div>
				<div class="modal-header2">
				<h4 id="loginModalLabel" class="modal-title text-center">이메일주소로 계정 생성하기</h4>
				</div>
				<div class="login-form-container">
					<form class="login-form">
						<div class="form-group full-name">
							<i class="material-icons icon">&#xE7FD;</i> <label
								class="sr-only" for="signup-fullname">Your Full Name</label> <input
								id="signup-fullname" name="signup-fullname" type="text"
								class="form-control signup-email" placeholder="성명">
						</div>
						<!--//form-group-->
						<div class="form-group email">
							<i class="material-icons icon">&#xE0BE;</i> <label
								class="sr-only" for="signup-email">Your Email</label> <input
								id="signup-email" name="signup-email" type="email"
								class="form-control signup-email" placeholder="이메일주소">
						</div>
						<!--//form-group-->
						<div class="form-group password">
							<i class="material-icons icon">&#xE897;</i> <label
								class="sr-only" for="signup-password">Create a Password</label>
							<input id="signup-password" name="signup-password"
								type="password" class="form-control signup-password"
								placeholder="비밀번호">
						</div>
						<!--//form-group-->
						<div class="legal-note">By signing up, you agree to our
							terms of services and privacy policy.</div>
						<button type="submit" class="btn btn-block btn-primary btn-cta">회원가입</button>

					</form>
				</div>
				<!--//login-form-container-->
				<div class="option-container">
					<div class="lead-text">이미 계정이 있으신가요?</div>
					<a class="login-link btn btn-ghost-alt" id="login-link" href="#">로그인하기</a>
				</div>
				<!--//option-container-->
			</div>
			<!--//modal-body-->
		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->

<!-- Reset Password Modal -->
<div class="modal modal-auth modal-resetpass" id="resetpass-modal"
	tabindex="-1" role="dialog" aria-labelledby="resetpassModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="resetpassModalLabel" class="modal-title text-center">Forgot
					your password?</h4>
			</div>
			<div class="modal-body">
				<div class="resetpass-form-container">
					<p class="intro">We'll email you a link to a page where you can
						easily create a new password.</p>
					<form class="resetpass-form">
						<div class="form-group email">
							<label class="sr-only" for="reg-email">Your Email</label> <input
								id="reg-email" name="reg-email" type="email"
								class="form-control login-email" placeholder="Your Email">
						</div>
						<!--//form-group-->
						<button type="submit" class="btn btn-block btn-secondary btn-cta">Reset
							Password</button>
					</form>
				</div>
				<!--//login-form-container-->
				<div class="option-container">
					<div class="lead-text">
						I want to <a class="back-to-login-link" id="back-to-login-link"
							href="#">return to login</a>
					</div>
				</div>
				<!--//option-container-->
			</div>
			<!--//modal-body-->
		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->

	
	<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#remodal_q1" style="display:none;" id="modalTrigger">TRINGGER</button>



<form id="surveyForm" action="surveySubmit" method="post" enctype="multipart/form-data">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
<div class="modal fade" id="remodal_q${statusEle.count }" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
	      <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>${ele.question}</h4>
	  	 </div>	
  
	   <div class="modal-body">
	    7문항 중 ${statusEle.count }문항<br>
	    <div class="progress">
		  <div class="progress-bar progress-bar-success" style="width: ${statusEle.count * 100/ 7 }%">
		  </div>
		  <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(statusEle.count * 100 / 7)}%">
		  </div>
		</div>
	  
		<c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
			<div class="input-group">
		      <span class="input-group-addon">
		      <input type="radio" name="q${statusEle.count }_a" id="q${statusEle.count }_a" aria-label="..." value="${status.count }" answer="${var.q_option }">
		      </span>
		      <input type="text" class="form-control" aria-label="..." value="${var.q_option }" name="noUse" readonly="readonly">
		    </div>
	    </c:forEach>
	 	<br>
	  </div>
	  <div class="modal-footer">
	    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#remodal_q${statusEle.count + 1 }" data-dismiss="modal">다음</button>
	  </div>
	</div>
	</div>
</div>
</c:forEach>
	  

<div class="modal" id="remodal_q6" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4 id="modal1Title">${quesVO[5].question}</h4>
	   </div>	
	   <div class="modal-body">
  			7문항 중 6문항<br>
  			<div class="progress">
	  		<div class="progress-bar progress-bar-success" style="width: ${6 * 100/ 7 }%">
	  		</div>
	  		<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(6 * 100 / 7)}%">
	  		</div>
			</div>
  			<input class="form-control" type="text" id="q6_a" name="q6_a" maxlength="900"/>
  		</div>
  		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#remodal_q7" data-dismiss="modal">다음</button>
	  	</div>
	</div>
	</div>
</div>



<div class="modal" id="remodal_q7" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>${quesVO[6].question}</h4>
	   </div>
	   <div class="modal-body">
   		7문항 중 7문항<br>
	 	 	<div class="progress">
		  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
		  	</div>
		  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
		  	</div>
			</div>
			  	<input type="file" id="q7_a" name="file" class="form-control">
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal" onClick="surveyPostSubmit()">제출</button>
	  	</div>
	</div>
	</div>
</div>
<input type="hidden" id="uid_a" name="uid_a">
<input type="hidden" id="first_name_a" name="first_name_a">
<input type="hidden" id="last_name_a" name="last_name_a">
<input type="hidden" id="email_a" name="email_a">
<input type="hidden" id="sns_type_a" name="sns_type_a">
<input type="hidden" id="access_token_a" name="access_token_a">
<input type="hidden" id="sns_msg" name="sns_msg">
<input type="hidden" id="sns_return" name="sns_return">
</form>
<!-- 스템프  -->
<form id="stampForm" action="stampSubmit" method="post" enctype="multipart/form-data">
<div class="modal" id="stampRally" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>스탬프랠리</h4>
	   </div>
	   <div class="modal-body">
	   		<div class="row">
	   			<c:forEach var="ele" varStatus="statusEle" begin="0" end="8">
	   			<div class="col-xs-12 col-md-4" >
	   				<a href="" data-toggle="modal" data-target="#stamp_${statusEle.count }" data-dismiss="modal">
	   					<img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/customers/customer-1.jpg">
	   				</a>
	   			</div>
	   			</c:forEach>
	   		</div>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal" onClick="stampPostSubmit()">제출</button>
	  	</div>
	</div>
	</div>
</div>
<c:forEach var="ele" varStatus="statusEle" begin="0" end="8">
<div class="modal" id="stamp_${statusEle.count }" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>스탬프 미션 ${statusEle.count }번</h4>
	   </div>
	   <div class="modal-body">
   		${statusEle.count }번 사진 : 아래와 같은 사진을 찍어주세요.<br>
	 	 	<div class="progress">
		  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
		  	</div>
		  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
		  	</div>
			</div>
				<div>
	   				<img class="img-responsive"  src="${pageContext.request.contextPath}/resources/ufo/assets/images/customers/customer-1.jpg">
	   			</div>
			  	<input type="file" id="stamp_${statusEle.count }_a" name="file" class="form-control">
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal" onClick="stampPostSubmit()">제출</button>
	  	</div>
	</div>
	</div>
</div>
</c:forEach>
</form>



<!-- Javascript -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>

<!--//Page Specific JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/js/home.js"></script>

<!-- Vimeo video API -->
<!-- <script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script> -->
<!-- <script type="text/javascript" -->
<%-- 	src="${pageContext.request.contextPath}/resources/ufo/assets/js/vimeo.js"></script> --%>

<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
<script
	src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ufo/assets/qrcode.min.js"></script>	
	
<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '1074619385980281',
	      version    : 'v2.8',
	      
	    	  status: true, // check login status
              cookie: true, // enable cookies to allow the server to access thesession
              xfbml: true  // parseXFBML
	    });
	    
	    
	    //추가의 이닛 옵션들은 여기서 
	    FB.getLoginStatus(function(response) {
	    	var fn = window.sessionStorage.getItem('first_name');
	    		if (response.status === 'connected' && fn != null) {
				    // the user is logged in and has authenticated your
				    // app, and response.authResponse supplies
				    // the user's ID, a valid access token, a signed
				    // request, and the time the access token 
				    // and signed request each expire
					$("#navbar-collapse ul").append('<li id="snsName" class="nav-item"><a href="#" class="login-trigger" id="UserInfo" data-toggle="modal" data-target="#" onClick="fbLogout()">'+window.sessionStorage.getItem('userName')+'</a></li>');
					$("#navbar-collapse ul").append('<li id="snsPic" class="nav-item" style="padding-top: 3em;"><img id="userPic" class="img-responsive" style="height:20px" src="http://graph.facebook.com/v2.8/'+window.sessionStorage.getItem('uid')+'/picture?type=small"></img></li>');
				    var uid = response.authResponse.userID;
				    var accessToken = response.authResponse.accessToken;
				    window.sessionStorage.setItem("accessToken", accessToken);
				    //alert(accessToken);
				  } else if (response.status === 'not_authorized') {
				    // the user is logged in to Facebook, 
				    // but has not authenticated your app
					  $("#navbar-collapse ul").append('<li id="snsLogin" class="nav-item"><a href="#" class="login-trigger" id="LoginBtn" data-toggle="modal" data-target="#login-modal">Log in</a></li>');
				  } else {
				    // the user isn't logged in to Facebook.
					  $("#navbar-collapse ul").append('<li id="snsLogin" class="nav-item"><a href="#" class="login-trigger" id="LoginBtn" data-toggle="modal" data-target="#login-modal">Log in</a></li>');
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
	  
	  function fbLogin(){
	  FB.login(function(response) {
		    if (response.authResponse) {
		     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
		    	// Save data to sessionStorage
		    	
		    	var fn = response.first_name;
		    	var ln = response.last_name;
		    	var uid = response.id;
		    	var email = response.email;
		    	
		       window.sessionStorage.setItem('userName', fn);
		       window.sessionStorage.setItem('uid', uid);
		       window.sessionStorage.setItem('email', email);
		       window.sessionStorage.setItem('first_name', fn);
		       window.sessionStorage.setItem('last_name', ln);
		       
		    		
		       $.post( "snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb"})
		       .done(function( data ) {
		         //alert( "Data Loaded: " + data );
		       });
		       location.reload();
		     });
		    } else {
		     console.log('User cancelled login or did not fully authorize.');
		     alert("페이스북 로그인 실패.");
		     location.reload();
		    }
		}, {scope: 'email,user_likes,publish_actions', return_scope: true});
	  }
	  
	  function surveyPostByFb(){
		  var fn = window.sessionStorage.getItem('last_name')
			FB.login(function(response) {
		    if (response.authResponse) {
		     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
		    	// Save data to sessionStorage
		    	
		    	var fn = response.first_name;
		    	var ln = response.last_name;
		    	var uid = response.id;
		    	var email = response.email;
		    	
		       window.sessionStorage.setItem('userName', fn);
		       window.sessionStorage.setItem('uid', uid);
		       window.sessionStorage.setItem('email', email);
		       window.sessionStorage.setItem('first_name', fn);
		       window.sessionStorage.setItem('last_name', ln);
		       
		    		
		       $.post( "snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb"})
		       .done(function( data ) {
		         //alert( "Data Loaded: " + data );
		       });
// 		       location.reload();
		     });
		    } else {
		     console.log('User cancelled login or did not fully authorize.');
		     alert("페이스북 로그인 실패.");
		     location.reload();
		    }
		}, {scope: 'email,user_likes,publish_actions', return_scope: true});
		  
		  FB.getLoginStatus(function(response) {
		  if (response.status === 'connected') {
			  $('#modalTrigger').click();
				 
			  } else if (response.status === 'not_authorized') {
				  fbLogin();
				  surveyPostByFb();
			  } else {
				  fbLogin();
				  surveyPostByFb();

			  }
		  }, true);
	  }
	  
	  function surveyPostSubmit(){
		  
		  var q1 = $('input[name=q1_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
		  var q2 = $('input[name=q2_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
		  var q3 = $('input[name=q3_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
		  var q4 = $('input[name=q4_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
		  var q5 = $('input[name=q5_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
		  var q6 = $('input[name=q6_a]', '#surveyForm').val();
		  
		  var fl = window.sessionStorage.getItem('first_name');
		  var ln = window.sessionStorage.getItem('last_name');
		  
		  var msg = q6+" https://www.ufo79.com/PIX/ufo/post/"+fl+"_"+ln+" #"+q1+" #"+q2+" #"+q3+" #"+q4+" #"+q5;
		  $( "#sns_msg" ).val(msg);
		  fbPost(msg);
	  }
	  
	  
	  function fbLogout(){
		  FB.logout(function(response) {
			   // Person is now logged out
			window.sessionStorage.clear();
			   window.location.reload();
			});
	  }
	  
	  
	  function fbPost(msg){
	    	FB.getLoginStatus(function(response) {
		    	 
		    	if (response.status === 'connected') {
		    		var body = msg;
					  FB.api('/me/feed', 'post', { message: body }, function(response) {
					    if (!response || response.error) {
					      alert('페이스북 서버와 연결되지 않습니다.');
					    } else {
					      //alert('Post ID: ' + response.id);
					      $( "#sns_return" ).val(response.id);
					      $( "#first_name_a" ).val(window.sessionStorage.getItem('first_name'));
						  $( "#last_name_a" ).val(window.sessionStorage.getItem('last_name'));
						  $( "#uid_a" ).val(window.sessionStorage.getItem('uid'));
						  $( "#access_token_a" ).val(window.sessionStorage.getItem('accessToken'));
						  $( "#sns_type_a" ).val("fb");
						  
					      $("#surveyForm").submit();
					      alert("감사합니다.");
					    }
					  });    		
		    	} else if (response.status === 'not_authorized') {
		    		alert('페이스북 로그인 되어 있지 않습니다.');
		    	} else {
		    		alert('연결에 문제가 있습니다.');
		    		}
		    	}, true); 
	    }
	  
	  
	  function sendNewsLetterEmail(){
		  var email = $("#semail").val();
		  var para = $("#news_para").val();
		  $.post( "newsletter", { news_letter_email: email, para:para})
	       .done(function( data ) {
	    	  //아래코드 잘 작동이 된다 성공하면 1 옴
	         //alert( "Data Loaded: " + data );
	       });
		  alert("구독해주셔서 감사합니다.");
	  }
	  </script>
	  		<script>
			var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
		        var icons = {
		          parking: {
		            icon: iconBase + 'parking_lot_maps.png'
		          },
		          library: {
		            icon: iconBase + 'library_maps.png'
		          },
		          info: {
		            icon: iconBase + 'info-i_maps.png'
		          },
		          poke:{
		        	  icon: 'http://i795.photobucket.com/albums/yy232/PixKaruumi/Pokemon%20Pixels/thPokemon_logo___Umbreon_by_PrinzeBur.gif'
		          },
		          ufoOn:{
		        	  icon:'https://www.ufo79.com/PIX/resources/ufo/assets/images/icons/photo_spot_on.png'
		          },
		          ufoOff:{
		        	  icon:'https://www.ufo79.com/PIX/resources/ufo/assets/images/icons/photo_spot_off.png'
		          }
		        };
		        
				var neighborhoods = [
				  {lat:37.7737, lng:128.8927, type:'poke', content:'포인트'},
                  {lat:37.7739, lng:128.8929, type:'poke', content:'1번 포키'},
                  {lat:37.7735, lng:128.8925, type:'info', content:'2번 포키'},
                  {lat:37.7735, lng:128.8929, type:'info', content:'3번 포키'},
                  {lat:37.7739, lng:128.8925, type:'info', content:'<div id="content">'+
    			      '<div id="siteNotice">'+
    			      '</div>'+
    			      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
    			      '<div id="bodyContent">'+
    			      '<p><b>UFO 스탑</b>, 여기는 성지 입니다. <b>Ayers Rock</b>, is a large ' +
    			      'sandstone rock formation in the southern part of the '+
    			      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
    			      'south west of the nearest large town, Alice Springs; 450&#160;km '+
    			      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
    			      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
    			      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
    			      'Aboriginal people of the area. It has many springs, waterholes, '+
    			      'rock caves and ancient paintings. Uluru is listed as a World '+
    			      'Heritage Site.</p>'+
    			      '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
    			      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
    			      '(last visited June 22, 2009).</p>'+
    			      '</div>'+
    			      '</div>'}
                ];

			  
            var markers = [];
			var map;
			
			
			function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
			    zoom: 18,
			    //center: {lat: 37.75, lng: 128.87}
			    center: {lat: 40.71, lng: -74.00}
			  });
			var infoWindow = new google.maps.InfoWindow({map: map});
			 
			

			// Try HTML5 geolocation.
	        if (navigator.geolocation) {
	          navigator.geolocation.getCurrentPosition(function(position) {
	            var pos = {
	              lat: position.coords.latitude,
	              lng: position.coords.longitude,
	              type: "ufoOn"
	            };
	  
	           
	            var target = {};
	            //alert(pos.lat);
	          	//소수점 네자리의 위치 구하기
				//alert(parseFloat(Math.round(pos.lat * 100) / 100).toFixed(4)+" "+parseFloat(Math.round(pos.lng * 100) / 100).toFixed(4));
	            //infoWindow.setPosition(pos);
	            //infoWindow.setContent('지금 여기 있으십니다!');
	            target.lat = parseFloat((pos.lat+ 0.0003).toFixed(4));
	            target.lng = parseFloat((pos.lng+ 0.0003).toFixed(4));
	            target.type = "ufoOff";
	            target.content = "타겟";
	            neighborhoods.push(target);
	            
	            var ref = {};
	            ref.lat = parseFloat((pos.lat+ 0.0002).toFixed(4));
	            ref.lng = parseFloat((pos.lng).toFixed(4));
	            ref.type = "info";
	            ref.content = "타겟";
	            neighborhoods.push(ref);
	            
	            var ref2 = {};
	            ref2.lat = parseFloat((pos.lat).toFixed(4));
	            ref2.lng = parseFloat((pos.lng+ 0.0002).toFixed(4));
	            ref2.type = "info";
	            ref2.content = "타겟";
	            neighborhoods.push(ref2);
	            
	            var ref3 = {};
	            ref3.lat = parseFloat((pos.lat).toFixed(4));
	            ref3.lng = parseFloat((pos.lng- 0.0002).toFixed(4));
	            ref3.type = "info";
	            ref3.content = "타겟";
	            neighborhoods.push(ref3);
	            
	            var ref4 = {};
	            ref4.lat = parseFloat((pos.lat- 0.0002).toFixed(4));
	            ref4.lng = parseFloat((pos.lng).toFixed(4));
	            ref4.type = "info";
	            ref4.content = "타겟";
	            neighborhoods.push(ref4);
	            
	         	//working!
	            //var ref5 = {};
	            //ref5.lat = parseFloat((${ufoGo[1].go_lat}).toFixed(4));
	            //ref5.lng = parseFloat((${ufoGo[1].go_alt}).toFixed(4));
	            //ref5.type = "ufoOff";
	            //ref5.content = "타겟";
	            //neighborhoods.push(ref5);
	            
	            //for (i = 0; i < ${fn:length(ufoGo)}; i++) { 
				//    var ref = {};
				//  	ref.lat = parseFloat((${ufoGo[i].go_lat}).toFixed(4));
		        //    ref.lng = parseFloat((${ufoGo[i].go_alt}).toFixed(4));
		        //    ref.type = "ufoOff";
		        //    ref.content = "유에프오고";
		        //    neighborhoods.push(ref);
				//	}
	         
	            console.log(${fn:length(ufoGo)});
	            console.log(pos);
	            console.log(target);
	            
	            addMarkerWithTimeout(pos, 100);
	            
	            map.setCenter(pos);
	            drop();
	            
	           	if((Math.pow(target.lat - pos.lat, 2) + Math.pow(target.lng - pos.lng, 2)) < Math.pow(0.0002, 2) ){
	           		console.log("IN");
	           		console.log(Math.pow(target.lat - pos.lat, 2));
	           		console.log(Math.pow(target.lng - pos.lng, 2));
	           		console.log(Math.pow(0.0001, 2));
	           	}else{
	           		console.log("OUT")
	           		console.log(Math.pow(target.lat - pos.lat, 2));
	           		console.log(Math.pow(target.lng - pos.lng, 2));
	           		console.log(Math.pow(0.0001, 2));
	           	}
	          }, function() {
	            handleLocationError(true, infoWindow, map.getCenter());
	          });
	        } else {
	          // Browser doesn't support Geolocation
	          handleLocationError(false, infoWindow, map.getCenter());
	        }
	       
			}
			
			function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		        infoWindow.setPosition(pos);
		        infoWindow.setContent(browserHasGeolocation ?
		                              'Error: The Geolocation service failed.' :
		                              'Error: Your browser doesn\'t support geolocation.');
		    }
			
			function drop() {
			  clearMarkers();
			  for (var i = 0; i < neighborhoods.length; i++) {
			    addMarkerWithTimeout(neighborhoods[i], i * 200);
			  }
			}

			function addMarkerWithTimeout(position, timeout) {
			  window.setTimeout(function() {
			  var infowindow = new google.maps.InfoWindow({
				    content: position.content
				  });
			  
			  var pos = {
		              lat: position.lat,
		              lng: position.lng
		            };
			  
			 var marker = new google.maps.Marker({
			      position: pos,
			      map: map,
			      animation: google.maps.Animation.DROP,
			      icon: icons[position.type].icon
			 });
			 marker.addListener('click', function() {
				    infowindow.open(map, marker);
			  });
			    markers.push(marker);
				}, timeout);
			}

			function clearMarkers() {
			  for (var i = 0; i < markers.length; i++) {
			    markers[i].setMap(null);
			  }
			  markers = [];
			}
			
			
			
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN9VDOjhzw7kPKEbFw7LEVoVreCXiz87E&callback=initMap" async defer></script>
	
        
        
   