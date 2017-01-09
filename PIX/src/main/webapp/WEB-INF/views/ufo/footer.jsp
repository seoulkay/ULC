<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ******FOOTER****** -->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title"><a href="#">UFO79.com</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
			<div class="footer-col col-xs-6 col-sm-2">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="#">이용약관</a>
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
						<a href="#">쿠키정책</a>
					</div>
				</div>
			</div>
			<!--//footer-col-->
		</div>
		<!--//row-->
		<div class="divider"></div>
		<div class="footer-bottom text-center">
			<ul class="social-media list-inline">
				<li><a href="http://www.twitter.com/"><i
						class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="http://www.facebook.com/"><i
						class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="http://www.google.com/"><i
						class="fa fa-google-plus" aria-hidden="true"></i></a></li>
				<li><a href="http://www.instagram.com/"><i
						class="fa fa-instagram" aria-hidden="true"></i></a></li>
			</ul>

			<small class="copyright"><a href="http://www.ufo79.com/"
				target="_blank">© UFO79 Corp.</a></small>
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
						<li><a href="#" class="btn btn-social btn-facebook btn-block"><i
								class="fa fa-facebook" aria-hidden="true"></i><span
								class="btn-text">페이스북으로 로그인하기</span></a></li>
					</ul>
				</div>
				<div class="divider">
					<span class="or-text">OR</span>
				</div>
				<div class="modal-header2">
				<h4 id="loginModalLabel" class="modal-title text-center">이메일주소로 로그인하기</h4>
				</div>
				<div class="login-form-container">
					<form class="login-form">
						<div class="form-group email">
							<i class="material-icons icon">&#xE0BE;</i> <label
								class="sr-only" for="login-email">이메일주소</label> <input
								id="login-email" name="login-email" type="email"
								class="form-control login-email" placeholder="이메일주소">
						</div>
						<!--//form-group-->
						<div class="form-group password">
							<i class="material-icons icon">&#xE897;</i> <label
								class="sr-only" for="login-password">비밀번호</label> <input
								id="login-password" name="login-password" type="password"
								class="form-control login-password" placeholder="비밀번호">
							<div class="extra">
								<div class="checkbox remember">
									<label> <input type="checkbox">로그인 상태 유지</label>
								</div>
								<!--//check-box-->
								<div class="forgotten-password">
									<a href="#" id="resetpass-link" data-toggle="modal"
										data-target="#resetpass-modal">비밀번호 찾기</a>
								</div>
							</div>
							<!--//extra-->
						</div>
						<!--//form-group-->
						<button type="submit" class="btn btn-cta btn-block btn-primary">로그인 하기</button>
					</form>
				</div>
				<!--//login-form-container-->

				<div class="option-container">
					<div class="lead-text">계정이 없으신가요?</div>
					<a class="signup-link btn btn-ghost-alt" id="signup-link" href="#">회원가입</a>
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
						<li><a href="#" class="btn btn-social btn-google btn-block"><i
								class="fa fa-google" aria-hidden="true"></i><span
								class="btn-text">구글 계정으로 회원가입</span></a></li>
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

<%-- <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->
	<div id="config-panel" class="config-panel hidden-xs hidden-sm">
		<div class="panel-inner">
			<a id="config-trigger" class="config-trigger config-panel-hide"
				href="#"><i class="fa fa-cog"></i></a>
			<ul id="color-options" class="list-unstyled list-inline">
				<li class="theme-1 active"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css"
					href="#"></a></li>
				<li class="theme-2"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-2.css"
					href="#"></a></li>
				<li class="theme-3"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-3.css"
					href="#"></a></li>
				<li class="theme-4"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-4.css"
					href="#"></a></li>
				<li class="theme-5"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-5.css"
					href="#"></a></li>
				<li class="theme-6"><a
					data-style="${pageContext.request.contextPath}/resources/ufo/assets/css/styles-6.css"
					href="#"></a></li>
			</ul>
			<a id="config-close" class="close" href="#"><i
				class="fa fa-times-circle"></i></a>
		</div>
		<!--//panel-inner-->
	</div>
	<!--//configure-panel--> --%>

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
<script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/js/vimeo.js"></script>

<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
<script
	src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>
