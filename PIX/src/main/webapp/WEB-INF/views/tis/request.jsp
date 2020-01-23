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
    
<%--     <noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/no-js.css"></noscript> --%>
    
    <!-- Favicons -->
	<link rel="shortcut icon" href="<fmt:message key="baseurl"></fmt:message>/image/favicon.ico">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	<!-- 특별한 드랍 다운을 위해 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
	<!-- 특별한 드랍 다운 끝 -->

</head>
<!-- Scrolling Navigation tab 구현해야하는 부분  -->
<!-- <div class="container" style="width:100%; height: auto; background-color: #444;"> -->
<!-- 	<button class="astext" onclick="signout();">Sign Out</button> -->
<!-- 		<script> -->
<!-- //       		function signout(){ -->
<!-- // 	      	var c = confirm("Signing out?"); -->
<!-- // 		      	if(c == true){ -->
<!-- // 		      		location.href = 'signout'; -->
<!-- // 		      	}else{ -->
<!-- // 		      		//stays in the site -->
<!-- // 		      	} -->
<!-- //       		} -->
<!--    		</script> -->
<!-- </div> -->
<nav class="navbar navbar-default" style="height: 6em ; background-size: 2000px 7em; background-image: url('${pageContext.request.contextPath}/resources/tis/image/headerGeneric.png'); border-radius:0; border:0">
	<div class="container-fluid on-the-fly-behavior2">
    <!-- Brand and toggle get grouped for better mobile display -->
<!--     <div class="navbar-header" >  -->
<!--       <a class="navbar-brand" href="#" style="padding-top: 2em;color: WHITE"> -->
      	<h4 class="navbar-brand" style="color: WHITE; font-size: 1.5em; padding-top: 1.5em;">Booking request</h4>
<%--       	<img class="img-responsive" alt="Trip Info System" src="${pageContext.request.contextPath}/resources/tis/image/TIS_LOGO.png" style="max-height:3.5em; max-width: 50%; margin-top: 1.5em; margin-right: 1em; float:left;"> --%>
      	<!-- <button class="btn" style="margin-top: 2em" onclick="signout()">Sign Out</button> -->
      	<!-- <script>
      	function signout(){
	      	var c = confirm("Signing out?");
	      	if(c == true){
	      		location.href = 'signout';
	      	}else{
	      		//stays in the site
	      	}
      	}
      	</script> -->
<!--       </a> -->
     <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/resources/tis/image/Atos.svg" style="max-height: 2em; max-width:15%; margin-top: 2em; margin-right: 1em; float:right;"  >
    </div>
   
    <!-- Collect the nav links, forms, and other content for toggling -->
