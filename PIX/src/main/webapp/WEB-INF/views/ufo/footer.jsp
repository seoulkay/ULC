<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<!-- ******FOOTER****** -->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title"><a href="reader">UFO79.com</a>
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
<%-- 				<li><a href="https://story.kakao.com/share?url=www.ufo79.com/PIX/ufo/${sessionScope.eventPara }/index"><i --%>
<!-- 						class="fa fa-instagram" aria-hidden="true"></i></a></li> -->
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
						<li onClick="fbLogin('index'); return false;"><span class="btn btn-social btn-facebook btn-block"><i
								class="fa fa-facebook" aria-hidden="true"></i><span
								class="btn-text">
								페이스북으로 로그인하기</span></span></li>
					</ul>
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

<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}">
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
	    <button type="button" class="btn btn-default" data-dismiss="modal" onClick="surveyPostSubmit()">GO!</button>
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
<input type="hidden" id="sns_gid" name="sns_gid">
</form>
</c:if>



<!-- 스템프  -->
<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#stampRally" data-dismiss="modal" style="display:none;" id="rallyTrigger">RALLYTRINGGER</button>
<div class="modal" id="stampRally" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">스탬프랠리</h3>
	   </div>
	   <div class="modal-body">
	   		<div class="row">
	   			<c:forEach items="${ufoGo }" var="ele" varStatus="statusEle">
	   			<div class="col-xs-4" style="padding:0px;" id='${ele.ufo_gid }' style="position : relative; max-width:150px">
		   				<a href="" data-toggle="modal" data-target="#stamp_${ele.ufo_gid }_modal" data-dismiss="modal" id="stamp_${ele.ufo_gid }"  style="display: none;">
		   					<img class="img-responsive" style="width:100%; padding:5px;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp_0${statusEle.count < 9 ? statusEle.count : statusEle.count - 8}.svg">
		   				</a>
		   			<img id="stamp_back_${ele.ufo_gid }" style="opacity:1; width:100%; padding:5px;" class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp_0${statusEle.count < 9 ? statusEle.count : statusEle.count - 8}_off.svg">
	   				<p style="margin-bottom:3px; text-align:center; font-size: 14px; font-family:NanumBarunGothic">${ele.go_content }</p>
		   			<img id="stamp_yes_${ele.ufo_gid }"  class="img-responsive"  style="position:absolute; top:15%; left:15%; display:none; opacity:1; width:70%; padding:5px;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg">
	   			</div>
	   			</c:forEach>
	   		</div>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family:NanumBarunGothic; color:#d7579f; border-color: #d7579f;" onClick="fbLogin('go_re')">완료</button>
	  	</div>
	</div>
	</div>
</div>
<c:forEach var="ele" varStatus="statusEle" items="${ufoGo }">
<div class="modal" id="stamp_${ele.ufo_gid }_modal" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">스탬프 미션 ${statusEle.count }번</h3>
	   </div>
	   <div class="modal-body" style="font-family:NanumBarunGothic">
   		${statusEle.count }번 사진 : ${ele.go_content }<br>
	 	 	<div class="progress">
			  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
			  	</div>
			  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
			  	</div>
			</div>
			<!-- 스탬프 미션 사진, 내용 -->
			<div>
   				<img class="img-responsive" style="padding:10px" src="https://www.ufo79.com/image/${ele.go_image }">
   			</div>
   			<div style="padding:10px">${ele.go_desc}<br>
   			</div>
   			<form id="stampForm${ele.ufo_gid }" action="/PIX/ufogo/insert" method="post" enctype="multipart/form-data">
			  	<input type="file" id="stamp_go${ele.ufo_gid }" name="file" class="form-control">
				<input type="hidden" id="first_name_go${ele.ufo_gid }" name="first_name">
				<input type="hidden" id="last_name_go${ele.ufo_gid }" name="last_name">
				<input type="hidden" id="uid_go${ele.ufo_gid }" name="user_uid">
				<input type="hidden" id="email_go${ele.ufo_gid }" name="email">
				<input type="hidden" id="type_go${ele.ufo_gid }" name="ufo_go_type" value="go">
				<input type="hidden" id="gid_go${ele.ufo_gid }" name="ufo_gid" value="${ele.ufo_gid }">
				<input type="hidden" id="para${ele.ufo_gid }" name="para" value="${sessionScope.eventPara}">
			</form>
		</div>
		<div class="modal-footer">
		<button type="button" style="font-family:NanumBarunGothic;" class="btn btn-default" data-dismiss="modal" onClick="getUfo('go')">뒤로</button>
	    <button type="button" style="font-family:NanumBarunGothic;" class="btn btn-default" data-dismiss="modal" onClick="stampPostSubmit('${ele.ufo_gid }')">제출</button>
	  	</div>
	</div>
	</div>
