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
<!-- 이미지 캔바스 라이브러리 -->
<script src="${pageContext.request.contextPath}/resources/ufo/assets/js/load-image.all.min.js"></script>	

<style>
	#map {
	   height: 25em;
	   	 }
	#legend {
        font-family: Arial, sans-serif;
        background: #fff;
        padding: 10px;
        margin: 10px;
        border: 3px solid #000;
      }
    #legend h3 {
      margin-top: 0;
    }
    #legend img {
      vertical-align: middle;
    }
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 
.filebox {display:inline-block; margin-right: 10px;}


.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox.bs3-primary label {
  color: #fff;
  background-color: #337ab7;
    border-color: #2e6da4;
}

.filebox.bs3-success label {
  color: #fff;
  background-color: #5cb85c;
    border-color: #4cae4c;
}
</style>


</head>

<body data-spy="scroll" data-target="#page-nav" class="blog-page">
<section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.q2_img})"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
		<c:choose>
			<c:when test="${!empty ufo.q1_img}">
		   			<img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="height:17em; margin: 0 auto;" data-dismiss="modal">
			</c:when>
			<c:otherwise>
			<div style="height:3em"></div>
					<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
					<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
			</c:otherwise>
		</c:choose>			
			<div class="actions">
                 <div class="actions">
         			<a class="scrollto" href="#page-nav-wrapper"><button class="btn" style="background-color: #ed45a4;">${ufo.ufoLable.minwon_btn}</button></a>
   				</div>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline" >
					<li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">${ufo.ufoLable.navi_index}</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">${ufo.ufoLable.navi_stamp}</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">${ufo.ufoLable.stories}</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">${ufo.ufoLable.navi_features}</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'minwon')}"><li  class="active" style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/minwon">${ufo.ufoLable.minwon}</a></li></c:if>
					</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
<section id="page-nav-wrapper" class="support-section section text-center" style="padding-top:2em; padding-bottom:2em; padding-left:15px; padding-right:15px;">
	<div class="team-figure" >
		<div id="map" style="height: 25em;"></div>
		<div class="row">
			<button class="btn" onClick="getUfo('go')" style="background-color: #ed45a4; color: white">${ufo.ufoLable.minwon_minwon}</button>
			<button class="btn btn-warning" onClick="redirectGallery('mw')" style="margin:1em; background-color: #00a27c; border-color: #00a27c;"><span class="btn-text">${ufo.ufoLable.stamp_goGallery}</span></button> 
		</div>					
	</div>
</section>
<section id="signup-section" class="signup-section section" style="padding-top: 1em;padding-bottom: em">
		<div class="section-inner" style="padding-top: 2em">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->
			<c:if test="${fn:contains(sessionScope.eventMenu, 'minwon')}">
				<div class="form-wrapper">
					<div class="form-box">
						<div class="quotes">
							<div class="row">
								<div class="quote-item col-sm-12 text-center" style="padding-top:30px">
									<div class="inner" style="padding-top:45px; padding-left:15px; padding-right:15px; padding-bottom: 20px;">			
										<i class="fa fa-quote-left" aria-hidden="true"></i>
										${ufo.minwon_map }<br>
										${ufo.minwon_how_to }
									</div>
									<!--//inner-->
								</div>
								<!--//quote-item2-->			
							</div>
							<!--//row-->
						</div>
						<!--//quotes-->			
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->
			</c:if>
		</div>
	</div>
</section>
		
