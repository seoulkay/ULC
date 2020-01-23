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
					<div class="con">
						<h5 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Gangneung</span></h5>
						<a href="http://www.mangoplate.com/en/search/%EA%B0%95%EB%A6%89%EC%8B%9C" target="_blank"><img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/1_Gyeongpo Beach.png">
						<div class="middle">
							<div class="text-effect1">Gangneung</div>
						</div></a>					
					</div>
				</div>				
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con">
						<h5 class="feature-title"><span style="background-color: #00a27c" class="label label-success">PyeongChang</span></h5>
						<a href="http://www.mangoplate.com/en/search/%ED%8F%89%EC%B0%BD%EA%B5%B0" target="_blank"><img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/2_Jeongdongjin Beach.png">
						<div class="middle">
							<div class="text-effect1" style="background-color: #00a27c">PyeongChang</div>
						</div></a>					
					</div>
				</div>
				<div class="feature-content col-md-4 col-sm-4 col-xs-12" style="padding-top: 1em; padding-bottom: 1em;">
					<div class="con">
						<h5 class="feature-title"><span style="background-color: #feb131" class="label label-success">Jinbu</span></h5>
						<a href="http://www.mangoplate.com/en/search/%EC%A7%84%EB%B6%80%EB%A6%AC" target="_blank"><img class="img-responsive img-effect2" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PA/3_Ojukheon.png">
						<div class="middle">
							<div class="text-effect1" style="background-color: #feb131">Jinbu</div>
						</div></a>					
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