</div>
</c:forEach>
</c:if>



<!-- 큐알 모달 -->
<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
<div class="modal" id="qrRallyList" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header" style="padding-bottom: 0px;">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family: football">큐알 코드 랠리 </h3>
	   </div>
	   <div class="modal-body" style="padding-bottom: 15px;">
	   		<div class="row" id="qrList">
	   			<c:forEach items="${ufoqr }" var="ele" varStatus="statusEle">
	   			<div class="col-xs-3" style="padding:0px;" id='qr_div_${ele.ufo_gid }' style="position : relative; max-width:150px">
<%-- 	   				<div style="position:absolute; top:0; left:0">${ele.go_content }</div> --%>
		   			<img id="qr_yes_${ele.ufo_gid }" style="position:absolute; top:15%; left:15%; width:70%; display:none; opacity : 1;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg">
<%-- 	   				<img id="qr_back_${ele.ufo_gid }" style="opacity : 0.5;" class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg"> --%>
	   				<img id="stamp_back_${ele.ufo_gid }" style="opacity:1; width:100%; padding:5px;" class="img-responsive" src="https://www.ufo79.com/image/${ele.go_image}">
	   				<p style="margin-bottom:3px; text-align:center; font-size: 14px; font-family:NanumBarunGothic">${ele.go_content }</p>
	   				
	   			</div>
	   			</c:forEach>
	   		</div>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal"  data-toggle="modal" style="color:#d7579f; border-color: #d7579f;" onClick="fbLogin('qr_re')">완료</button>
	  	</div>
	</div>
	</div>
</div>
<!-- 큐알 모달들 -->
<c:forEach var="ele" varStatus="statusEle" items="${ufoqr }">
<div class="modal" id="stamp_${ele.ufo_gid }_modal" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">큐알 코드 미션</h3>
	   </div>
	   <div class="modal-body" style="font-family:NanumBarunGothic">
   			<p>${ele.go_content }<br></p>
	 	 	<div class="progress">
			  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
			  	</div>
			  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
			  	</div>
			</div>
			<!-- 스탬프 미션 사진, 내용 -->
			<div>
   				<img class="img-responsive" style="padding:10px" src="https://www.ufo79.com/image/${ele.go_image }">
   			</div>
   			<div style="padding:10px">${ele.go_desc}<br>
   			</div>
   			<form id="stampForm${ele.ufo_gid }" action="/PIX/ufogo/insert" method="post" enctype="multipart/form-data">
			  	<input type="file" id="stamp_go${ele.ufo_gid }" name="file" class="form-control">
				<input type="hidden" id="first_name_go${ele.ufo_gid }" name="first_name">
				<input type="hidden" id="last_name_go${ele.ufo_gid }" name="last_name">
				<input type="hidden" id="uid_go${ele.ufo_gid }" name="user_uid">
				<input type="hidden" id="email_go${ele.ufo_gid }" name="email">
				<input type="hidden" id="type_go${ele.ufo_gid }" name="ufo_go_type" value="qr">
				<input type="hidden" id="gid_go${ele.ufo_gid }" name="ufo_gid" value="${ele.ufo_gid }">
				<input type="hidden" id="para${ele.ufo_gid }" name="para" value="${sessionScope.eventPara}">
			</form>
		</div>
		<div class="modal-footer">
		<button type="button" style="font-family: NanumBarunGothic;" class="btn btn-default" data-dismiss="modal" onClick="getUfo('qr')">뒤로</button>
	    <button type="button" style="font-family: NanumBarunGothic;" class="btn btn-default" data-dismiss="modal" onClick="qrRallyPost('${ele.ufo_gid }')">제출</button>
	  	</div>
	</div>
	</div>