<!-- 스템프  -->
<c:if test="${fn:contains(sessionScope.eventMenu, 'minwon')}">
<button type="button" class="btn btn-info btn-lg" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#stampRally" style="display:none;" id="rallyTrigger">RALLYTRINGGER</button>
<div class="modal" id="stampRally" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">민원 처리 하기</h3>
	   </div>
	   <div class="modal-body">
	   		<div class="row">
	   			<div id="minwonDesc">민원 처리 합시다요.</div>
	   			<form action="/PIX/ufogo/insertMinwon" method="post" enctype="multipart/form-data" id="minwonForm">
	   				Lat <br> 
	   				<input type="text" name="minwonLat" id="minwonLat" readonly class="form-control">
	   				Lng <br>
	   				<input type="text" name="minwonLng" id="minwonLng" readonly class="form-control">
	   				Uid <br>
	   				<input type="text" id="minwonUid" name="minwonUid" readonly class="form-control">
	   				민원 내용 <br>
	   				<textarea name="minwonDesc" id="minwonDesc" maxlength="2000" class="form-control"></textarea><br>
	   				<input type="hidden" id="para" name="para" value="${sessionScope.eventPara}">
	   				<input type="hidden" id="minwonFn" name="minwonFn">
	   				<input type="hidden" id="minwonLn" name="minwonLn">
	   				<input type="hidden" id="minwonEm" name="minwonEm">
	   				<div class="filebox bs3-success">
	                <label for="minwon_go">${ufo.ufoLable.stamp_takePic}</label> 
				  	<input type="file" id="minwon_go" name="temp" class="form-control" accept="image/*" hidden>
				    </div>
	   			</form>
	   		</div>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-backdrop="static" data-keyboard="false" data-dismiss="modal" style=" color:#d7579f; border-color: #d7579f;" onClick="minwonSubmit()">${ufo.ufoLable.gen_complete}</button>
	  	</div>
	</div>
	<script>
	document.getElementById('minwon_go').onchange = function (e) {
	    loadImage(
	        e.target.files[0],
	        function (img) {
	        	var node = document.getElementById('minwonDesc');
	        	while(node.firstChild){
	        		node.removeChild(node.firstChild);
	        	}
	        	img.toDataURL('image/jpeg');
	        	img.id = 'minwonImg';
	        	img.className = "img-responsive";
	        	node.appendChild(img);
	        },
	        {maxWidth: ${ufo.photo_pix }, orientation: true, canvas:true, downsamplingRatio: ${ufo.photo_comp }} // Options
	    );
	};
	
// 	$(document).ready(function() {
// 	    $('#stamp_go${ele.ufo_gid }').change(function() {
// 	           $('#btn${ele.ufo_gid }').prop('disabled', false);
// 	           $('#btn${ele.ufo_gid }').addClass("btn-primary");
// 	    });
// 	});
	</script>
	</div>
</div>
<c:forEach var="ele" varStatus="statusEle" items="${ufoGo }">
<div class="modal" id="stamp_${ele.ufo_gid }_modal" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">${ufo.ufoLable.stamp_mission} ${statusEle.count }</h3>
	   </div>
	   <div class="modal-body" style="padding-top:0px; padding-bottom:15px; padding-left: 15px; padding-right: 15px;">
   			<div style="padding-bottom:10px;">${ufo.ufoLable.stamp_takePicDesc} : ${ele.go_content }<br>
   			</div>
			<!-- 스탬프 미션 사진, 내용 -->			
			<div>
			<c:if test="${!empty ele.go_image}">
					<img class="img-responsive" style="padding-bottom:10px" src="https://www.ufo79.com/image/${ele.go_image }">
			</c:if>
   			</div>
   			<div style="padding-bottom:10px" id="desc${ele.ufo_gid }">${ele.go_desc}<br>
   			</div>
   			<form id="stampForm${ele.ufo_gid }" action="/PIX/ufogo/insert" method="post" enctype="multipart/form-data">
			  	<div class="filebox bs3-success">
                <label for="stamp_go${ele.ufo_gid }">${ufo.ufoLable.stamp_takePic}</label> 
			  	<input type="file" id="stamp_go${ele.ufo_gid }" name="temp" class="form-control" accept="image/*">
			    </div>
			  	
				<input type="hidden" id="first_name_go${ele.ufo_gid }" name="first_name">
				<input type="hidden" id="last_name_go${ele.ufo_gid }" name="last_name">
				<input type="hidden" id="uid_go${ele.ufo_gid }" name="user_uid">
				<input type="hidden" id="email_go${ele.ufo_gid }" name="email">
				<input type="hidden" id="type_go${ele.ufo_gid }" name="ufo_go_type" value="go">
				<input type="hidden" id="gid_go${ele.ufo_gid }" name="ufo_gid" value="${ele.ufo_gid }">
				<input type="hidden" id="para${ele.ufo_gid }" name="para" value="${sessionScope.eventPara}">
				<input type="hidden" id="login_type" name="login_type" value="${type }">
			</form>
		</div>
		<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal" onClick="getUfo('go')">${ufo.ufoLable.gen_back}</button>
	    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" onClick="stampPostSubmit('${ele.ufo_gid }')" id="btn${ele.ufo_gid }" disabled>${ufo.ufoLable.gen_submit}</button>
	  	</div>
	</div>
	</div>
