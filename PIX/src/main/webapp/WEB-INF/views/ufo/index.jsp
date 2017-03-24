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
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
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


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
      

  <!-- Fine Uploader New/Modern CSS file
    ====================================================================== -->
    <link href="${pageContext.request.contextPath}/resources/ufo/assets/css/fine-uploader-new.css" rel="stylesheet">

    <!-- Fine Uploader JS file
    ====================================================================== -->
    <script src="${pageContext.request.contextPath}/resources/ufo/assets/js/jquery.fine-uploader.min.js"></script>

    <!-- Fine Uploader Thumbnails template w/ customization
    ====================================================================== -->
    <script type="text/template" id="qq-template-validation">
        <div class="qq-uploader-selector qq-uploader" qq-drop-area-text="Drop files here">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
                <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
                <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="qq-upload-button-selector qq-upload-button">
                <div>Select files</div>
            </div>
            <span class="qq-drop-processing-selector qq-drop-processing">
                <span>Processing dropped files...</span>
                <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">
                <li>
                    <div class="qq-progress-bar-container-selector">
                        <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
                    </div>
                    <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                    <img class="qq-thumbnail-selector" qq-max-size="100" qq-server-scale>
                    <span class="qq-upload-file-selector qq-upload-file"></span>
                    <span class="qq-upload-size-selector qq-upload-size"></span>
                    <button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>
                    <button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>
                    <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>
                    <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                </li>
            </ul>

            <dialog class="qq-alert-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Close</button>
                </div>
            </dialog>

            <dialog class="qq-confirm-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">No</button>
                    <button type="button" class="qq-ok-button-selector">Yes</button>
                </div>
            </dialog>

            <dialog class="qq-prompt-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <input type="text">
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Cancel</button>
                    <button type="button" class="qq-ok-button-selector">Ok</button>
                </div>
            </dialog>
        </div>
    </script>
</head>

<body data-spy="scroll" data-target="#page-nav" class="blog-page">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->

	<section class="heading-section section section-on-bg">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.main_image})"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
			<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
			<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
			
			<div class="actions">
                 <a class="scrollto-no-offset" href="#support-section"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="#support-section">공지사항</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li><a class="scrollto" href="#signup-section">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}"><li><a class="scrollto" href="#qr-section">큐알</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li><a class="scrollto" href="#survey-section">서베이</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}"><li><a class="scrollto" href="#info-section">축제정보</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'app')}"><li><a class="scrollto" href="#app-section">앱</a></li></c:if>
					<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

<section id="support-section" class="support-section section text-center" style="padding:1em;">
		<div class="team-figure" >
					
		<div class="row">
			<div class="col-sm-1" >
				<img src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/ic_volume_up_white_24px.svg"style="padding-top: 0.5em">
			</div>
			<div class="col-sm-11 ">
				<marquee><h4 style="white-space:nowrap;"> <c:forEach items="${noticeList }" var="ele">${ele.title} <span style="color: #ED45A4; ">||</span> </c:forEach> </h4></marquee>
			</div>
		</div>
		<c:if test="${not empty ufo.fb_live }">
		<div class="row">
			<div class="fb-video" data-href="${ufo.fb_live }" data-width="500" data-show-text="false"></div>
		</div>
		</c:if>
		<div class="section-title">${ufo.event_short_description }</div><br>
		<div class="section-content" align="left" style="padding:10px;">${ufo.event_long_description }
		</div>
		
		</div>
		<!--//feature-list-->
		<!--//team-figure-->
</section>
	
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
							<li><button class="btn btn-warning" onClick="redirectGallery('go')" style="margin:3px"><span class="btn-text">갤러리로 가기</span></button> <button class="btn btn-social btn-facebook" onClick="getUfo('go')" style="margin:3px"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">스탬프 찍기</span></button></li>
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
				<div style="height:2em"></div>
				
				<div class="section-inner">
			<div class="container text-center">
			<div class="form-wrapper">
				<h2 class="counter-desc">투표하기</h2>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<div class="form-wrapper">
					<div class="form-box">

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" id="caro1">
      <div class="fb-post" data-href="https://www.facebook.com/kay.i.lee.12/posts/1288671967846512" data-width="350" data-show-text="true"></div>
    </div>

    <div class="item" id="caro2">
      <div class="fb-post" data-href="https://www.facebook.com//kay.i.lee.12/posts/1288565161190526" data-width="350" data-show-text="true"></div>
    </div>

    <div class="item" id="caro3">
      <div class="fb-post" data-href="https://www.facebook.com/kay.i.lee.12/posts/1288671967846512" data-width="350" data-show-text="true"></div>
    </div>

    <div class="item" id="caro4">
     <div class="fb-post" data-href="https://www.facebook.com//kay.i.lee.12/posts/1283247045055671" data-width="350" data-show-text="true"></div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="background-image: none;">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="background-image: none;">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>	
</div>
</div>
</div>
</div>
</div>
		</c:if>
				