</div>
</c:forEach>
</c:if>

<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>

<!--//Page Specific JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/js/home.js"></script>
<script src="${pageContext.request.contextPath}/resources/ufo/assets/qrcode.min.js"></script>	
<script src="${pageContext.request.contextPath}/resources/ufo/assets/js/printThis.js"></script>	
	
	
<script>
/**
 * 페이스북 관련
 */

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
		$("#navbar-collapse ul").append('<li id="snsName" class="nav-item"><a href="#" id="UserInfo" onclick="fbLogout();">'+window.sessionStorage.getItem('userName')+'</a></li>');
		$("#navbar-collapse ul").append('<li id="snsPic" class="nav-item" style="padding-top: 3em;"><img id="userPic" class="img-responsive" style="height:20px" src="https://graph.facebook.com/v2.8/'+window.sessionStorage.getItem('uid')+'/picture?type=small"></img></li>');
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
}, true);   };

 (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  /**
   * 
   */
function fbLogin(para){
  FB.login(function(response) {
	    if (response.authResponse) {
	     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
    	
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
       });

       if(para == 'go'){
    	   stampRally();
       }else if(para == 'qr'){
    	   qrRally();
       }else if(para == 'go_re'){
    	   top.location.href="https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/go/"+window.sessionStorage.getItem('uid');
       }else if(para == 'qr_re'){
    	   top.location.href="https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/qr/"+window.sessionStorage.getItem('uid');
       }else if(para == 'qr_list'){
    	   top.location.href="https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/catch/qr/${gid}";
       }else{
    	   top.location.href="index";
       }       
     });
    } else {
     console.log('User cancelled login or did not fully authorize.');
     location.reload();
    }
}, {scope: 'email,user_likes,publish_actions', return_scope: true});
  }
  
/**
 * 
 */
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
	//location.reload();
    });
   } else {
    console.log('User cancelled login or did not fully authorize.');
    location.reload();
   }
}, {scope: 'email,user_likes,publish_actions', return_scope: true});
  
  FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {
	  $('#modalTrigger').click();
		 
	  } else if (response.status === 'not_authorized') {
		  fbLogin('index');
		  surveyPostByFb();
	  } else {
		  fbLogin('index');
			  surveyPostByFb();

		  }
	  }, true);
  }
  
/**
 * 
*/
function checkLogin(){
	if(window.sessionStorage.getItem('first_name') == null || window.sessionStorage.getItem('last_name') == null){
		return false;
	}else{
		return true;	
	}
}

/**
 * 
 */
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
	
	fbPost(msg, "fb_survey", "survey");
}
  
/**
 * 
 */
function fbLogout(){
	 FB.logout(function(response) {
	   // Person is now logged out
	  console.log(response);
	  $("#snsName").remove();
	  $("#snsPic").remove();
	window.sessionStorage.clear();
	location.reload();
	});
}
  
/**
 * 
 */
function fbPost(msg, type, gid){
  	FB.getLoginStatus(function(response) {
   	 
   	if (response.status === 'connected') {
  		var body = msg;
	  FB.api('/me/feed', 'post', { message: body }, function(response) {
	    if (!response || response.error) {
	     console.log('Did not connected to facebook server : ufo');
	     hidePleaseWait();
	     showDone("완료되었습니다.", type);
	    } else {
	      //alert('Post ID: ' + response.id);
	      $( "#sns_return" ).val(response.id);
	      $( "#first_name_a" ).val(window.sessionStorage.getItem('first_name'));
		  $( "#last_name_a" ).val(window.sessionStorage.getItem('last_name'));
		  $( "#uid_a" ).val(window.sessionStorage.getItem('uid'));
		  $( "#access_token_a" ).val(window.sessionStorage.getItem('accessToken'));
		  $( "#sns_type_a" ).val(type);
		  $( "#sns_msg" ).val(msg);
		  $( "#sns_gid" ).val(gid);

	      var form = new FormData($("#surveyForm")[0]);
  	    	  $.ajax({
  	              data: form,
  	              processData: false,
  	              contentType: false,
  	              success: function(result){
  	            	  console.log("처리되었습니다. : "+result);
  	              },
  	              error: function(er){}
     				});
  	    	 hidePleaseWait();
  	    	 showDone("성공하였습니다.", type);
	    }
	  });    		
  	} else if (response.status === 'not_authorized') {
  		console.log('페이스북 로그인 되어 있지 않습니다.');
  		hidePleaseWait();
  		showDone("완료되었습니다.", type);
  	} else {
  		console.log('연결에 문제가 있습니다.');
  		hidePleaseWait();
     showDone("완료되었습니다.", type);
   		}
   	}, true); 
}