</div>
<script>
document.getElementById('stamp_go'+'${ele.ufo_gid }').onchange = function (e) {
    loadImage(
        e.target.files[0],
        function (img) {
        	var node = document.getElementById('desc'+'${ele.ufo_gid }');
        	while(node.firstChild){
        		node.removeChild(node.firstChild);
        	}
        	img.toDataURL('image/jpeg');
        	img.id = 'img'+'${ele.ufo_gid }';
        	img.className = "img-responsive";
        	node.appendChild(img);
        },
        {maxWidth: 250, orientation: true, canvas:true, downsamplingRatio: 0.5} // Options
    );
};

$(document).ready(function() {
    $('#stamp_go${ele.ufo_gid }').change(function() {
           $('#btn${ele.ufo_gid }').prop('disabled', false);
           $('#btn${ele.ufo_gid }').addClass("btn-primary");
    });
});
</script>
</c:forEach>

<div class="modal" id="qr_info" role="dialog">
	<div class="modal-dialog">
   			<img src="https://www.ufo79.com/image/${ufo.qr_pic}" class="img-responsive" alt="" style="width:100%" data-dismiss="modal">
	</div>
</div>
</c:if>

	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
<script>
function showSingleStamp(para){
	$("#stampRally").modal('hide');
 	$('#stamp_'+para+'_modal').modal({backdrop: 'static',keyboard: false}); 
	$('#stamp_'+para+'_modal').modal('show');
}
var iconBase = 'https://www.ufo79.com/image/';
var icons = {
  me:{
	  icon: iconBase + 'NEW_icon_UFO_me.svg'
  },
  ufoOn:{
	  icon: iconBase + 'icon_pin_20px.svg'
  },
  ufoOff:{
	  icon: iconBase +'icon_pin_15px_off.svg'
  },
  ufoDone:{
	  icon: iconBase +'icon_done.svg'
  },
  booth:{
	  icon: iconBase +'booth.png'
  }
};
        
        
var neighborhoods = [];
var markers = [];
var map;

function qrInfoShow(){
	$("#qr_info").modal('show');
}

/**
*
*/
function CenterControl(controlDiv) {

      // Set CSS for the control border.
      var controlUI = document.createElement('div');
      controlUI.style.backgroundColor = '#fff';
      controlUI.style.border = '2px solid #fff';
      controlUI.style.borderRadius = '3px';
      controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
      controlUI.style.cursor = 'pointer';
      controlUI.style.marginBottom = '22px';
      controlUI.style.textAlign = 'center';
      controlUI.style.margin = '5px';
      controlUI.title = 'Click to recenter the map';
      controlDiv.appendChild(controlUI);

      // Set CSS for the control interior.
      var controlText = document.createElement('div');
      controlText.style.color = 'rgb(25,25,25)';
      controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
      controlText.style.fontSize = '16px';
      controlText.style.lineHeight = '38px';
      controlText.style.paddingLeft = '5px';
      controlText.style.paddingRight = '5px';
      controlText.innerHTML = '<img src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/map_refresh.svg" style="width: 35px; height: 35px;">';
      controlUI.appendChild(controlText);

      // 센터 잡기
      controlUI.addEventListener('click', function() {
          $( controlUI ).fadeOut( "slow", function() {
        	  });
    	  makeGo();
      });
    }
