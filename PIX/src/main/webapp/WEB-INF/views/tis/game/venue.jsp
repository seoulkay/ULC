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
<div style="height: 30em; background-image: url('<fmt:message key="baseurl"></fmt:message>/image/tisImage/pockeys-min.jpg'); background-size:cover">
	<!--     navbar -->
    <jsp:include page="../common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	<div style="height: 3em"></div>
	<span style="margin: 0 auto; text-align: center;"><h1 class="title">Pyeongchang 2018 Venues</h1></span>

</div>

	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline" >
					<li  style="margin: 0%"><a href="#anchor1">Venues</a></li>
					<li  style="margin: 0%"><a href="#anchor2">Mountain</a></li>
					<li  style="margin: 0%"><a href="#anchor3">Coastal</a></li>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
	
	
<div class="container on-the-fly-behavior">
	<!-- Section 1 -->
	<section id="anchor1">
		<div id="feature-block-3" class="feature-block feature-block-1">
			<div class="row title-row-style">
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<h4 class="feature-title"><span style="background-color: #feb131" class="label label-success">Pyeongchang 2018 venues</span></h4>
					<div class="feature-desc">
						<p>All competition venues of PyeongChang 2018 Olympic Winter Games are located within 30 minutes’ driving distance from the PyeongChang Olympic Stadium.</p>
						<p>The compactness of the venues of the 2018 Winter Olympics and Paralympics in Pyeongchang has been one of the winning arguments of the bid. The Games are gathered around two main venues, the mountain resort of Alpensia for the outdoor sports (Nordic and alpine skiing, bobsled...) and the coastal city of Gangneung for the indoor sports (figure skating, hockey, curling...). In addition there are two mountain stand alone venues. The Games will have a total of 13 competition venues – six of which will be new. The speed skating rink construction having started in October 2014, all of the new venues are now under construction.</p>					
					</div>
				</div>
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
				<img class="img-responsive" src="https://www.ufo79.com/image/201708040857480891.JPG">
				</div>
			</div>
		</div>
	</section>
	<!-- Section 2 -->
	<section id="anchor2">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row title-row-style">
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<h4 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Mountain Clusters</span></h4>
				</div>
			</div>		
			<div class="row title-row-style">			
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<style type="text/css">
					.tg  {border-collapse:collapse;border-spacing:0;width:100%;}
					.tg td{font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;}
					.tg th{font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;}
					.tg .tg-6wtj{vertical-align:middle;text-align:center;}					
					.tg .tg-2qjy{background-color:#16adde;color:#ffffff;text-align:center}
					</style>
					<table class="tg">
					  <tr>
					    <th class="tg-2qjy">Venue</th>
					    <th class="tg-2qjy">Venue Name (Eng)</th>
					    <th class="tg-2qjy">Venue Name (Kor)</th>
					    <th class="tg-2qjy">Detail</th>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue1">ASJ</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue1">Alpensia Ski Jumping Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue1">알펜시아 스키점프 경기장 </td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue1"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue2">ACC</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue2">Alpensia Cross-Country Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue2">알펜시아 크로스컨트리 센터  </td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue2"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue3">ABT</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue3">Alpensia Biathlon Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue3">알펜시아 바이애슬론 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue3"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue4">ASL</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue4">Alpensia Sliding Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue4">알펜시아 슬라이딩 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue4"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue5">YAL</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue5">Yongpyong Alpine Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue5">용평 알파인 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue5"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue6">JAL</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue6">Jeongseon Alpine Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue6">정선 알파인 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue6"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue7">BSP</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue7">Bokwang Snow Park</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue7">보광 피닉스 파크 </td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue7"></td>
					  </tr>
					</table>
				</div>
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<div class="feature-desc"><!-- MAP 들어갈 자리 -->	
					<div id="map" style="height: 20em"></div>			
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section 3 -->
	<section id="anchor3">
		<div id="feature-block-1" class="feature-block feature-block-1">
			<div class="row title-row-style">
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<h4 class="feature-title"><span style="background-color: #ed45a4" class="label label-success">Coastal Clusters</span></h4>
				</div>
			</div>		
			<div class="row title-row-style">			
				<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
					<table class="tg">
					  <tr>
					    <th class="tg-2qjy">Venue</th>
					    <th class="tg-2qjy">Venue Name (Eng)</th>
					    <th class="tg-2qjy">Venue Name (Kor)</th>
					    <th class="tg-2qjy">Detail</th>
					  </tr>				  
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue8">GHC</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue8">Gangneung Hockey Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue8">강릉 하키 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue8"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue9">GOV</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue9">Gangneung Oval</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue9">강릉 스피드 스케이팅 경기장</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue9"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue10">GIA</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue10">Gangneung Ice Arena</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue10">강릉 아이스 아레나</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue10"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue11">GCC</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue11">Gangneung Curling Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue11">강릉 컬링 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue11"></td>
					  </tr>
					  <tr class="tr-style">
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue12">KHC</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue12">Kwandong Hockey Centre</td>
					    <td class="tg-6wtj" data-toggle="modal" data-target="#venue12">관동 하키 센터</td>
					    <td class="tg-6wtj"><img src="${pageContext.request.contextPath}/resources/tis/image/ic_info_outline_black_24px.svg" data-toggle="modal" data-target="#venue12"></td>
					  </tr>
					</table>
				</div>
				<div class="feature-content col-md-6 col-sm-6 col-xs-12">
					<div class="feature-desc">
					<div id="map2" style="height: 20em"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Modal 1-->
	<div id="venue1" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Alpensia Ski Jumping Centre / 알펜시아 스키점프 경기장
	      </div>
      	  <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_ASJ.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Ski Jumping</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Nordic Combined</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Snowboard(Big Air)</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Ski-Jumping.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Nordic-Combined.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Snowboard_Big-Air.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 2-->
	<div id="venue2" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Alpensia Cross-Country Centre / 알펜시아 크로스컨트리 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_ACC.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Cross-Country Skiing</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Nordic Combined</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Cross-Country-Skiing.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Nordic-Combined.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 3-->
	<div id="venue3" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Alpensia Biathlon Centre / 알펜시아 바이애슬론 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_ABT.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Biathlon</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Para Biathlon</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Para Cross-Country Skiing</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Biathlon.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Para-Biathlon.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Para-Cross-Country-Skiing.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 4-->
	<div id="venue4" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Alpensia Sliding Centre / 알펜시아 슬라이딩 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_ASL.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Luge</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Bobsleigh</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Skeleton</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Luge.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Bobsleigh1.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Skeleton1.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 5-->
	<div id="venue5" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Yongpyong Alpine Centre / 용평 알파인 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_YAL.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Alpine Skiing</div></div>			        
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Alpine-Skiing(Speed).png"></div>			        
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 6-->
	<div id="venue6" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Jeongseon Alpine Centre / 정선 알파인 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_JAL.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Alpine Skiing</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Para Alpine Skiing</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Para Snowboard</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Alpine-Skiing(Speed).png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Para-Alpine-Skiing.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Para-Snowboard.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 7-->
	<div id="venue7" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Bokwang Snow Park / 보광 피닉스 파크
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_BKPC.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Snowboard (Cross)</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Snowboard (Half Pipe)</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Snowboard (Slalom)</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Snowboard_Big-Air.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Snowboard_Big-Air.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Snowboard_Big-Air.png"></div>			        
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Snowboard (Slopestyle)</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Freestyle Skiing</div></div>
		        </div>
		        <div class="row title-row-style">			        
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Snowboard_Big-Air.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Freestyle-Skiing_Aerials.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 8-->
	<div id="venue8" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Gangneung Hockey Centre / 강릉 하키 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_GHC.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Ice Hockey</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Para Ice Hockey</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Ice-Hockey.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Para-Ice Hockey.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 9-->
	<div id="venue9" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Gangneung Oval / 강릉 스피드 스케이팅 경기장
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_GOV.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Speed Skating</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Speed-Skating.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 10-->
	<div id="venue10" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Gangneung Ice Arena / 강릉 아이스 아레나
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_GIA.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Figure Skating</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Short Track Speed Skating</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Figure-Skating.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Short-Track_Speed-Skating.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 11-->
	<div id="venue11" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Gangneung Curling Centre / 강릉 컬링 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_GCC.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Curling</div></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Wheelchair Curling</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Curling.png"></div>
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Paralympic/PyeongChang2018_Paralympic_Pictogram_Wheelchair_Curling.png"></div>
		        </div>
      		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>		
	  </div>
	</div>
	<!-- Modal 12-->
	<div id="venue12" class="modal fade" role="dialog">
	  <div class="modal-dialog">		
	    <!-- Modal content-->
	    <div class="modal-content-style modal-content">
	      <div class="modal-header-style modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        	Kwandong Hockey Centre / 관동 하키 센터
	      </div>
	      <div class="modal-body-style modal-body">
	        <!-- venue image -->
        	<img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/PV/PV_KHC.png">
        	<!-- Sport -->
	        <h5 style="color:#008fd4;">Disciplines</h5>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><div class="feature-desc2">Ice Hockey</div></div>
		        </div>
		        <div class="row title-row-style">
			        <div class="col-md-3 col-sm-3 col-xs-4"><img style="padding-top:1em; padding-bottom:1em;" class="img-responsive" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/Olympic/PyeongChang2018_Olympic_Pictogram_Ice-Hockey.png"></div>
		        </div>
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
<script>
var neighborhoods = [];
var neighborhoods2 = [];
var markers = [];
var markers2 = [];
var map;
var map2;

var iconBase = '<fmt:message key="baseurl"></fmt:message>/image/tisImage/';
var icons = {
  hotel:{
	  icon: iconBase + 'hotel.png'
  },
  c_venue:{
	  icon: iconBase + 'stadium.png'
  },
  n_venue:{
	  icon: iconBase +'office-block.png'
  }
};
/**
 * 
*/
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 8,
	    center: {lat: 37.752, lng: 128.891},
	    zoomControl: true,
	    mapTypeControl: false,
	    scaleControl: true,
	    streetViewControl: false,
	    rotateControl: false,
	    fullscreenControl: true
	  });
	
	map2 = new google.maps.Map(document.getElementById('map2'), {
	    zoom: 12,
	    center: {lat: 37.752, lng: 128.891},
	    zoomControl: true,
	    mapTypeControl: false,
	    scaleControl: true,
	    streetViewControl: false,
	    rotateControl: false,
	    fullscreenControl: true
	  });
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
  	
  	//타입이 없는 마커일 경우 스트링을 받아서 아이콘으로 사용
  	var strIcon;
  	if(position.type){
		strIcon = icons[position.type].icon;
	  }else{
		strIcon = position.icon;
	  }
  	
  	
 	var marker = new google.maps.Marker({
      position: pos,
      map: map,
      animation: google.maps.Animation.DROP,
      icon: strIcon
    	  
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
function drop() {
  for (var i = 0; i < neighborhoods.length; i++) {
	  //console.log(neighborhoods.length);
    addMarkerWithTimeout(neighborhoods[i], i * 50);
  }
  //window.setTimeout(function() {refreshBtn();}, (neighborhoods.length+1)*50);
}

/**
 * 마커 세팅
 */	
function markerSet(){
	var venues = $(".venues").text();
	$.post( "/TIS/get/venue")
       .done(function( data ) {
         var go = JSON.parse(JSON.stringify(data));		 
        
         var toc = {};
         toc.lat = 37.752;
         toc.lng = 128.891;
         toc.content = '<h4>TOC</h4>';
         toc.type = "n_venue";
         neighborhoods.push(toc);
         
         for(var i = 0; i < go.length; i++){
        	 if(go[i].id == venues){
        	 var target = {};
        	 target.lat = parseFloat((Number(go[i].lat)));
        	 target.lng = parseFloat((Number(go[i].lng)));
	        	 if(go[i].venue_type  == 'hotel'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "hotel";
	        	 }else if(go[i].venue_type  == 'c_venue'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "c_venue";
	        	 }else if(go[i].venue_type  == 'n_venue'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "n_venue";
        	 	}

	         neighborhoods.push(target);
	         map.setCenter({lat: target.lat, lng: target.lng});
			//경기장은 무조건 보여줌
        	 }else if(go[i].venue_type  == 'c_venue' && go[i].cluster_id == 'm'){
        		 var target = {};
            	 target.lat = parseFloat((Number(go[i].lat)));
            	 target.lng = parseFloat((Number(go[i].lng)));
        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
        		 target.icon = iconBase + go[i].venue_pic;
        		 neighborhoods.push(target);
        		
        	 }
         }
         drop();
    });
}

markerSet();




/**
 * 
*/
function addMarkerWithTimeout2(position, timeout) {
  window.setTimeout(function() {
  	var infowindow = new google.maps.InfoWindow({
	    content: position.content
	  });
  
  	var pos = {
          lat: position.lat,
          lng: position.lng
        };
  	
  	//타입이 없는 마커일 경우 스트링을 받아서 아이콘으로 사용
  	var strIcon;
  	if(position.type){
		strIcon = icons[position.type].icon;
	  }else{
		strIcon = position.icon;
	  }
  	
  	
 	var marker = new google.maps.Marker({
      position: pos,
      map: map2,
      animation: google.maps.Animation.DROP,
      icon: strIcon
    	  
 	});
 	marker.addListener('click', function() {
	    infowindow.open(map2, marker);
  	});
    markers2.push(marker);
	}, timeout);
}
/**
 * 
*/	
function drop2() {
  for (var i = 0; i < neighborhoods2.length; i++) {
    addMarkerWithTimeout2(neighborhoods2[i], i * 50);
  }
  //window.setTimeout(function() {refreshBtn();}, (neighborhoods.length+1)*50);
}

/**
 * 마커 세팅
 */	
function markerSet2(){
	var venues = $(".venues").text();
	
	$.post( "/TIS/get/venue")
       .done(function( data ) {
         var go = JSON.parse(JSON.stringify(data));		 
         
         var toc = {};
         toc.lat = 37.752;
         toc.lng = 128.891;
         toc.content = '<h4>TOC</h4>';
         toc.type = "n_venue";
         neighborhoods2.push(toc);
         
         for(var i = 0; i < go.length; i++){
        	 if(go[i].id == venues){
        	 var target = {};
        	 target.lat = parseFloat((Number(go[i].lat)));
        	 target.lng = parseFloat((Number(go[i].lng)));
	        	 if(go[i].venue_type  == 'hotel'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "hotel";
	        	 }else if(go[i].venue_type  == 'c_venue'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "c_venue";
	        	 }else if(go[i].venue_type  == 'n_venue'){
	        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
	        		 target.type = "n_venue";
        	 	}

	         neighborhoods2.push(target);
	         map2.setCenter({lat: target.lat, lng: target.lng});
			//경기장은 무조건 보여줌
        	 }else if(go[i].venue_type  == 'c_venue' && go[i].cluster_id == 'c'){
        		 var target = {};
            	 target.lat = parseFloat((Number(go[i].lat)));
            	 target.lng = parseFloat((Number(go[i].lng)));
        		 target.content = '<h4>'+go[i].venue_name+'</h4><br><h4>'+go[i].venue_name_loc+'</h4>';
        		 target.icon = iconBase + go[i].venue_pic;
        		 neighborhoods2.push(target);
        	 }
         }
         drop2();
    });
}

markerSet2();
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN9VDOjhzw7kPKEbFw7LEVoVreCXiz87E&callback=initMap" async defer></script>
</fmt:bundle>
</html>