/**
   * 
 */
function sendNewsLetterEmail(){
	  var email = $("#semail").val();
  var para = '${sessionScope.eventPara}';
  $.post( "newsletter", { news_letter_email: email, para:para})
   .done(function( data ) {
	  //아래코드 잘 작동이 된다 성공하면 1 옴
 //alert( "Data Loaded: " + data );
   });
  alert("구독해주셔서 감사합니다.");
  }

/**
 * 
*/
function getUfo(param){
	if(checkLogin()){
	var uid = window.sessionStorage.getItem('uid');
	var para = '${sessionScope.eventPara}';
	$.post( "/PIX/ufogo/get/"+para+"/"+uid)
       .done(function( data ) {
        //alert( "Data Loaded: " + JSON.parse(JSON.stringify(data))[0].last_name );
        
        var go = JSON.parse(JSON.stringify(data));
        
        //$("#qrList").empty();
        
        for(var i = 0; i < go.length; i++){
        	if(go[i].ufo_go_type == 'qr'){
        	  	//중복을 막는 코드가 필요함 
        		$('#qr_yes_'+go[i].ufo_gid).show();
        	}else if(go[i].ufo_go_type == 'go'){
        		$('#stamp_yes_'+go[i].ufo_gid).show();
        	}
        }
        
        if(param == 'qr' && $("#qrNumber").val() != ''){
 				//보여줘 모달을 큐알 넘버로
 				var para = $("#qrNumber").val();
 				para = $.trim(para);
 				para = "#stamp_"+para+"_modal";
 				console.log(para);
 				if($(para).length > 0){
 					$(para).modal('show');
 				}else{
 					alert("잘못된 큐알 코드 입니다.");
 				}
        }else if(param == 'go'){
        	$('#stampRally').modal('show');
        }else if(param == 'qr'){
        	$('#qrRallyList').modal('show');
        }
        
       });
	
	}else{
		fbLogin(param);
		//alert("로그인을 해주세요.");
	}
}

/**
 * Displays overlay with "Please wait" text. Based on bootstrap modal. Contains animated progress bar.
 */
function showPleaseWait() {
    var modalLoading = '<div class="modal" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false role="dialog">\
    <div class="modal-dialog">\
        <div class="modal-content">\
            <div class="modal-header">\
                <h3 class="modal-title" style="font-family:football;" align="center">잠시만 기다려 주세요.</h3>\
            </div>\
            <div class="modal-body">\
                <div class="progress">\
                  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"\
                  aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; height: 40px">\
                  </div>\
                </div>\
            </div>\
        </div>\
    </div>\
</div>';
$(document.body).append(modalLoading);
$("#pleaseWaitDialog").modal("show");
}

/**
 * Hides "Please wait" overlay. See function showPleaseWait().
 */
function hidePleaseWait() {
    $("#pleaseWaitDialog").modal("hide");
}

/**<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 완료되었습니다.
 * Displays overlay with "Please wait" text. Based on bootstrap modal. Contains animated progress bar.
 */