function CenterControl2(controlDiv) {

    // Set CSS for the control border.
    var controlUI = document.createElement('div');
    controlUI.style.backgroundColor = '#fff';
    controlUI.style.border = '2px solid #fff';
    controlUI.style.borderRadius = '3px';
    controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
    controlUI.style.cursor = 'pointer';
    controlUI.style.marginBottom = '22px';
    controlUI.style.textAlign = 'center';
    controlUI.style.margin = '5px';
    controlUI.title = 'Click to recenter the map';
    controlDiv.appendChild(controlUI);

    // Set CSS for the control interior.
    var controlText = document.createElement('div');
    controlText.style.color = 'rgb(25,25,25)';
    controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
    controlText.style.fontSize = '16px';
    controlText.style.lineHeight = '38px';
    controlText.style.paddingLeft = '5px';
    controlText.style.paddingRight = '5px';
    controlText.innerHTML = '<img src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/map_info.svg" style="width: 35px; height: 35px;">';
    controlUI.appendChild(controlText);

    // 센터 잡기
    controlUI.addEventListener('click', function() {
    	qrInfoShow()
    });
  }
/**
 * 리프레쉬 버튼 
 */
function refreshBtn(){
	$("#refreshBtn").remove();
	$("#mapInfoBtn").remove();
	var centerControlDiv = document.createElement('div');
    centerControlDiv.setAttribute("id", "refreshBtn");
    var centerControl = new CenterControl(centerControlDiv);
    
    var centerControlDiv2 = document.createElement('div');
    centerControlDiv2.setAttribute("id", "mapInfoBtn");
    var centerControl2 = new CenterControl2(centerControlDiv2);
    
    
    centerControlDiv.index = 1;
    centerControlDiv2.index = 1;
    map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);
    map.controls[google.maps.ControlPosition.LEFT_TOP].push(centerControlDiv2);
    
}
 /**
   * 
 */
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 18,
	    center: {lat: 35.097, lng: 129.008},
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

function handleLocationError(browserHasGeolocation, infoWindow, pos, message) {
    infoWindow.setPosition(pos);
    //infoWindow.setContent(browserHasGeolocation ? 'Error: 위치를 찾을수 없습니다.' : 'Error: 위치정보 지원하지 않는 브라우져 입니다.');
    infoWindow.setContent(message);
}
/**
 * 
*/	
function drop() {
  for (var i = 0; i < neighborhoods.length; i++) {
    addMarkerWithTimeout(neighborhoods[i], i * 50);
  }
  window.setTimeout(function() {refreshBtn();}, (neighborhoods.length+1)*50);
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
  
 var marker = new google.maps.Marker({
      position: pos,
      map: map,
      animation: google.maps.Animation.DROP,
      icon: icons[position.type].icon
 });
 marker.addListener('click', function() {
	    infowindow.open(map, marker);
  });
 if(marker.icon.includes("me")){
	 marker.setAnimation(google.maps.Animation.BOUNCE);
	// infowindow.open(map, marker);
 }
    markers.push(marker);
	}, timeout);
}


/**
 * 
*/	
function clearMarkers() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(null);
  };
  markers = [];
  neighborhoods = [];
}

/**
 * 지오 옵션
 */
var geo_options = {
		  enableHighAccuracy: true, 
		  maximumAge        : 0 
		  //,timeout           : 30000
		};
	
