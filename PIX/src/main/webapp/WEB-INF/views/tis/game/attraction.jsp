<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<fmt:bundle basename="application">

<head>
    
    <!-- Your Basic Site Informations -->
	<title>TIS</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="ATOS Trip information system">
	<meta name="author" content="Pyeognchang team">
    
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,700" rel="stylesheet" type="text/css">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>   
    
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/tis/css/style.css">
    <script src="${pageContext.request.contextPath}/resources/tis/js/main.js"></script>
    
 
    <!--<link rel="stylesheet" href="css/colors/pink/color.css">-->
    <!--<link rel="stylesheet" href="css/colors/yellow/color.css">-->
    
    <!--[if lt IE 9]>
    	<script src="js/html5.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->
    
    <!--[if lt IE 8]>
    	<link rel="stylesheet" href="css/ie-older.css">
    <![endif]-->
    
    
    <!-- Favicons -->
	<link rel="shortcut icon" href="<fmt:message key="baseurl"></fmt:message>/image/favicon.ico">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div>
	<!--     navbar -->
    <jsp:include page="../common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</div>
<div class="container on-the-fly-behavior">
	<section id="anchor1">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row title-row-style">
				<!-- 1 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal1" >
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Gyeongpo Beach</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/1_Gyeongpo Beach.png">
						<div class="middle">
							<div class="text-effect1">Gyeongpo Beach</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal2">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Jeongdongjin Beach</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/2_Jeongdongjin Beach.png">
						<div class="middle">
							<div class="text-effect1">Jeongdongjin Beach</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal3">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Ojukheon</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/3_Ojukheon.png">
						<div class="middle">
							<div class="text-effect1">Ojukheon</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">				
				<!-- 2 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal4">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Gyeongpodae</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/4_Gyeongpodae.png">
						<div class="middle">
							<div class="text-effect1">Gyeongpodae Pavilion</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal5">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Charmosri Museum</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/5_Charmsori.png">
						<div class="middle">
							<div class="text-effect1">Charmsori Gramophone & Edison Science Museum</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal6">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Seongyojang</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/6_Seongyojang.png">
						<div class="middle">
							<div class="text-effect1">Gangneung Seongyojang</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">
				<!-- 3 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal7">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Jumunjin Port</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/7_Jumunjin.png">
						<div class="middle">
							<div class="text-effect1">Jumunjin Port</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal8">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Haslla Art World</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/8_Haslla Art.png">
						<div class="middle">
							<div class="text-effect1">Haslla Art World</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal9">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Gangneung Unification Park</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/9_Unification Park.png">
						<div class="middle">
							<div class="text-effect1">Gangneung Unification Park</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">
				<!-- 4 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal10">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Chodang Dubu Village</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/10_Chodang.png">
						<div class="middle">
							<div class="text-effect1">Chodang Dubu Village</div>
						</div>					
					</div>
				</div>				
			</div>			
		</div>		
	</section>
	<section id="anchor2">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row title-row-style">
				<!-- 11 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal11">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Woljeongsa Temple</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/11_Woljeongsa.png">
						<div class="middle">
							<div class="text-effect2">Woljeongsa Temple</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal12">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Daegwallryeong Samyang Ranch</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/12_DGR Samyang.png">
						<div class="middle">
							<div class="text-effect2">Daegwallryeong Samyang Ranch</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal13">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Daegwallryeong Sheep Ranch</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/13_DGR Sheep.png">
						<div class="middle">
							<div class="text-effect2">Daegwallryeong Sheep Ranch</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">				
				<!-- 12 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal14">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Odaesan National Mountain</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/14_Odaesan.png">
						<div class="middle">
							<div class="text-effect2">Odaesan National Park</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal15">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Herb Nara</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/15_HerbNara.png">
						<div class="middle">
							<div class="text-effect2">Herb Nara</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal16">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Kensington Flora Garden</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/16_Kensington.png">
						<div class="middle">
							<div class="text-effect2">Kensington Flora Garden</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">
				<!-- 13 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal17">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Lee Hyo Seok Literature Forest</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/17_HyoSeok.png">
						<div class="middle">
							<div class="text-effect2">Lee Hyo Seok Literature Forest</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal18">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Daegwallyeong Sky Ranch</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/18_DGR Sky.png">
						<div class="middle">
							<div class="text-effect2">Daegwallyeong Sky Ranch</div>
						</div>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal19">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Jeonggangwon</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/19_Jeonggangwon.png">
						<div class="middle">
							<div class="text-effect2">Jeonggangwon</div>
						</div>					
					</div>
				</div>
			</div>
			<div class="row title-row-style">
				<!-- 14 -->
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con" data-toggle="modal" data-target="#myModal20">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Pyeongchang Olympic Market</span></h5>
						<img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/20_OlympicMarket.png">
						<div class="middle">
							<div class="text-effect2">Pyeongchang Olympic Market</div>
						</div>					
					</div>
				</div>			
			</div>			
		</div>		
	</section>
	<!-- Modal 1-->
	<div id="myModal1" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Gyeongpo Beach / 경포해변
	      </div>
	      <div class="modal-body-style modal-body">
		    <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/1_Gyeongpo Beach.png">
	        <p>Located 1km away from Gyeongpodae, Gyeongpo Beach is a sand bank formed between Gyeongpo Lake and the ocean. This beautiful beach extends to a length of 6 km and is covered with fine sand. It is a very well-known tourist attraction within Korea: a flawless combination of nature and cultural relics. </p>
	        <p>Gyeongpo Beach is famous for its picturesque sunrise and tranquil moonrise. There are other nearby attractions in the area, like the pine forest (4 km) and wild roses, which grow in various areas around the beach. Those who enjoy ocean fishing can take a boat to the mall rocks just off the beach. There is an endless line of tourists, who come to visit the ancient buildings with their incredible scenery, like Gyeongpodae and Ojukheon. </p>
	        <p>In the spring, the Festival of Cherry Blossoms is held at the entrance to Gyeongpo Beach and in the summer, the Beach Festival and other various cultural events are held. (Traditional Literary Event, Beach Dance Festival, etc.)</p>
	        <h5>Notices</h5>
	        <p>Beach Swimming Period: July 7 - August 20, 2017<br>- Operating hours: 06:00-24:00 (Swimming 09:00-18:00)</p>
	        <h5>Address</h5>
	        <p>Gangmun-dong San1 & Anhyeon-dong San1, Gangneung-si, Gangwon-do<br>강원도 강릉시 안현동 산1, 강문동 산1</p>
	        <h5>Type</h5>
	        <p>Seasides/ Beaches/ Islands</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-640-5130, +82-33-640-5129</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.gntour.go.kr" target="_blank">www.gntour.go.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 2-->
	<div id="myModal2" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Jeongdongjin Beach / 정동진해변
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/2_Jeongdongjin Beach.png">
	        <p>The nice, sandy beach stretches over 250m and has three major swimming spots: in front of Jeongdongjin Railway Station, at Moraeshigae Park, and at the Jeongdongjin Seawalls. The spots near the railway station and at the park are more popular because they are spacious and easy to reach, with Moraeshigae Park having the added bonus of welcoming swimmers both day and night. The numerous rocks in front of Jeongdongjin Railway Station are home to shellfish, mussels, sea urchins and sea mustard.</p>
	        <p>Aside from swimming, visitors can further appreciate the beauty of nature by checking out the Sculpture (Sunrise) Park and Heonhwaro, located to the south of the park. The Jeongdongjin Sunrise Tourist Train has become a crowd favorite as well, ever since its premier run in 1997.</p>
	        <p>Despite the park’s many attractions, nothing can compare to its sunrise view. Many visitors to the park trek up to the summit of Mt. Goseong, located at the park’s center, to the Yeongin Pavilion, a prime location for catching the sun’s first rays.</p>
	        <h5>Notices</h5>
	        <p>Beach opening: July 1-August 20, 2017<br>- Operating hours: 06:00-24:00<br>- Swimming hours: 09:00-18:00</p>
	        <h5>Address</h5>
	        <p>17, Jeongdongyeok-gil, Gangneung-si, Gangwon-do<br>강원도 강릉시 강동면 정동역길 17 (강동면)</p>
	        <h5>Type</h5>
	        <p>Seasides/ Beaches/ Islands</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-640-4414, +82-33-640-5125, +82-33-660-3598, +82-33-660-3596</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.gntour.go.kr" target="_blank">www.gntour.go.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 3-->
	<div id="myModal3" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Ojukheon / 오죽헌
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/3_Ojukheon.png">
	        <p>Ojukheon is an important house which shows the lifestyle of the Joseon Dynasty (1392-1910). It is one of the oldest preserved Korean houses. In Mongryongsil room of Ojukheon, one of Korea's great men, Yulgok Yi-I (1536-1584) was born. It is told that his mother Sin Saimdang, also a heroin in Korean history, had dream of a dragon before she gave birth to Yulgok. In rememberance of his birth, the Yulgok Festival is held annually at Ojukheon. There are many traditional materials and regional remains which are displayed in the private museum. You can find the painting of Yulgok in Munseongsa (the ancestral shrine of Yulgok).</p>
	        <p>In the Yulgok Memorial Hall you can see the artwork of the talented Yulgok family. In addition, various Buddhist artwork, ceramics, pictures and common living appliances are on display in the Folk Tradition Hall, History Culture Hall, and the outdoor exhibition area. Near the Ojukheon Municipal Museum is Gyeongpo Beach and Sungyojang, the house of a high-class family of the Joseon Dynasty. At Gyeongpo Beach, you can relax sitting by the sea and the pine tree forest. You can also stop by the Chamsori Museum where about 1,600 phonographs from Edison's inventions to up-to-date audios are kept.</p>
	        <h5>Address</h5>
	        <p>24, Yulgok-ro 3139beon-gil, Gangneung-si, Gangwon-do<br>강원도 강릉시 율곡로3139번길 24 (죽헌동)</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-640-3301~3308</p>
	        <h5>Operating Hours</h5>
	        <p>Summer season: 08:00-18:00<br>Winter season: 08:00-17:30<br>* Last admission: 30min before closing</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 4-->
	<div id="myModal4" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Gyeongpodae Pavilion / 강릉 경포대
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/4_Gyeongpodae.png">
	        <p>Gyeongpodae Pavilion is famous for the view of the moon on the 15th day of the first lunar month. It is a large, tall pavilion, and its architectural feature of a paljak (eight-point) roof, is the most common form used in Korean buildings. It has been designated as Regional Cultural Asset No. 6. Its structure is divided into 6 sections in the front, and 5 sections at the side, with 28 pillars surrounding the pavilion. Located inside is Gyeongpodaebu, which was written by Yulgok (1536-1584) when he was only 10 years old. It describes the slow and leisurely movement of the heavens, making it even more distant, and the clear, bright moon shimmering in the darkness. There is also a poem written by Sukjong (1095-1105), the 15th king of the Goryeo Dynasty, and many other literary records and poetry of famous artists like Cho Hamang’s (1682-1747) Sangryangmun.</p>
	        <p>In the Geyongpodae area there are 12 other pavilions, including Geumnanjeong, Gyeonghojeong, Banghaejeong and Haeunjeong. You can enjoy Gyeongpodae, and its place in the surrounding nature, just as you would enjoy seeing artwork at a museum. It is best to visit between March and October.</p>
	        <h5>Address</h5>
	        <p>365, Gyeongpo-ro, Gangneung-si, Gangwon-do<br>강원도 강릉시 경포로 365 (저동)</p>
	        <h5>Type</h5>
	        <p>Seasides/ Beaches/ Islands</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-640-5420</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.gntour.go.kr" target="_blank">www.gntour.go.kr</a><br><a href="http://www.cha.go.kr">www.cha.go.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 5-->
	<div id="myModal5" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Charmsori Gramophone & Edison Science Museum / 참소리축음기 & 에디슨과학박물관
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/5_Charmsori.png">
	        <p>Charmsori Gramophone & Edison Science Museum founded by Son Seongmok is the largest gramophone museum in the world. It has a collection of 4,500 phonographs, 150,000 phonograph records, 1,000 books, and 5,000 items from 20 nations. </p>
	        <p>1) World of Sound: The place for history of Sound. It displays gothic and renaissance organs, music boxes, radios and record players.</p>
	        <p>2) World of Image: The place for silent films and biography films of masterminds and Edison. It displays Edison projectors and televisions, especially one made by Baird, John Logie (1888.8.13 ~ 1946.6.14) in 1925.</p>
	        <p>3) World of Light: Displays items from Gas lamps to the original light bulb that Edison made, an electric generator of those days, the bamboo filament light bulb and the first wall-attached electric lamp. The wall-attached electric lamp is the part of the collection that was successfully accepted at Sotheby's auction in 1992.</p>
	        <p>4) Edison Invention Hall: Displays 850 inventions of Edison's, including t three of his greatest inventions - phonographs, light bulbs and projectors. Also on display are autographed letters and articles used by Edison.</p>
	        <p>5) EDISON & H.FORD Hall : The battery car invented by Edison, "T" car by Ford, Henry and Grants Ham by HMV, phonograph company in England can be found here.</p>
	        <h5>Address</h5>
	        <p>393, Gyeongpo-ro, Gangneung-si, Gangwon-do<br>강원도 강릉시 경포로 393 (저동)</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info +82-33-655-1130~2</p>
	        <h5>Operating Hours</h5>
	        <p>09:00-18:00<br>* Last admission: 16:30</p>
	        <h5>Length of Tour</h5>
	        <p>Approx 40-60min</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 6-->
	<div id="myModal6" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Gangneung Seongyojang / 강릉 선교장
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/6_Seongyojang.png">
	        <p>Seongyojang is the former upper class residence of the Naebeon Lee (1703-1781) noble family of Gangneung-si, Gangwon-do. It was designated Important Folklore Material No. 5 in 1967. The meaning of "Seon", in Seongyojang, is boat. Gyeongpo Lake was directly in front of Seongyojang at the time it was built, thus making is accessible by boat. Gyeongpo Lake at one time reached the enormous circumference of 12km. Its size has reduced by 4km over the years and its depth has decreased by 1-2 meters.</p>
	        <p>It is said that 10 generations of descendents of Naebeon Lee have continued to live at Seongyojang. The house is in fact one of the top 10 most well preserved original dwellings in Korea that was constructed over the past 300 years.</p>
	        <p>Yeolhwadang is considered the most important structure on the property, as the male owner of the property resided in this building. This structure was given the name "Yeolhwadang" in order to promote happiness and joy among the relatives living there.</p>
	        <p>Another important structure here is the picturesque Hwallaejeong. This structure was built in 1816 and is located just inside the main entrance. The lotus flower filled pond just in front of this building makes for a setting just as one might see in a traditional Korean painting.</p>
	        <h5>Address</h5>
	        <p>63, Unjeong-gil, Gangneung-si, Gangwon-do<br>강원도 강릉시 운정길 63 (운정동)</p>
			<h5>Type</h5>
			<p>Old Houses/ Birth houses/Folk Villages</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-648-5303, +82-33-646-3270</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.knsgj.net" target="_blank">www.knsgj.net</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 7-->
	<div id="myModal7" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Jumunjin Port / 주문진항
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/7_Jumunjin.png">
	        <p>Jumunjin Port, one of the main fishing ports on the east coast, is home to over 350 fishing boats. The East Sea, where the warm and cold waters meet, is excellent for catching a lot of different types of fish including squid, lance fish, pollack, herring and anchovy. Fish caught in the area is often served fresh or cooked at nearby seafood restaurants.</p>
	        <h5>Address</h5>
	        <p>Jumun-ri, Jumunjin-eup, Gangneung-si, Gangwon-do<br>강원도 강릉시 주문진읍 주문리</p>
			<h5>Type</h5>
			<p>Ports/ Fishing Villages/ Lighthouses</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: Jumunjin County Office: +82-33-660-3438</p>
	        <h5>Homepage</h5>
	        <p><a href="http://tour.gangneung.go.kr" target="_blank">tour.gangneung.go.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 8-->
	<div id="myModal8" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Haslla Are World / 하슬라 아트월드
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/8_Haslla Art.png">
	        <p>Covering an area of 61 acres, Haslla Art World gets its name ‘Haslla’ from Gangneung of the Shilla Era. Formed by applying to its natural features, the Art Garden contains the Pine Tree Garden, Time Hall, Wetlands, Field Garden, Sea Garden and Fun Garden. At the Fun Garden located by the sea, artists and visitors can talk about artwork placed here, as well as gaze at the clear view of the sea. There is also a study room where children experience the making of artwork and observe nature, as well as try to make sotdae (a Korean folk item, a pole, which is set up for prayer or celebration). A full tour takes about an hour and 30 minutes to two hours and 30 minutes.</p>
	        <h5>Address</h5>
	        <p>1441, Yulgong-ro, Gangdong-myeon, Gangneung-si, Gangwon-do<br>강원도 강릉시 강동면 율곡로 1441 (강동면)</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-644-9411</p>
	        <h5>Operating Hours</h5>
	        <p>[Park / Gallery] 09:00-18:00 / Peak Season 08:00-19:00<br>※ Subject to change during summer vacation.</p>
	        <h5>Closed</h5>
	        <p>N/A (Open all year round)</p>
	        <h5>Length of Tour</h5>
	        <p>Around 1 hr. 10~30 mins.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 9-->
	<div id="myModal9" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Gangneung Unification Park / 강릉통일공원
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/9_Unification Park.png">
	        <p>In 1996, a North Korean submarine was stranded on the rocks at this spot. The 26-member crew got out of the submarine and tried to return to the north, leading to a deadly manhunt that lasted over a month. All but one crew member was killed and there were 17 South Korean casualties. When you see the sub, which is on display here, you may wonder how they managed to squeeze in that many people. The park also houses a U.S. warship from the Korean War, given by the Americans as a gift in 1972.</p>
	        <h5>Address</h5>
	        <p>1715-38 Yulgok-ro, Gangdong-myeon, Gangneung, Gangwon-do, South Korea</p>
	        <h5>Inquiries</h5>
	        <p>+82 33-640-4470</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 10-->
	<div id="myModal10" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Chodang Dubu Village / 초당두부마을
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/10_Chodang.png">
	        <p>Just south of Gyeongpo Beach is Chodang Dubu Village, which is famous for dubu (tofu). Along Gangneung's most famous food street the beans are ground for Chodang dubu, then through several steps, salt water from the East Sea is used in the congealing process resulting in a soft and light tofu. The name of this village, Chodang, originates from the name of a famous family that once lived here known as Chodang-Heoyeop. Heoyeop was the father of son, writer/poet Heo-gyun [1569~1618] and daughter, poet Heonan-seolheon [1563~1589]. A traditional-style Korean house has been reconstructed on the site where the original house of Heo-gyun and Heonan-seolheon once stood.</p>
	        <h5>Address</h5>
	        <p>99, Chodangsundubu-gil, Gangneung-si, Gangwon-do<br>강원도 강릉시 초당순두부길 99 (초당동) 일대</p>
	        <h5>Type</h5>
	        <p>Others</p>
	        <h5>Inquiries</h5>
	        <p>• 1330 Travel Hotline: +82-2-1330 (Korean, English, Japanese, Chinese)<br>• For more info: +82-33-640-4414, +82-33-640-4531</p>
	        <h5>Homepage</h5>
	        <p><a href="http://gnchodangdubu.modoo.at" target="_blank">gnchodangdubu.modoo.at</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 11-->
	<div id="myModal11" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Woljeongsa Temple / 월정사
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/11_Woljeongsa.png">
	        <p>Woljeongsa Temple, the Head Temple for the 4th District of the Jogye Order, is located in a dense forest in the eastern valley of Mt. Odaesan. "It is one of the best places among famous mountains in Korea. Buddhist cannon will prosper for a long time."<br>- Monk Ilyeon (Memorabilia of the Three Kingdoms)</p>
	        <p>Woljeongsa Temple is located against the backdrop of Mt. Manweolsan and is surrounded by pure spirit of Mt. Manweolsan is full of conifer tree forests all year round which create a quiet scenery. Monk Tanheo restored Jeokgwangjeon Temple in 1964, and it has been continuously rebuilt by Monk Manhwa and Monk Hyeonhae to recover its original appearance as a great Buddhist temple. Although it lost numerous sacred artifacts and cultural assets due to several fires and wars, some of its unique structures and diversified treasure and cultural assets including the Nine-Story Octagonal Stone Pagoda which has been designated as a National Treasure have been preserved.</p>
	        <h5>Address</h5>
	        <p>#374-8, Odaesan-ro(Dongsan-ri), Jinbu-myeon, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-339-6800</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://woljeongsa.org/" target="_blank">http://woljeongsa.org/</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 12-->
	<div id="myModal12" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Daegwallryeong Samyang Ranch / 대관령삼양목장
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/12_DGR Samyang.png">
	        <p>Daegwallryeong Samyang Ranch was established ranch with an area covering 18 million square meters has started with a bang by marking a new era in the Korean livestock industry in 1972, the pioneering spirit which aimed to vitalize the grand nature through the livestock industry has led to the establishment of Asia's largest ranch on a high ground 850 to 1400 meters above the sea level where 900 beef cattle and cows are raised.</p>
	        <h5>Notices</h5>
	        <p>Beach opening: July 1-August 20, 2017<br>- Operating hours: 06:00-24:00<br>- Swimming hours: 09:00-18:00</p>
	        <h5>Address</h5>
	        <p>#708-9, Kkotbatyangji-gil,(Hoenggye-ri), Daegwallryeong-myeon, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-335-5044</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.samyangranch.co.kr/" target="_blank">http://www.samyangranch.co.kr/</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 13-->
	<div id="myModal13" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Daegwallryeong Sheep Ranch / 대관령양떼목장
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/13_DGR Sheep.png">
	        <p>Daegwallyeong Yangtte Farm is the most famous sheep farm in Korea. It is located in Hoenggaye 3-ri, Daegwallyeong-myeon, Pyeongchang-gun, Gangwon-do. This sheep farm is 204,959 square meter at an altitude of 850 to 900 meter above sea level. The scenery of the green fields turning yellow in a sunset makes you feel dreaming. The herds of white sheep peacefully roaming on the green fields look more than exotic. Behind Daegwallyeong Service Area on the Old Daegwallyeong Road is there Daegwallyeong Yangtte Farm in the hills. The farm has the very exotic scenery of vast green grass and a chain of clouds flowing above the leveled ridge on which fluffy sheep peacefully grazing grass.</p>
	        <p>There is also a tiny cottage on the hill, attracting tourists’ attention. Tourists can feed hay to the sheep only inside the stable. The fleece of sheep is so soft and fluffy. Unpolluted fresh air in this high-altitude plain near Baekdudaegan Mountain Range will make you feel embraced by the nature.</p>
	        <h5>Address</h5>
	        <p>483-32, Daegwallryeongmaru-gil, (Hoenggye-ri), Daegwallryeong-myeon, Pyeongchang-gun 