<!--     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
<!--     </div>/.navbar-collapse -->
<!--   </div> -->
</nav>
<!-- 아몰랑 탭 스크롤 나중에 찾자 -->
<!-- 	<div class="page-nav-space-holder"> -->
<!-- 		<div id="page-nav-wrapper" class="page-nav-wrapper text-center"> -->
<!-- 			<div class="container"> -->
<!-- 				<ul id="page-nav" class="nav page-nav list-inline"> -->
<!-- 					<li ><a href="#accom">1</a></li> -->
<!-- 					<li class="active"><a href="#accom">2</a></li> -->
<!-- 					<li ><a href="#accom">3</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<div class="container on-the-fly-behavior">
		<h5>Traveler</h5>
		<form name="requestForm" action="requestFormAction" method="POST" onsubmit="return alert('Your request has been submitted.');">
		<div class="row form-group">
			<div class="col-sm-2">
				<label>Title <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<select class="selectpicker" name="req_title" required="required">
					<option value="Mr.">Mr.</option>
					<option value="Ms.">Ms.</option>
				</select>
			</div>
		</div>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>First Name <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="first_name" required="required">
			</div>
		</div>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Last Name <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="last_name" required="required">
			</div>
		</div>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Email Address <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<input type="email" class="form-control" placeholder="e.g. janet.kim@atos.net" required="required" name="email">
			</div>
		</div>
		<div class="row form-group">
			<div class="col-sm-2">
				<label>Travel purpose <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<select class="selectpicker" required="required" name="req_purpose">
					<c:forEach items="${te }" var="ele">
						<option value="${ele.id }">${ele.event_name }</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="row form-group">
			<div class="col-sm-2">
				<label>Travel Venue</label>
			</div>
			<div class="col-sm-10">
				<select class="selectpicker" multiple name="req_venue">
				<c:forEach items="${tv }" var="ele">
					<option value="${ele.id }">${ele.venue_name }</option>
				</c:forEach>
				</select>
			</div>
		</div>
		<div class="row form-group">
			<div class="col-sm-2">
				<label>Local Contact <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<select class="selectpicker" required="required" name="req_contact">
				<c:forEach items="${temp }" var="ele">
					<option value="${ele.id }">${ele.first_name } ${ele.last_name }</option>
				</c:forEach>
				</select>
			</div>
		</div>
		
		<h5>Arrive to Incheon Airport</h5>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Arrive Date <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<input type="datetime-local" class="form-control" name="arrive_stmp"  id="arrive_stmp" pattern = 'yyyy-MM-ddTHH:mm' style="width:auto;" required="required">
			</div>
		</div>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Flight No</label>
			</div>
			<div class="col-sm-3">
			<select class="selectpicker" data-live-search="true" name="arrive_flight">
				<option value="KE">KE - Korean Air</option>
				<option value="JP">JP - Adria Airways</option>
				<option value="A3">A3 - Aegean Airlines</option>
				<option value="RE">RE - Aer Arann</option>
				<option value="EI">EI - Aer Lingus</option>
				<option value="SU">SU - Aeroflot Russian Airlines</option>
				<option value="AR">AR - Aerolineas Argentinas</option>
				<option value="AM">AM - Aeromexico</option>
				<option value="AH">AH - Air Algerie</option>
				<option value="KC">KC - Air Astana</option>
				<option value="AB">AB - Air Berlin</option>
				<option value="AC">AC - Air Canada</option>
				<option value="CA">CA - Air China</option>
				<option value="UX">UX - Air Europa</option>
				<option value="AF">AF - Air France</option>
				<option value="AI">AI - Air India</option>
				<option value="KM">KM - Air Malta</option>
				<option value="SW">SW - Air Namibia</option>
				<option value="NZ">NZ - Air New Zealand</option>
				<option value="HM">HM - Air Seychelles</option>
				<option value="VT">VT - Air Tahiti</option>
				<option value="UM">UM - Air Zimbabwe</option>
				<option value="AS">AS - Alaska Airlines</option>
				<option value="AZ">AZ - Alitalia</option>
				<option value="NH">NH - All Nippon Airways</option>
				<option value="AA">AA - American Airlines</option>
				<option value="W3">W3 - Arik Air</option>
				<option value="OZ">OZ - Asiana Airlines</option>
				<option value="RC">RC - Atlantic Airways</option>
				<option value="GR">GR - Aurigny</option>
				<option value="OS">OS - Austrian Airlines</option>
				<option value="AV">AV - Avianca</option>
				<option value="J2">J2 - Azerbaijan Hava Yollary</option>
				<option value="PG">PG - Bangkok Airways</option>
				<option value="KF">KF - Blue1</option>
				<option value="BA">BA - British Airways</option>
				<option value="SN">SN - Brussels Airlines</option>
				<option value="FB">FB - Bulgaria Air</option>
				<option value="CX">CX - Cathay Pacific</option>
				<option value="OK">OK - Czech Airlines</option>
				<option value="CI">CI - China Airlines</option>
				<option value="MU">MU - China Eastern Airlines</option>
				<option value="CZ">CZ - China Southern Airlines</option>
				<option value="OU">OU - Croatia Airlines</option>
				<option value="CY">CY - Cyprus Airways</option>
				<option value="DL">DL - Delta Air Lines</option>
				<option value="T3">T3 - Eastern Airways</option>
				<option value="MS">MS - Egyptair</option>
				<option value="LY">LY - El Al Israel Airlines</option>
				<option value="EK">EK - Emirates</option>
				<option value="OV">OV - Estonian Air</option>
				<option value="ET">ET - Ethiopian Airlines</option>
				<option value="EY">EY - Etihad Airways</option>
				<option value="BR">BR - Eva Air</option>
				<option value="AY">AY - Finnair</option>
				<option value="BE">BE - Flybe</option>
				<option value="GA">GA - Garuda Indonesia</option>
				<option value="GF">GF - Gulf Air</option>
				<option value="HR">HR - HAHN Air</option>
				<option value="HX">HX - Hong Kong Airlines</option>
				<option value="IB">IB - Iberia</option>
				<option value="FI">FI - Icelandair</option>
				<option value="JL">JL - Japan Airlines</option>
				<option value="9W">9W - Jet Airways</option>
				<option value="KQ">KQ - Kenya Airways</option>
				<option value="KL">KL - KLM Royal Dutch Airlines</option>				
				<option value="KU">KU - Kuwait Airways</option>
				<option value="LA">LA - LAN Colombia</option>
				<option value="LO">LO - LOT - Polish Airlines</option>
				<option value="LH">LH - Lufthansa</option>
				<option value="LG">LG - Luxair</option>
				<option value="MH">MH - Malaysia Airlines</option>
				<option value="ME">ME - Middle East Airlines</option>
				<option value="IG">IG - Meridiana</option>
				<option value="MX">MX - Mexicana</option>
				<option value="ZB">ZB - Monarch Airlines</option>
				<option value="NW">NW - Northwest Airlines</option>
				<option value="DY">DY - Norwegian Air Shuttle</option>
				<option value="OA">OA - Olympic Air</option>
				<option value="WY">WY - Oman Air</option>
				<option value="FV">FV - Rossiya-Russia Airlines</option>
				<option value="QF">QF - Qantas Airways</option>
				<option value="QR">QR - Qatar Airways</option>
				<option value="AT">AT - Royal Air Maroc</option>
				<option value="BI">BI - Royal Brunei Airlines</option>
				<option value="RJ">RJ - Royal Jordanian</option>
				<option value="S7">S7 - Siberia Airlines</option>
				<option value="SV">SV - Saudi Arabian Airlines</option>
				<option value="SK">SK - Scandinavian Airlines System (SAS)</option>
				<option value="SQ">SQ - Singapore Airlines</option>
				<option value="SA">SA - South African Airways</option>
				<option value="JK">JK - Spanair</option>
				<option value="UL">UL - SriLankan Airlines</option>
				<option value="LX">LX - SWISS International Air Lines</option>
				<option value="JJ">JJ - TAM Airlines</option>
				<option value="TP">TP - TAP Portugal</option>
				<option value="RO">RO - Tarom</option>
				<option value="TG">TG - Thai Airways International</option>
				<option value="UN">UN - Transaero Airlines</option>
				<option value="TU">TU - Tunisair</option>
				<option value="TK">TK - Turkish Airlines</option>
				<option value="PS">PS - Ukraine International Airlines</option>
				<option value="UA">UA - United Airlines</option>
				<option value="US">US - US Airways</option>
				<option value="HY">HY - Uzbekistan Airways</option>
				<option value="VN">VN - Vietnam Airlines</option>
				<option value="VS">VS - Virgin Atlantic Airways</option>
				<option value="VG">VG - VLM Airlines (Cityjet)</option>
			</select>
			</div>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="arrive_flight_name">
			</div>
		</div>
		<h5>Leave from Incheon Airport</h5>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Leave Date <span style="color: RED">*</span></label>
			</div>
			<div class="col-sm-10">
				<input type="datetime-local" class="form-control" name="leave_stmp" id="leave_stmp" pattern = 'yyyy-MM-ddTHH:mm' style="width:auto;" required="required">
			</div>
		</div>
		<div class="row form-group form-group-sm">
			<div class="col-sm-2">
				<label>Flight No</label>
			</div>
			<div class="col-sm-3">
			<select class="selectpicker" data-live-search="true" name="leave_flight">
				<option value="KE">KE - Korean Air</option>
				<option value="JP">JP - Adria Airways</option>
				<option value="A3">A3 - Aegean Airlines</option>
				<option value="RE">RE - Aer Arann</option>
				<option value="EI">EI - Aer Lingus</option>
				<option value="SU">SU - Aeroflot Russian Airlines</option>
				<option value="AR">AR - Aerolineas Argentinas</option>
				<option value="AM">AM - Aeromexico</option>
				<option value="AH">AH - Air Algerie</option>
				<option value="KC">KC - Air Astana</option>
				<option value="AB">AB - Air Berlin</option>
				<option value="AC">AC - Air Canada</option>
				<option value="CA">CA - Air China</option>
				<option value="UX">UX - Air Europa</option>
				<option value="AF">AF - Air France</option>
				<option value="AI">AI - Air India</option>
				<option value="KM">KM - Air Malta</option>
				<option value="SW">SW - Air Namibia</option>
				<option value="NZ">NZ - Air New Zealand</option>
				<option value="HM">HM - Air Seychelles</option>
				<option value="VT">VT - Air Tahiti</option>
				<option value="UM">UM - Air Zimbabwe</option>
				<option value="AS">AS - Alaska Airlines</option>
				<option value="AZ">AZ - Alitalia</option>
				<option value="NH">NH - All Nippon Airways</option>
				<option value="AA">AA - American Airlines</option>
				<option value="W3">W3 - Arik Air</option>
				<option value="OZ">OZ - Asiana Airlines</option>
				<option value="RC">RC - Atlantic Airways</option>
				<option value="GR">GR - Aurigny</option>
				<option value="OS">OS - Austrian Airlines</option>
				<option value="AV">AV - Avianca</option>
				<option value="J2">J2 - Azerbaijan Hava Yollary</option>
				<option value="PG">PG - Bangkok Airways</option>
				<option value="KF">KF - Blue1</option>
				<option value="BA">BA - British Airways</option>
				<option value="SN">SN - Brussels Airlines</option>
				<option value="FB">FB - Bulgaria Air</option>
				<option value="CX">CX - Cathay Pacific</option>
				<option value="OK">OK - Czech Airlines</option>
				<option value="CI">CI - China Airlines</option>
				<option value="MU">MU - China Eastern Airlines</option>
				<option value="CZ">CZ - China Southern Airlines</option>
				<option value="OU">OU - Croatia Airlines</option>
				<option value="CY">CY - Cyprus Airways</option>
				<option value="DL">DL - Delta Air Lines</option>
				<option value="T3">T3 - Eastern Airways</option>
				<option value="MS">MS - Egyptair</option>
				<option value="LY">LY - El Al Israel Airlines</option>
				<option value="EK">EK - Emirates</option>
				<option value="OV">OV - Estonian Air</option>
				<option value="ET">ET - Ethiopian Airlines</option>
				<option value="EY">EY - Etihad Airways</option>
				<option value="BR">BR - Eva Air</option>
				<option value="AY">AY - Finnair</option>
				<option value="BE">BE - Flybe</option>
				<option value="GA">GA - Garuda Indonesia</option>
				<option value="GF">GF - Gulf Air</option>
				<option value="HR">HR - HAHN Air</option>
				<option value="HX">HX - Hong Kong Airlines</option>
				<option value="IB">IB - Iberia</option>
				<option value="FI">FI - Icelandair</option>
				<option value="JL">JL - Japan Airlines</option>
				<option value="9W">9W - Jet Airways</option>
				<option value="KQ">KQ - Kenya Airways</option>
				<option value="KL">KL - KLM Royal Dutch Airlines</option>
				<option value="KU">KU - Kuwait Airways</option>
				<option value="LA">LA - LAN Colombia</option>
				<option value="LO">LO - LOT - Polish Airlines</option>
				<option value="LH">LH - Lufthansa</option>
				<option value="LG">LG - Luxair</option>
				<option value="MH">MH - Malaysia Airlines</option>
				<option value="ME">ME - Middle East Airlines</option>
				<option value="IG">IG - Meridiana</option>
				<option value="MX">MX - Mexicana</option>
				<option value="ZB">ZB - Monarch Airlines</option>
				<option value="NW">NW - Northwest Airlines</option>
				<option value="DY">DY - Norwegian Air Shuttle</option>
				<option value="OA">OA - Olympic Air</option>
				<option value="WY">WY - Oman Air</option>
				<option value="FV">FV - Rossiya-Russia Airlines</option>
				<option value="QF">QF - Qantas Airways</option>
				<option value="QR">QR - Qatar Airways</option>
				<option value="AT">AT - Royal Air Maroc</option>
				<option value="BI">BI - Royal Brunei Airlines</option>
				<option value="RJ">RJ - Royal Jordanian</option>
				<option value="S7">S7 - Siberia Airlines</option>
				<option value="SV">SV - Saudi Arabian Airlines</option>
				<option value="SK">SK - Scandinavian Airlines System (SAS)</option>
				<option value="SQ">SQ - Singapore Airlines</option>
				<option value="SA">SA - South African Airways</option>
				<option value="JK">JK - Spanair</option>
				<option value="UL">UL - SriLankan Airlines</option>
				<option value="LX">LX - SWISS International Air Lines</option>
				<option value="JJ">JJ - TAM Airlines</option>
				<option value="TP">TP - TAP Portugal</option>
				<option value="RO">RO - Tarom</option>
				<option value="TG">TG - Thai Airways International</option>
				<option value="UN">UN - Transaero Airlines</option>
				<option value="TU">TU - Tunisair</option>
				<option value="TK">TK - Turkish Airlines</option>
				<option value="PS">PS - Ukraine International Airlines</option>
				<option value="UA">UA - United Airlines</option>
				<option value="US">US - US Airways</option>
				<option value="HY">HY - Uzbekistan Airways</option>
				<option value="VN">VN - Vietnam Airlines</option>
				<option value="VS">VS - Virgin Atlantic Airways</option>
				<option value="VG">VG - VLM Airlines (Cityjet)</option>
			</select>
			</div>
			<div class="col-sm-7">
				<input type="text" class="form-control" name="leave_flight_name">
			</div>
		</div>
		<div class="row">
<!-- 			<div class="col-sm-6"> -->
<!-- 				<h4>You need accommodation for %number% days</h4> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-6" style="padding-bottom: 1em; padding-top: 1em;"> -->
<!-- 				<input type="submit" value="Submit"> -->
<!-- 				<input type="reset" value="Reset"> -->
<!-- 			</div> -->
		</div>
		</form>	
</div>
        <!-- ******FOOTER****** -->
	<jsp:include page="common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
</body>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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
<script>
var currentdate = new Date(); 
var now = currentdate.getFullYear() + "-" + ('0' + (currentdate.getMonth()+1)).slice(-2) + "-" + ('0' + currentdate.getDate()).slice(-2) + "T" + ('0'+currentdate.getHours()).slice(-2)  + ":" + ('0'+currentdate.getMinutes()).slice(-2);
document.getElementById('arrive_stmp').value = now;
document.getElementById('leave_stmp').value = now;
</script>
</fmt:bundle>
</html>