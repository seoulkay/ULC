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
<div style="height: 30em; background-image: url('<fmt:message key="baseurl"></fmt:message>/image/tisImage/ol-min.png'); background-size:cover">
	<!--     navbar -->
    <jsp:include page="../common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	<div style="height: 3em"></div>
	<span style="margin: 0 auto; text-align: center;"><h1 class="title">Pyeongchang 2018 Host cities</h1></span>
</div>

	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline" >
					<li  style="margin: 0%"><a href="#anchor1">PyeongChang</a></li>
					<li  style="margin: 0%"><a href="#anchor2">Gangneung</a></li>
					<li  style="margin: 0%"><a href="#anchor3">Jeongseon</a></li>
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
				<h4 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">PyeongChang</span></h4>
				<div class="feature-desc"><p>Pyeongchang is a county in Gangwon province of South Korea located in the Taebaek Mountains region. It is home to several Buddhist temples, including Woljeongsa. It is approximately 180 km (110 mi) east of Seoul, the capital of South Korea. Pyeongchang will host the 2018 Winter Olympics and the 2018 Winter Paralympics.</p></div>
			</div>
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
			<img class="img-responsive" src="https://www.ufo79.com/image/201708070449000834.JPG">
			</div>
		</div>
	</div>
</section>

<section id="anchor2">
	<div id="feature-block-2" class="feature-block feature-block-1">
		<div class="row title-row-style">
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #00a27c" class="label label-success">Gangneung</span></h4>
				<div class="feature-desc"><p>Gangneung is a city in Gangwon-do, on the east coast of South Korea. It has a population of 229,869 (as of 2006). Gangneung is the economic centre of the Yeongdong region of Gangwon Province. Gangneung has many tourist attractions, such as Jeongdongjin, a very popular area for watching the sun rise, and Gyeongpo Beach. There is a ROK airbase south of downtown Gangneung which formerly doubled as a civil airport.</p></div>
			</div>
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
				<img class="img-responsive" src="https://www.ufo79.com/image/201708070443440900.JPG">
			</div>			
		</div>
	</div>
</section>

<section id="anchor3">
	<div id="feature-block-3" class="feature-block feature-block-1">
		<div class="row title-row-style">
			<div class="feature-content col-md-6 col-sm-6 col-xs-12">
				<h4 class="feature-title"><span style="background-color: #feb131" class="label label-success">Jeongseon</span></h4>
				<div class="feature-desc"><p>Jeongseon (Jeongseon-gun) is a county in Gangwon Province, South Korea, is well known for its five-day market, a bonanza of fresh fish, produce, herbs, homemade kimchi, cloth, performances and street food stalls. For a peek into the Jeongseon of the past, visit Arari Village, a recreation of a rural community that features traditional homes, handicrafts and a working waterwheel. It is famous as the hometown of "Jeongseon Arirang," a traditional Korean folksong.</p>
</p></div>
			</div>
			<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
			<img class="img-responsive" src="https://www.ufo79.com/image/201708070443440903.jpg">
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