Gangwon Province (Daegwallryeong Sheep Ranch)</p>
	        <h5>Telephone number</h5>
	        <p>033-335-1966</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.yangtte.co.kr/" target="_blank">http://www.yangtte.co.kr/</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 14-->
	<div id="myModal14" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Odaesan National Park / 오대산국립공원
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/14_Odaesan.png">
	        <p>It lies from Pyeongchang-gun, Gangreung-si and Hongcheon-gun in Gangwon Province and is located at an intersection together with Mt. Charyeong Mountain Range extending from the center of Taebaek Mountain Range to the west. Mt. Odaesan featuring Birobong Peak 1,563 meters above sea level covers a total of 298.5㎢ and was designated as a national park on February 1, 1975. It consists of such mountain peaks as Horyeongbong Peak, Sangwangbong Peak, Mt. Dongdaesan and Durobong Peak in an addition to such mountain peaks is the Birobong Peak which is the main peak.</p>
	        <p>Odaesan National Park has various small Buddhist temples that includes Woljeongsa Temple and Sangwonsa Temple. One can climb the Birobong Peak by passing through the Shrine of Sakyamuni, Buddha's Sarira. Along the trail from Sangwonsa Temple there are a lot of rare animals, plants, medicinal herbs, wild herbs and vegetables. It is called Mt. Odaesan because there are five dae ( O-dae: Nam-dae, Buk-dae, Dong-dae, Seo-dae and Jung-dae), and it also means Horyeongbong Peak, Sangwangbong Peak, Durobong Peak and Noinbong Peak in addition to Birobong Peak, the main peak.</p>
	        <h5>Address</h5>
	        <p>#1076-15, Odaesan-ro(Dongsan-ri, Sinseongam), Jinbu-myeon, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-332-6417</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://odae.knps.or.kr" target="_blank">http://odae.knps.or.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 15-->
	<div id="myModal15" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Herb Nara / 허브나라농원
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/15_HerbNara.png">
	        <p>After reading Ryu Dal-yeong's (Ph.D) "Insaengnote" (or LIfe Notes" ) in his high school days, Lee Ho-soon (60), the operator of the Herb Country had decided to live a farming life. As a consequence, with a high position in a large company, he quit his job and came to Bongpyeong with his wife to establish the Herb County. The couple cultivated the herb farm beautifully of how it is today with their sincerity and devotion. Entering the farm, it creates an illusion that you have come to another world. The signboard which is charmingly decorated with all kinds of colors is very impressive and so, as soon you enter the farm you will find yourself in great admiration. It is also a romantic place for lovers.</p>
	        <p>You may also want to try the different herb scents which provides a breath of fresh air and aroma. You should also see the Turkey Gallery. There are restaurants and lodging facilities inside the Herb County too.</p>
	        <h5>Address</h5>
	        <p>#291-42, Heungjeonggyegok-gil(Heungjeong-ri), Bongpyeong-myeon. Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-335-292</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.herbnara.com/" target="_blank">http://www.herbnara.com/</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 16-->
	<div id="myModal16" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Kensington Flora Garden / 켄싱턴 플로라 가든
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/16_Kensington.png">
	        <p>Kensington Flora Garden Korea's largest garden which is based on a French concept, established in an area covering 60,000 square meters and famous for its imitation of the 'Ornamental Garden' in Villandry Castle.</p>
	        <p>Plants of different varieties are distributed in the garden where the outstanding scenery of Mt. Odaesan serves as the background, and it is divided into 12 theme parks including Oriental Garden, Vegetable Garden and Chef’s Garden.</p>
	        <h5>Address</h5>
	        <p>#231, Jingogae-ro(Ganpyeong-ri), Jinbu-myeon, Pyeongchang-gun</p>
			<h5>Telephone number</h5>
	        <p>033-330-5000</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.kensingtonflora.com" target="_blank">http://www.kensingtonflora.com</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 17-->
	<div id="myModal17" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Lee Hyo Seok Literature Forest / 이효석 문학의숲
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/17_HyoSeok.png">
	        <p>It reenacts the marketplace, the house in Chungju and the waterwheel in the novel so that visitors can take a walk while tasting the atmosphere of Bongpyeong, the setting of “Memilkkotpilmuryeop,” a novel authored by Lee Hyo-seok . It includes a 500 meter-long novel road composed of a rest area, a poetry-reading stage and a water spring and a 2.7 km-long trail. Various rare wetland plants naturally grow in wide swamps in forests, and a lot of crawfishes found only in clean areas inhabit in a valley, which is expected to provide the best cultural learning place.</p>
	        <h5>Address</h5>
	        <p>#97, Munhaksup-gil (Changdong-ri), Bongpyeong-myeon, Pyeongchang-gun</p>
			<h5>Telephone number</h5>
	        <p>033-335-4477</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://문학의숲.com/" target="_blank">http://문학의숲.com/</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 18-->
	<div id="myModal18" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Daegwallyeong Sky Ranch / 대관령하늘목장
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/18_DGR Sky.png">
	        <p>Boasting of 40 years of history, Daegwallryeong Haneul Ranch founded in 1974 is a huge ranch established in an area covering 10 million m² (2,471 acres) where 500 World Cup Stadiums can be housed. Currently, it environmentally friendly raises 400 Holstein diary cattle and 100 Korean native cattle and produces 1,400 tons of level-1 crude oil and clean Korean native Daegwallryeong cattle every year. It restrains artificial development as much as possible and provides a nature-adaptive experience ranch where visitors can proactively commune with the nature.</p>
	        <h5>Address</h5>
	        <p>#458-23, Kkotbatyangji-gil (Hoenggye-ri), Daegwallryeong-myeon, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-332-4888</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.skyranch.co.kr" target="_blank">http://www.skyranch.co.kr</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 19-->
	<div id="myModal19" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Jeonggangwon / 정강원
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/19_Jeonggangwon.png">
	        <p>The Jeonggangwon is an institution that utilizes the Korean traditional food culture experience, preserves the preciousness and excellence of the traditional food culture and widely researches, propagates and promotes it. It is also the country's largest traditional food culture experience hall.</p>
	        <p>On the land spanning 7,000 pyeong (23,140.5 sq.m.) located at Baekokpo-ri, Yongpyeong-myeon, Pyeongchang-gun, Gangwon Province, the Pyeongchang-gun County Office set up an exhibition hall. For this purpose, various facilities for experiencing traditional culture such as ; cooking experience room, a fermentation room, a natural cultivation complex, and indoor and outdoor restaurants were made available.</p>
	        <p>In addition, the Jeonggangwon institute offers diverse programs, like traditional hanok(or Korean traditional houses) lodging experience, gochujang(or red pepper paste)-making, meju(or fermented soybean)-making, and traditional liquor-brewing through which visitors can experience the Korean traditional food in person.</p>
	        <h5>Address</h5>
	        <p>#2010-13, Geumdanggyegok-ro (Baekokpo-ri), Yongpyeong-myeon, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-333-1012</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	        <h5>Homepage</h5>
	        <p><a href="http://www.jeonggangwon.com/index.do" target="_blank">http://www.jeonggangwon.com/index.do</a></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 20-->
	<div id="myModal20" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Pyeongchang Olympic Market / 평창올림픽시장
	      </div>
	      <div class="modal-body-style modal-body">
	        <img style="padding-top: 1em; padding-bottom: 1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/20_OlympicMarket.png">
	        <p>The Pyeongchang Olympic Market is a traditional market characterized as a 5-day people's market. It is an established market which has a long held history of vitality. The market is open on days ending on the 5th and 10th day of the month. </p>
	        <p>The market place in particular is famous for its traditional food like buckwheat pancake, memiljeonbyeong or buckwheat crepe, and the taste of the memilpuchim which is unique to the region. Memilbuchim is the signature food of Pyeongchang. The Memilbuchim Festival is held here in Pyeongchang, you can enjoy a variety of experiences including making of memilbuchim.</p>
	        <p>In addition to the memilbuchim, the Pyeongchang Olympic Market has a lot of other foodstuffs to offer, including Dotorimuk, Sundae (Korean Sausage), Potato Buchim (Potato Pancakes) and olchaengiguksu(or tadpole-shaped noodles) and further more you can even taste high-quality specialities of Pyeongchang, like potato and greens(or mountain vegetables).</p>
	        <p>In recent years, the Pyeongchang-gun County Office has coordinated with local celebrities for the promotion of the market's signature products. Such diverse programs includes cultural events, like appointment of an ambassador to the region, installation of a life-size (bromide) picture of a celebrity, concerts and Madanggeuk (a Traditional Korean Performance) as well as market tour and shopping, and auction of the regional specialities. Through such events and programs, the Pyeongchang Olympic Market is standing on tiptoes as a market which is full with jeong(meaning human attachment) prompts an exciting taste and prettiness.</p>
	        <p>■ Market classification : Designated Market, Standing Market and General Market.</p>
	        <h5>Address</h5>
	        <p>#8-1 (Ha-ri), Pyeongchangshijang 1-gil, Pyeongchang-eup, Pyeongchang-gun</p>
	        <h5>Telephone number</h5>
	        <p>033-332-2517</p>
	        <h5>Korea Travel Hotline</h5>
	        <p>+82-2-1330(Korean, English, Japanese, Chinese)</p>
	        <h5>Gangwon Translation services for foreign tourist</h5>
	        <p>+82-80-840-0505</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
</div>
       <!-- ******FOOTER****** -->
	<jsp:include page="../common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
 
 
</body>
</fmt:bundle>
</html>