/**
 * 
*/	
function makeGo(){
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
    	console.log("위치 정보 refresh.");
    	clearMarkers();
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
          type: "me",
          content:'<h1 id="firstHeading" style="font-family:football">${ufo.ufoLable.stamp_me}</h1>'
        };
        $("#minwonLng").val(pos.lng);
        $("#minwonLat").val(pos.lat);
        
        if(checkLogin()){
        	var uid = window.sessionStorage.getItem('uid');
        	$("#minwonUid").val(uid);
        	
 	       clearMarkers();
 	       markerSet(pos);
 	       
        }else{
        	clearMarkers();
        	markerSet(pos);
        }
        
      }, function(error) {
    	var infoWindow = new google.maps.InfoWindow({map: map});
        //console.log('ERROR(' + error.code + '): ' + error.message);
        var msg = '';
        if(error.code == 1){
        	msg	= '위치 정보 사용에 동의해 주세요.';
        }else if(error.code == 2){
        	msg = '위치 정보를 사용 할 수 없습니다.';
        }else if(error.code == 3){
        	msg = '위치를 찾는데 너무 오래 걸립니다.';
        }else{
        	msg = '위치를 정보를 찾을 수 없습니다.';
        }
        handleLocationError(true, infoWindow, map.getCenter(), msg);
        
      }, geo_options);
    } else {
      var infoWindow = new google.maps.InfoWindow({map: map});
      handleLocationError(false, infoWindow, map.getCenter(), '최신 브라우져를 사용해 주세요.');
	}
}
/**
 * 마커 세팅
 */
		
function markerSet(pos){
	$.post( "/PIX/get/ufominwon/${sessionScope.eventPara}/")
       .done(function( data ) {
         var go = JSON.parse(JSON.stringify(data));		         
         for(var i = 0; i < go.length; i++){
        	 var target = {};
        	// https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/mw/777/'+go[i].id+'"
        	 target.lat = parseFloat((Number(go[i].minwonLat)));
        	 target.lng = parseFloat((Number(go[i].minwonLng)));
        	 target.content = '<p><h4 id="firstHeading" style="font-family:football;">'+'<img src=https://www.ufo79.com/image/'+go[i].minwonImg+' style="width:10em"><br><br>'+go[i].minwonDesc+'</h3></p><br><button class="btn btn-social btn-facebook" onClick="goSingleMinwon('+go[i].id+')"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">공유하기</span></button>';
        	 target.type = "ufoOn";
        	 
	         neighborhoods.push(target);
         }
         neighborhoods.push(pos);
         map.setCenter(pos);
         drop();
         
    });
}

/**
 * 갤러리 리다렉 
 */
 
function goSingleMinwon(para){
	window.location.href = 	"https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/mw/"+window.sessionStorage.getItem('uid')+"/"+para;
}
/**
 * 
*/			
function stampRally(){
	if(checkLogin()){
		getUfo('go');
	}else{
		fbLogin('go');
	}
}

/**
 * 
*/
function minwonSubmit(){
	if(checkLogin()){
			  showPleaseWait();
			  $( "#minwonFn").val(window.sessionStorage.getItem('first_name'));
			  $( "#minwonLn").val(window.sessionStorage.getItem('last_name'));
			  $( "#minwonUid").val(window.sessionStorage.getItem('uid'));
			  $( "#minwonEm").val(window.sessionStorage.getItem('email'));		  
			  
			  var form = new FormData($("#minwonForm")[0]);
			  
			  var fileCanvas = document.getElementById('minwonImg').toDataURL('image/jpeg');
			  var blob = dataURItoBlob(fileCanvas);
			  form.append('file', blob, "fileName.png");

			  $.ajax({
		              url: '/PIX/ufogo/insertMinwon',
		              method: "POST",
		              dataType: 'json',
		              data: form,
		              processData: false,
		              contentType: false,
		              success: function(result){
		            	  showDone("성공하였습니다.", "mw");
		              },
		              error: function(er){}
		      });
		}else{
		fbLogin('qr');
	}
}
function dataURItoBlob(dataURI) {
    // convert base64/URLEncoded data component to raw binary data held in a string
    var byteString;
    if (dataURI.split(',')[0].indexOf('base64') >= 0)
        byteString = atob(dataURI.split(',')[1]);
    else
        byteString = unescape(dataURI.split(',')[1]);

    // separate out the mime component
    var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];

    // write the bytes of the string to a typed array
    var ia = new Uint8Array(byteString.length);
    for (var i = 0; i < byteString.length; i++) {
        ia[i] = byteString.charCodeAt(i);
    }

    return new Blob([ia], {type:mimeString});
}



</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN9VDOjhzw7kPKEbFw7LEVoVreCXiz87E&callback=initMap" async defer></script>
</body>
</html>