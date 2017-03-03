<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="shortcut icon" href="favicon.ico">
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
        height: 350px;
      }
    </style>
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
			<h2 class="headline">${ufo.title }</h2>
			<div class="intro">${ufo.event_date }</div><br>
			<div class="actions">
<!-- 				<button class="btn btn-social btn-facebook" onClick="surveyPostByFb()"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">페이스북 계정으로 이벤트 참여하기</span></button><br> -->
<!-- 				<button class="btn btn-social btn-facebook" onClick="alert('준비중입니다.')" style="background-color: YELLOW; color: BLACK"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">카카오톡 계정으로 이벤트 참여하기</span></button><br> -->
                 <a class="scrollto-no-offset" href="#page-nav">축제 정보 보러가기</a>
                 <a class="scrollto-no-offset" href="#page-nav"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="#support-section">제 7회 감천문화마을 골목축제</a></li>
					<li><a class="scrollto" href="#signup-section">스탬프랠리</a></li>
					<li><a class="scrollto" href="#info-section">감천문화마을 안내</a></li>
					<li><a class="scrollto" href="#app-section">앱 다운로드</a></li>
					<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->

<section id="support-section"
		class="support-section section text-center" style="padding-top:50px">
		<div class="team-figure">
		<div class="section-title">${ufo.event_short_description }</div><br>
		<div class="section-content" align="left">${ufo.event_long_description }</div><br>
		</div>
		<br><br>
		<!--//feature-list-->
		<!--//team-figure-->
</section>
	
<section id="signup-section" class="signup-section section">
		<div class="section-inner">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->

				<h2 class="counter-desc">감천문화마을 스탬프랠리 참여하기</h2>

				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">스탬프랠리를 완성 후, 감천문화마을 안내센터에서 선물과 교환하세요!</div>
						<div class="team-figure">
							<div id="map"></div>
						</div><br><br>
						<ul class="social-buttons list-unstyled">
							<!-- <li><a href="#" class="btn btn-social btn-google"><i
									class="fa fa-google" aria-hidden="true"></i><span
									class="btn-text">Sign up with Google</span></a></li> -->
							<li><button class="btn btn-social btn-facebook" onClick="surveyPostByFb()"><i
									class="fa fa-facebook" aria-hidden="true"></i><span
									class="btn-text">페이스북 계정으로 이벤트 참여하기</span></button></li>
							<li>
								<button class="btn btn-social btn-facebook" onClick="alert('준비중입니다.')" style="background-color: YELLOW; color: BLACK"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">카카오톡 계정으로 이벤트 참여하기</span></button><br>
							</li>		
						</ul>
						<!--//social-buttons-->
						<div class="divider">
						</div>
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										<blockquote class="result">감천문화마을 스탬프랠리 참여방법</blockquote>
										<!--//blockquote-->
										<div class="tip">1. GPS를 켜고, 위치정보 사용에 동의하기!<br>2. 페이스북/카카오톡 로그인하기!<br>3. 지도에서 현재 위치와 포토존 확인하기!<br>4. 포토존에서 사진을 찍고, 스탬프 받기!<br>5. 스탬프 랠리 완성 후, 안내센터에서 선물 받기!</div>
										<!--//source-->
									</div>
									<!--//inner-->
								</div>
								<!--//quote-item2-->			
							</div>
							<!--//row-->
						</div>
						<!--//quotes-->			
						<button onClick="sendNewsLetterEmail();" class="btn btn-primary btn-cta">구독하기</button>
						<!--//divider-->
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->

			</div>
			<!--//container-->
		</div>
		<!--//section-inner-->
	</section>
	
<section id="info-section">
	<!--//signup-section-->
	<div class="feature-blocks container">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row">
				<!-- <div class="feature-content col-md-4 col-sm-6 col-xs-12"> -->
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<h3 class="feature-title">${info.title }</h3>
					<div class="feature-desc">
						<p>${info.content }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