<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
	<div id="qr-section" style="height:5em"></div>
				<h2 class="counter-desc">큐알코드랠리 참여하기</h2>
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">${ufo.ufo_qr_title }</div>
						<div class="team-figure">
							<div class="subscribe-form form-inline" novalidate="novalidate">
				                <div class="form-group">
					                <img class="img-responsive" src="https://www.ufo79.com/image/${ufo.qr_pic }" style="margin-left: 0 auto; margin-right: 0 auto;">
				                	<br>
				                    <input type="password" id="qrNumber" class="form-control email-field" placeholder="코드를 넣어주세요" value="${gid}" name="qrNumber" required="" aria-required="true">
				                    <button class="btn btn-primary" onClick="qrRally();" style="margin:1em">큐알코드 인증</button>  
				                </div>                              
				            </div>
						</div>
						<br><br>
						<div class="divider">
						</div>
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner" style="padding-top:45px; padding-left:15px; padding-right:15px; padding-bottom: 20px;">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										${ufo.ufo_qr_desc }
										<!--//source-->
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
<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}">
			<div id="survey-section" style="height:5em"></div>
			<h2 class="counter-desc">서베이 참여하기</h2>
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">${ufo.ufo_survey_title }</div>
						<div class="team-figure">
							<div class="subscribe-form form-inline" novalidate="novalidate">
				                <div class="form-group">
				                    <button class="btn btn-primary" onClick="surveyInit();" style="margin:1em">서베이에 참여!</button>  
				                    <button class="btn btn-primary" onClick="getUfo('ve');" style="margin:1em">서베이결과</button>  
				                </div>                              
				            </div>
						</div>
						<br><br>
						<div class="divider">
						</div>
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner" style="padding-top:45px; padding-left:15px; padding-right:15px; padding-bottom: 20px;">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										<!--//blockquote-->
										<div class="tip">
										${ufo.ufo_survey_desc }
										</div>
										<!--//source-->
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
			<!--//container-->
		</div>
		<!--//section-inner-->
	</section>
<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}">
<section id="info-section">
	<!--//signup-section-->
	<div class="feature-blocks container">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row">
				<!-- <div class="feature-content col-md-4 col-sm-6 col-xs-12"> -->
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<h3 class="feature-title">${ufo.info_title }</h3>
					<div class="feature-desc">
						<p>${ufo.info_info_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
<!-- 				<div class="feature-figure col-md-8 col-sm-6 col-xs-12"> -->
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<div class="figure-holder" align="center">
					<c:if test="${ufo.info_info_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_info_pic}"
							alt="">
					</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-1-->
		<div id="feature-block-2" class="feature-block feature-block-2">
			<div class="row">
				<div class="feature-content col-md-12 col-sm-12 col-xs-12" >
					<h3 class="feature-title">${ufo.program_title }</h3>
					<div class="feature-desc">
						<p>${ufo.info_program_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
			</div>
			<!--//row-->
		</div>

		<!--//feature-block-2-->
		<div id="feature-block-3" class="feature-block feature-block-1">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">${ufo.history_title }</h3>
					<div class="feature-desc">
						<p>${ufo.info_hist_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<c:if test="${ufo.info_hist_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_hist_pic}"
							alt="">
						</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-3-->
	</div>
</section>	
<!-- 	<div class="stories container"> -->
		<div id="story-block-1" class="story-block story-block-1">
			<div class="story-item">
				<div class="row">
					<div class="figure-holder col-sm-12 col-sm-6 col-md-7">
						<div class="inner">
						<c:if test="${ufo.info_location_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_location_pic}"
							alt="">
						</c:if>
							<div class="figure-mask"></div>
						</div>
						<!--//inner-->
					</div>
					<!--//figure-holder-->
					<div class="content col-sm-12 col-sm-6 col-md-5">
						<div class="inner">
							<h3 class="question">${ufo.location_title }</h3>
								<div class="answer">${ufo.info_location_text }</div>
								<div class="answer">${ufo.info_contact_text }</div>
							<!--//desc-->
						</div>
						<!--//inner-->
					</div>
					<!--//content-->
				</div>
				<!--//row-->
			</div>
			<!--//story-item-->
		</div>
		<!--//story-block-->
<!-- 	</div> -->
<!-- 	<section id="features-section" class="features-section section"> -->

</c:if>
<c:if test="${fn:contains(sessionScope.eventMenu, 'newsletter')}">
	<section id="app-section" class="apps-section section text-center">
		<div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">${ufo.title } 뉴스레터 구독하기</h3>
            <div class="block-intro">${ufo.title }의 소식을 보내드립니다.</div>
            <div class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail"  type="email" class="form-control email-field" placeholder="이메일 주소를 입력하세요." name="email" required="" aria-required="true">
                    <button class="btn btn-primary" onClick="sendNewsLetterEmail();">구독하기</button>  
                </div>                              
            </div>
        </div><!--//container-->
    </div><!--//blog-signup-block-->
	</section>
	<!--//apps-section-->
</c:if>

<c:if test="${fn:contains(sessionScope.eventMenu, 'app')}">
<section id="app-section" class="apps-section section text-center">
		<h2 class="section-title">${ufo.title } 앱 다운로드</h2>
		<div class="container">
			<ul class="apps-list list-inline">
				<li><a class="btn btn-download-app btn-apple-download" href="#"><i
						class="fa fa-apple" aria-hidden="true"></i> <span class="btn-text"><span
							class="intro-text">Download on the</span><span class="main-text">App
								Store</span></span></a></li>
				<li><a class="btn btn-download-app btn-andriod-download"
					href="https://www.ufo79.com/image/${ufo.apk_name }"><i class="fa fa-android" aria-hidden="true"></i> <span
						class="btn-text"><span class="intro-text">Get it on</span><span
							class="main-text">Google Play</span></span></a></li>
				<!-- <li><a class="btn btn-download-app btn-windows-download"
					href="#"><i class="fa fa-windows" aria-hidden="true"></i> <span
						class="btn-text"><span class="intro-text">Download
								from</span><span class="main-text">Windows Phone Store</span></span></a></li> -->
			</ul>
			<!--//apps-list-->
		</div>
		<!--//container-->
</section>
<!--//apps-section-->
</c:if>
	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->

</body>
</html>