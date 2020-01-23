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

<!--     navbar -->
    <jsp:include page="common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
<div class="container on-the-fly-behavior">
	<!-- My profile section starts -->
	<div class="row row-style" style="display: block;">
		<div class="avatar"><img src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/${em.picture }" width="128" height="128"></div>
		<h4 class="name">${em.first_name } ${em.last_name }</h4>
		<h5 class="description">${em.job_title } ${pageContext.request.contextPath} 
		</h5>		
		<ul id="contact">
			<!-- 이메일 -->
			<li>
				<a target="_blank" href="mailto:${em.email }" class="email"></a>
			</li>
			<!-- 첨부화일 -->
			<c:if test="${!empty to.file_attach }">
				<c:set var="dataParts" value="${fn:split(to.file_attach, ',')}" />
				<c:forEach var="ele" items="${dataParts}">
				<li>
					<a class="download" href="<fmt:message key="baseurl"></fmt:message>/image/tisImage/attach/${em.first_name }.${em.last_name }/${fn:trim(ele)}" download>					
					</a><p style="color:#5cb85c; text-align: center; font-size: 0.8em;">${fn:trim(ele)}</p>
				</li>
				</c:forEach>			 
			</c:if>
		</ul>	
	</div>
	
	<!-- My Accommodation section starts -->
	<div class="row title-row-style">
		<h4><span class="label label-success" id="accom">My Accommodation</span></h4>
	</div>	
	
	<c:forEach items="${ta }" var="ele">
	<div class="row row-style">	
		<%-- <p><strong>Confirmation No : </strong>ACC${ele.id }</p> --%>
		<div class="col-md-6 col-sm-6 col-xs-12">
		<p style="font-size: 1.3em; color: #008fd4;"><strong>${ele.venue_name }</strong></p>
		<p><a href="https://www.google.co.kr/maps?z=19&q=${ele.lat }+${ele.lng }&||=${ele.lat }+${ele.lng }" target="_blank">${ele.venue_address }</a></p>
		<p>${ele.venue_address_loc }</p>
		<div style="display: none" class="venues">${ele.venue_id }</div>		
		  <table class="table table-bordered" style="border: #ffffff !important;">
		    <tbody>
		      <tr>		     
		      	<td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; width: 30%;">Check-in:</td>
		        <td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; color: #777; width: 70%;">
		        	<fmt:formatDate value='${ele.acc_begin }' pattern = 'yyyy-MM-dd'/>
		        	<fmt:formatDate value='${ele.acc_begin }' pattern = 'MM' var="bm"/>
		        	<fmt:formatDate value='${ele.acc_begin }' pattern = 'dd' var="bd"/>
		        </td>
		      </tr>
		      <tr>
		      	<td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; width: 30%;">Check-out:</td>
		        <td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; color: #777; width: 70%;">
		        	<fmt:formatDate value='${ele.acc_end }' pattern = 'yyyy-MM-dd'/>
		        	<fmt:formatDate value='${ele.acc_end }' pattern = 'MM' var="em"/>
		        	<fmt:formatDate value='${ele.acc_end }' pattern = 'dd' var="ed"/>
		        </td>		      
		      </tr>
<!-- 		      <tr>		      -->
<!-- 		      	<td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; width: 30%;">Night(s):</td> -->
<!-- 		        <td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; color: #777; width: 70%;"> -->
<!-- 		        	날짜 빼기 -->
<%-- 					<jsp:useBean id="daysFromNow" class="java.util.Date"> --%>
<%-- 					<c:set target="${daysFromNow}" property="time" value="${ele.acc_end.time - ele.acc_begin.time}" /> --%>
<%-- 					</jsp:useBean>	 --%>
<%-- 					<fmt:formatDate value='${daysFromNow}' pattern = 'dd'/> --%>
<!-- 		        </td> -->
<!-- 		      </tr> -->
		      <tr>		     
		      	<td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; width: 30%;">Room No:</td>
		        <td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; color: #777; width: 70%;">${ele.acc_room }</td>
		      </tr>
		      <tr>
		      	<td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; width: 30%;">Door PIN:</td>
		        <td style="border: #ffffff !important; background-color: #ffffff !important; color: #000000; font-weight:normal; text-align: left; color: #777; width: 70%;">${ele.acc_pin}</td>		      
		      </tr>
		      
		    </tbody>
		  </table>
		  </div>
		  <!-- Map -->
		  <div class="col-md-6 col-sm-6 col-xs-12">
		  	<div id="map" style="height: 20em;"></div>		  
		  </div>
	</div>
	<!-- Facilities & Services -->
	<div class="row row-style">
		  <h4 style="padding-top: 1em; font-size: 1em;"><strong>Facilities</strong></h4>
	</div>
	<div class="row row-style">	
	<c:forEach items="${tfac }" var="elee">
	<c:set var="fac_var" value=" ${elee.id },"/>
	<c:if test = "${fn:contains(ele.acc_fac, fac_var)}">
	<div class="col-sm-6">
	<p style="color: #5CB85C"><i class="material-icons">${elee.fac_icon }&nbsp&nbsp&nbsp</i><span style="size: 0.3em; vertical-align: top">${elee.fac_title } / ${elee.fac_title_loc }</span></p>
	</div>
	</c:if>
	</c:forEach>
	</div>
	<div style="height: 1em"></div>
	<!-- General -->
	<div class="row row-style">
		<h4 style="font-size: 1em;"><strong>Rule and Regulation</strong></h4>
		<ul>
		<c:forEach items="${tpol }" var="elee">
		<c:set var="pol_var" value=" ${elee.id },"/>
		<c:if test = "${fn:contains(ele.acc_pol, pol_var)}">
		<li>${elee.pol_title }</li>
		</c:if>
		</c:forEach>
		</ul>
		<%-- <p><strong>${ele.acc_desc }</strong></p> --%>
	</div>
	<!-- <div style="height: 1em"></div> -->
	<%-- <!-- Show to Taxi driver -->
	<div class="row row-style">
		<h4 style="font-size: 1em;"><strong>Show to Taxi driver</strong></h4>
		<p>${ele.venue_address_loc }</p>
	</div> --%>
	<%-- <!-- Map -->	
	<div class="row row-style">
		<div id="map" style="height: 25em;"></div>
	</div>	 --%>			 
	</c:forEach>
	<!-- My Accommodation section ends -->	
	<hr>
	<!-- My Travel section starts -->		

	<!-- Other section starts -->	
	<div class="row title-row-style">	
		<h4><span class="label label-success">Directions</span></h4>
		<p>${to.note }</p>
	</div>
	<!-- Other section ends -->	
</div>
    
    
    <!-- ******FOOTER****** -->
	<jsp:include page="common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
	

</body>
<script>
var neighborhoods = [];
var markers = [];
var map;

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
	    zoom: 13,
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
    addMarkerWithTimeout(neighborhoods[i], i * 50);
  }
  //window.setTimeout(function() {refreshBtn();}, (neighborhoods.length+1)*50);
}

/**
 * 마커 세팅
 */	
function markerSet(){
	var venues = $(".venues").text();
	
	$.post( "${pageContext.request.contextPath}/get/venue")
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
        	 }else if(go[i].venue_type  == 'c_venue'){
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
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN9VDOjhzw7kPKEbFw7LEVoVreCXiz87E&callback=initMap" async defer></script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');
</script>
<!--Start of Tawk.to Script-->
<!-- <script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5953488e50fd5105d0c82fde/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script> -->
	</fmt:bundle>
	
</html>