<!-- 				<div class="feature-figure col-md-8 col-sm-6 col-xs-12"> -->
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<div class="figure-holder" align="center">
					<c:if test="${info.photo_file ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${info.photo_file}"
							alt="">
					</c:if>
					<c:if test="${info.photo_file eq null}">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/dano_feature01.jpg"
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
				<div
					class="feature-content col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">${hist.title }</h3>
					<div class="feature-desc">
						<p>${hist.content }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder" align="center">
						<c:if test="${hist.photo_file ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${hist.photo_file}"
							alt="">
						</c:if>
						<c:if test="${hist.photo_file eq null}">
							<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/dano_feature02.jpg"
							alt="">
						</c:if>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-2-->
		<div id="feature-block-3" class="feature-block feature-block-3">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">${prog.title }</h3>
					<div class="feature-desc">
						<p>${ufo.event_date }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<p>${prog.content }</p>
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<div id="feature-block-4" class="feature-block feature-block-3">
			<div class="row">
				<div class="feature-content col-md-4 col-sm-6 col-xs-12">
					<h3 class="feature-title">행사장 찾아오는 길</h3>
					<div class="feature-desc">
						<p>${ufo.info_location_text }</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div class="feature-figure col-md-8 col-sm-6 col-xs-12">
					<div class="figure-holder">
						<c:if test="${ufo.info_location_pic ne null}">
						<img class="img-responsive"
							src="https://www.ufo79.com/image/${ufo.info_location_pic}"
							alt="">
						</c:if>
						<c:if test="${ufo.info_location_pic eq null}">
							<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/dano_feature02.jpg"
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
<!-- 	<section id="features-section" class="features-section section"> -->
</section>

	<section id="app-section" class="apps-section section text-center">
		<h2 class="section-title">${ufo.title } 앱 다운로드</h2>
		<div class="container">
			<ul class="apps-list list-inline">
				<li><a class="btn btn-download-app btn-apple-download" href="#"><i
						class="fa fa-apple" aria-hidden="true"></i> <span class="btn-text"><span
							class="intro-text">Download on the</span><span class="main-text">App
								Store</span></span></a></li>
				<li><a class="btn btn-download-app btn-andriod-download"
					href="#"><i class="fa fa-android" aria-hidden="true"></i> <span
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
<%-- <section id="survey-section"
		class="support-section section text-center">
<h2 class="section-title">${ufo.title } 서베이</h2>

<div class="stories container">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
		<div id="story-block-${statusEle.count }" class="story-block story-block-${ele.question }">

			<div class="story-item">
				<div class="row">
					<div class="figure-holder col-sm-12 col-sm-6 col-md-7">
						<div class="inner">
<!-- 						우선 단오제용 -->
<!-- 							<img class="img-responsive" -->
								src="${pageContext.request.contextPath}/resources/pix/img/${ele.ques_img }.png"
<!-- 								alt=""> -->
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/stories/dano_survey_thumb0${statusEle.count }.jpg"
								alt="">
							<div class="figure-mask"></div>
						</div>
						<!--//inner-->
					</div>
					<!--//figure-holder-->
					<div class="content col-sm-12 col-sm-6 col-md-5">
						<div class="inner">
							<h3 class="question"><span class="question-number">문항 ${statusEle.count }.</span>${ele.question }</h3>
							<c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
								<div class="answer">${status.count}. ${var.q_option }<span class="percentage">${var.percent }%</span></div>
							</c:forEach>
							<!--//desc-->
						</div>
						<!--//inner-->
					</div>
					<!--//content-->
				</div>
				<!--//row-->
			</div>
			<!--//story-item-->

			<div class="quotes">
				<div class="row">
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[0].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과1위) ${ele.questionOptions[0].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">우리나라 단오의 특성</span><br>1. 풍년을 기원하는 파종제로서의 단오<br>2. 풍년을 기원하는 파종제로서의 단오<br>3. 풍년을 기원하는 파종제로서의 단오</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[1].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과2위) ${ele.questionOptions[1].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">강릉의 3대 명소</span><br>1. 빙상 베뉴가 모여있는 강릉 올림픽 파크<br>2. 경포호와 경포해변이 한눈에 보이는 경포대<br>3. 강릉의 자랑 오죽헌</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->

				</div>
				<!--//row-->
			</div>
			<!--//quotes-->
		</div>
		<!--//story-block-->
</c:forEach>
</div>
</section> --%>
	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
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
		          }
		        };
		        
				var neighborhoods = [
				  {lat:37.7737, lng:128.8927, type:'parking', content:'포인트'},
                  {lat:37.7739, lng:128.8929, type:'info', content:'1번 포키'},
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
	              type: "library"
	            };
	  
	           
	            var target = {};
	            //alert(pos.lat);
	          	//소수점 네자리의 위치 구하기
				//alert(parseFloat(Math.round(pos.lat * 100) / 100).toFixed(4)+" "+parseFloat(Math.round(pos.lng * 100) / 100).toFixed(4));
	            //infoWindow.setPosition(pos);
	            //infoWindow.setContent('지금 여기 있으십니다!');
	            target.lat = parseFloat((pos.lat+ 0.0001).toFixed(4));
	            target.lng = parseFloat((pos.lng+ 0.0001).toFixed(4));
	            target.type = "parking";
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
	
</body>
</html>