function showDone(para, type) {
	var tt = type.substring(3, 5).toString();
    var modalLoading = '<div class="modal" id="showDone" data-backdrop="static" data-keyboard="false role="dialog">\
    <div class="modal-dialog">\
        <div class="modal-content">\
            <div class="modal-header">\
                <h3 class="modal-title" style="font-family:football;" align="center"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> ' + para.toString()+'</h3>\
            </div>\
            <div class="modal-body">\
                <div class="progress">\
                  <div class="progress-bar progress-bar-success active" role="progressbar"\
                  aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; height: 40px">\
                  </div>\
                </div>\
            </div>\
            <div class="modal-footer">\
    		<button type="button" style="font-family: NanumBarunGothic;" class="btn btn-default" data-dismiss="modal" onClick="getUfo(\''+tt+'\')">나의 기록보기</button>\
    		<button type="button" style="font-family: NanumBarunGothic;" class="btn btn-default" data-dismiss="modal">확인</button>\
    	  	</div>\
        </div>\
    </div>\
</div>';
$(document.body).append(modalLoading);
$("#showDone").modal("show");
}


function showModal(){
	$("#qrRallyResult").modal("show");
}
</script>

<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
<script>

var iconBase = '${pageContext.request.contextPath}/resources/ufo/assets/images/icons/';
var icons = {
  me:{//아이콘 svg로 me_icon01.png --> icon_me_30px-01.svg
	  icon: iconBase + 'icon_me_30px-01.svg'
  },
  ufoOn:{//아이콘 svg로 UFO_ON.png --> icon_pin_20px.svg
	  icon: iconBase + 'icon_pin_20px.svg'
  },
  ufoOff:{//아이콘 svg로 UFO_OFF.png --> icon_pin_15px_off.svg
	  icon: iconBase +'icon_pin_15px_off.svg'
  }
};
        
	var neighborhoods = [];
    var markers = [];
	var map;

	/**
     * The CenterControl adds a control to the map that recenters the map on
     * Chicago.
     * This constructor takes the control DIV as an argument.
     * @constructor
     */
    function CenterControl(controlDiv, map) {

      // Set CSS for the control border.
      var controlUI = document.createElement('div');
      controlUI.style.backgroundColor = '#fff';
      controlUI.style.border = '2px solid #fff';
      controlUI.style.borderRadius = '3px';
      controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
      controlUI.style.cursor = 'pointer';
      controlUI.style.marginBottom = '22px';
      controlUI.style.textAlign = 'center';
      controlUI.style.marginTop = '5px';
      controlUI.title = 'Click to recenter the map';
      controlDiv.appendChild(controlUI);

      // Set CSS for the control interior.
      var controlText = document.createElement('div');
      controlText.style.color = 'rgb(25,25,25)';
      controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
      controlText.style.fontSize = '16px';
      controlText.style.lineHeight = '38px';
      controlText.style.paddingLeft = '5px';
      controlText.style.paddingRight = '5px';
      controlText.innerHTML = '<img src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/icon_F5.svg" style="width: 35px; height: 35px;">';
      controlUI.appendChild(controlText);

      // Setup the click event listeners: simply set the map to Chicago.
      controlUI.addEventListener('click', function() {
        makeGo();
      });

    }
 /**
   * 
 */
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 18,
	    center: {lat: 37.75, lng: 128.87}
	  });
	
	 // Create the DIV to hold the control and call the CenterControl()
    // constructor passing in this DIV.
    var centerControlDiv = document.createElement('div');
    var centerControl = new CenterControl(centerControlDiv, map);
    
    centerControlDiv.index = 1;
    map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);

	makeGo();
}

	
/**
 * 
*/	
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
}
	
	
/**
 * 
*/	
function drop() {
  clearMarkers();
  for (var i = 0; i < neighborhoods.length; i++) {
    addMarkerWithTimeout(neighborhoods[i], i * 200);
  }
}
/**
 * 
*/
	

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


/**
 * 
*/	
function clearMarkers() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(null);
  }
  markers = [];
}
	
