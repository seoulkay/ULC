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
<div style="height: 30em; background-image: url('https://www.ufo79.com/image/201708040032210402.jpg'); background-size:cover">
	<!--     navbar -->
    <jsp:include page="../common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	<div style="height: 3em"></div>
	<span style="margin: 0 auto; text-align: center;"><h1 class="title">PyeongChang 2018 Paraympic Winter Games </h1></span>
	<span style="margin: 0 auto; text-align: center;"><h1 class="title">2018.03.09 - 2018.03.18</h1></span>
	
</div>

	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline" >
					<li  style="margin: 0%"><a href="#anchor1">Paralympic</a></li>
					<li  style="margin: 0%"><a href="#anchor2">Slogans</a></li>
					<li  style="margin: 0%"><a href="#anchor3">Emblem</a></li>
					<li  style="margin: 0%"><a href="#anchor4">Mascots</a></li>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
	
	
<div class="container on-the-fly-behavior">
<section id="anchor1">
	<div id="feature-block-1" class="feature-block feature-block-1">
		<div class="row title-row-style">
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Paralympic Winter Games</span></h4>
				<div class="feature-desc"><p>in PyeongChang, Gangwon Province, the Republic of Korea.</p><p>PyeongChang was selected as the host city of the 2018 Paralympic Winter Games after receiving a majority vote at the 123rd IOC Session held on 7 July, 2011 after three consecutive bids. The Paralympic Winter Games will be held in Korea for the first time in 30 years after the Seoul Paralympic Games in 1988. PyeongChang will be the stage for the Opening and Closing Ceremonies and most snow sports. Alpine skiing events will take place in Jeongseon, and all ice sports will be competed in the coastal city of Gangneung.
</p></div>
			</div>
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
			<img class="img-responsive" src="https://www.ufo79.com/image/201707260445290413.jpg">
			</div>
		</div>
	</div>
</section>

<section id="anchor2">
	<div id="feature-block-2" class="feature-block feature-block-1">
		<div class="row title-row-style">
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
				<img class="img-responsive" src="https://www.ufo79.com/image/201708030723310807.JPG">
			</div>
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Slogans</span></h4>
				<div class="feature-desc">
					<p>Passion. Connected. refers to a world in which everyone is connected with shared passion for winter sports, a world open to any generation anywhere, anytime, to open new horizons in the continued growth of winter sports.</p>
					<p><strong>'Passion'</strong> means a very strong feeling, affection and something one is fond of. PyeongChang is a place of global festivals that inspires each other and symbolises a place where Koreans share their warm affection. It also expresses the Olympic spirit and the warm heartedness of Koreans.</p>
					<p><strong>'Connected'</strong> means to link, join, combine, bridge, and understand. PyeongChang is a place where all generations can participate and inspire each other anytime and anywhere through Korea’s innovative technology and cultural convergence, and it means opening a new horizon for a new beginning, a harmonized world and the Olympic Winter Games.</p>
				</div>
			</div>			
		</div>
	</div>
</section>

<section id="anchor3">
	<div id="feature-block-3" class="feature-block feature-block-1">
		<div class="row title-row-style">
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #feb131" class="label label-success">Emblem</span></h4>
				<div class="feature-desc">
					<p>The emblem symbolises a world open to everyone. It combines the image of ice and snow, winter sports stars (athletes), and people from all over the world, coming together in PyeongChang where heaven meets earth.</p>
					<p>The emblem depicts a world where people with and without impairment, athletes, spectators, and people of the planet gather together in friendship.</p>					
				</div>
			</div>
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
			<img class="img-responsive" src="https://www.ufo79.com/image/201708030743270639.JPG">
			</div>
		</div>
	</div>
</section>
</div>
<div style="width: 100%; background-color:#A9D7E6; padding-top: 15px; padding-bottom:15px;" class="container">
<section id="anchor4">
	<div id="feature-block-4" class="feature-block feature-block-1 on-the-fly-behavior">
		<div class="row title-row-style">
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #16adde" class="label label-success">Mascots</span></h4>
			</div>
		</div>
		<div class="row title-row-style" style="background-color:#A9D7E6;">
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
				<img class="img-responsive" src="https://www.ufo79.com/image/201708040023430404.jpg" style="box-shadow: -10px 10px 10px 1px #666666;">
			</div>
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">				
				<div class="feature-desc">
					<div style="background-color: #16adde; padding: 0.5em; color: WHITE; border-color: #16adde;box-shadow: -10px 10px 10px 1px #666666;">
						<p>The Asiatic black bear or “ban-dal-ga-seum-gom” (the bear with a half-moon mark on the chest) symbolises strong willpower and courage in the Korean folklore. This bear now has been selected as a friendly mascot for the Paralympic Games in 2018. “Banda” is derived from “ban-dal,” the Korean word for the half-moon. “Bi” stands for celebration of the Games.</p>
						<p><strong>Characteristics of the Paralympic mascot</strong></p>
						<p>Bandabi, the mascot of the PyeongChang 2018 Paralympic Winter Games took its motif from the Asiatic black bear. Bandabi has strong willpower and courage. It is a warm-hearted friend who takes the lead for equality and harmony and encourages athletes to push themselves beyond their limits. We will look forward to Bandabi's amazing activities.</p>
					</div>
				</div>
			</div>			
		</div>
	</div>
</section>
</div>
       <!-- ******FOOTER****** -->
	<jsp:include page="../common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
 
 
</body>
</fmt:bundle>
</html>