/**
 * 
*/	
function makeGo(){
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
    	neighborhoods = [];
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
          type: "me",
          content:'<h1 id="firstHeading" style="font-family:football">나</h1>'
        };
        
        $.post( "/PIX/get/ufogo/${sessionScope.eventPara}/")
	       .done(function( data ) {
	         var go = JSON.parse(JSON.stringify(data));		         
	         
	         for(var i = 0; i < go.length; i++){
	        	 var target = {};
	        	 target.lat = parseFloat((Number(go[i].go_lat)).toFixed(4));
	        	 target.lng = parseFloat((Number(go[i].go_alt)).toFixed(4));
	        	 target.content = '<p><h4 id="firstHeading" style="font-family:football;"><img id="stamp_back_${ele.ufo_gid }" style="opacity : 1; width:30px; padding-right:3px; float:left;" class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/back_stamp_01.svg">'+go[i].go_content+'</h3></p><br><button class="btn btn-social btn-facebook" onClick="getUfo('+"'go'"+')"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">스탬프 찍기</span></button>';
	        	 if((Math.pow(target.lat - pos.lat, 2) + Math.pow(target.lng - pos.lng, 2)) < Math.pow(parseFloat('${ufo.go_rad}'), 2) ){
	        		 target.type = "ufoOn";
	        		 $("#stamp_back_"+go[i].ufo_gid).hide();
	        		 $("#stamp_"+go[i].ufo_gid).show();
	        	 }else{
	        		 target.type = "ufoOff";
	        	 }
		         neighborhoods.push(target);
	         }
	         neighborhoods.push(pos);
	         map.setCenter(pos);
	         drop();
	    });
      }, function() {
    	var infoWindow = new google.maps.InfoWindow({map: map});
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
    	var infoWindow = new google.maps.InfoWindow({map: map});
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
	}
}
		
/**
 * 
*/			
function stampRally(){
	if(checkLogin()){
		getUfo('go');
	}else{
		fbLogin('go');
	}
}


/**
 * 
*/
function stampPostSubmit(para){
	if(checkLogin()){
		showPleaseWait();
		  $( "#first_name_go"+para ).val(window.sessionStorage.getItem('first_name'));
		  $( "#last_name_go"+para ).val(window.sessionStorage.getItem('last_name'));
		  $( "#uid_go"+para ).val(window.sessionStorage.getItem('uid'));
		  $( "#email_go"+para ).val(window.sessionStorage.getItem('email'));		  
		  var form = new FormData($("#stampForm"+para)[0]);
	      $.ajax({
	              url: '/PIX/ufogo/insert',
	              method: "POST",
	              dataType: 'json',
	              data: form,
	              processData: false,
	              contentType: false,
	              success: function(result){
	            	  console.log("처리되었습니다. : "+result);
	            	  var msg = "https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/go/"+window.sessionStorage.getItem('uid')+" 스탬프랠리를 참여하였습니다! ${ufo.ufo_tag}"  ;
   	            	  fbPost(msg, "fb_go", para);
	              },
	              error: function(er){}
	      });
	}else{
		fbLogin('qr');
	}
	
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN9VDOjhzw7kPKEbFw7LEVoVreCXiz87E&callback=initMap" async defer></script>
</c:if>	

<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
<script>

/**
 * 
*/
function qrRally(){
	if(checkLogin()){
		getUfo('qr');
	}else{
		fbLogin('qr');
	}
}

function qrRallyPost(para){
	showPleaseWait();
	$( "#first_name_go"+para ).val(window.sessionStorage.getItem('first_name'));
	$( "#last_name_go"+para ).val(window.sessionStorage.getItem('last_name'));
	$( "#uid_go"+para ).val(window.sessionStorage.getItem('uid'));
	$( "#email_go"+para ).val(window.sessionStorage.getItem('email'));	
	var form = new FormData($("#stampForm"+para)[0]);
 	  $.ajax({
           url: '/PIX/ufogo/insert',
           method: "POST",
           dataType: 'json',
           data: form,
           processData: false,
           contentType: false,
           success: function(result){
         	  console.log("처리되었습니다. : "+result);
         	  var msg = "https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/qr/"+window.sessionStorage.getItem('uid')+" 큐알코드랠리에 참여했네요! ${ufo.ufo_tag}"  ;
         	  $("#qrNumber").val('');
         	  fbPost(msg, "fb_qr", $.trim($("#qrNumber").val()));
         	  //location.reload();
           },
           error: function(er){}
			});
}
</script>
</c:if>
   