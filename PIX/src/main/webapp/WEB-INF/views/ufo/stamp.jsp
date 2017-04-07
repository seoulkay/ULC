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
<!-- 이미지 캔바스 라이브러리 -->
<script src="${pageContext.request.contextPath}/resources/ufo/assets/js/load-image.all.min.js"></script>	

<style>
 #map {
   height: 30em;
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
		   			<img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:25em; margin: 0 auto;" data-dismiss="modal">
			</c:when>
			<c:otherwise>
			<div style="height:3em"></div>
					<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
					<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
							<div class="actions">
                 			<a class="scrollto" href="#page-nav-wrapper"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            				</div>
			</c:otherwise>
		</c:choose>	
			
			<div class="actions">
                 <button class="btn" onClick="getUfo('go')" style="background-color: #ed45a4;">스탬프찍기</button>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">홈</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li class="active" style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">서베이</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li></c:if>
					<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
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
		<div id="map" style="height: 30em;"></div>
		<div class="row">
			<button class="btn btn-warning" onClick="redirectGallery('go')" style="margin:1em; background-color: #00a27c; border-color: #00a27c;"><span class="btn-text">갤러리로 가기</span></button> 
		</div>					
	</div>
</section>
<section id="signup-section" class="signup-section section" style="padding-top: 1em;padding-bottom: em">
		<div class="section-inner" style="padding-top: 2em">
			<div class="container text-center">
				<div class="counter-container"></div>
				<!--//counter-container-->
			<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
				<div class="form-wrapper">
					<div class="form-box">
						<div class="form-desc">${ufo.ufo_go_title }</div>
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
					</div>
					<!--//form-box-->
				</div>
				<!--//form-wrapper-->
			</c:if>
		</div>
	</div>
</section>
		
<!-- 스템프  -->
<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
<button type="button" class="btn btn-info btn-lg" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#stampRally" style="display:none;" id="rallyTrigger">RALLYTRINGGER</button>
<div class="modal" id="stampRally" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">스탬프랠리</h3>
	   </div>
	   <div class="modal-body">
	   		<div class="row">
	   			<c:forEach items="${ufoGo }" var="ele" varStatus="statusEle">
	   			<div class="col-xs-6" style="padding:0px;" id='${ele.ufo_gid }' style="position : relative; max-width:150px">
					<div>
		   				<img id="stamp_yes_${ele.ufo_gid }" class="img-responsive"  style="z-index: 2;position:absolute; top:15%; left:15%; display:none; opacity:1; height:5em; padding:5px;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg">
			   			<div id="stamp_${ele.ufo_gid }" style="display:none;border-radius: 5px;position:absolute; top:0; left:0;  opacity:0.5; width:96%; padding:5px; background-color: #00a27c; height:5.5em;margin:2%" onclick="showSingleStamp('${ele.ufo_gid }')"></div>
			   			<c:choose>
			   				<c:when test="${!empty ele.go_icon_img }">
			   						<img id="stamp_back_${ele.ufo_gid }" style="opacity:1; width:100%; padding:5px; display:block; height:6em" class="img-responsive" src="https://www.ufo79.com/image/${ele.go_icon_img }">
			   				</c:when>
			   				<c:otherwise>
			   						<img id="stamp_back_${ele.ufo_gid }" style="opacity:1; width:100%; padding:5px; display:block;height:6em" class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp_0${statusEle.count < 9 ? statusEle.count : statusEle.count - 8}_off.svg">
			   				</c:otherwise>
			   			</c:choose>
			   		</div>
						<p style="margin-bottom:3px; text-align:center; font-size: 1em;">${ele.go_content }</p>
	   			</div>
	   			</c:forEach>
	   		</div>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn btn-default" data-backdrop="static" data-keyboard="false" data-dismiss="modal" style=" color:#d7579f; border-color: #d7579f;" onClick="fbLogin('go_re')">완료</button>
	  	</div>
	</div>
	</div>
</div>
<c:forEach var="ele" varStatus="statusEle" items="${ufoGo }">
<div class="modal" id="stamp_${ele.ufo_gid }_modal" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h3 style="font-family:football;">스탬프 미션 ${statusEle.count }번</h3>
	   </div>
	   <div class="modal-body">
   			<div style="padding:10px;">다음 장소에서 사진을 찍어주세요 : ${ele.go_content }<br>
   			</div>
			<!-- 스탬프 미션 사진, 내용 -->			
			<div>
   				<img class="img-responsive" style="padding:10px" src="https://www.ufo79.com/image/${ele.go_image }">
   			</div>
   			<div style="padding:10px" id="desc${ele.ufo_gid }">${ele.go_desc}<br>
   			</div>
   			<form id="stampForm${ele.ufo_gid }" action="/PIX/ufogo/insert" method="post" enctype="multipart/form-data">
			  	<input type="file" id="stamp_go${ele.ufo_gid }" name="temp" class="form-control" accept="image/*">
				<input type="hidden" id="first_name_go${ele.ufo_gid }" name="first_name">
				<input type="hidden" id="last_name_go${ele.ufo_gid }" name="last_name">
				<input type="hidden" id="uid_go${ele.ufo_gid }" name="user_uid">
				<input type="hidden" id="email_go${ele.ufo_gid }" name="email">
				<input type="hidden" id="type_go${ele.ufo_gid }" name="ufo_go_type" value="go">
				<input type="hidden" id="gid_go${ele.ufo_gid }" name="ufo_gid" value="${ele.ufo_gid }">
				<input type="hidden" id="para${ele.ufo_gid }" name="para" value="${sessionScope.eventPara}">
			</form>
		</div>
		<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal" onClick="getUfo('go')">뒤로</button>
	    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" onClick="stampPostSubmit('${ele.ufo_gid }')" id="btn${ele.ufo_gid }" disabled>제출</button>
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
        {maxWidth: 1500, orientation: true, canvas:true, downsamplingRatio: 1} // Options
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
 	$('#stamp_'+para+'_modal').modal({backdrop: 'static',keyboard: false}); 
	$('#stamp_'+para+'_modal').modal('show');
}
var iconBase = '${pageContext.request.contextPath}/resources/ufo/assets/images/icons/';
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
	  icon: iconBase +'icon_pin_15px_fn_02.svg'
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
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
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
 * 
*/	
function makeGo(){
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
    	clearMarkers();
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
          type: "me",
          content:'<h1 id="firstHeading" style="font-family:football">나</h1>'
        };
        if(checkLogin()){
        	var uid = window.sessionStorage.getItem('uid');
        	var para = '${sessionScope.eventPara}';
        	$.post( "/PIX/ufogo/get/"+para+"/"+uid)
 	       .done(function( data ) {
 	        var go = JSON.parse(JSON.stringify(data));
 	        for(var i = 0; i < go.length; i++){
 	        	if(go[i].ufo_go_type == 'qr'){
 	        	  	//중복을 막는 코드가 필요함 
 	        		$('#qr_yes_'+go[i].ufo_gid).show();
 	        	}else if(go[i].ufo_go_type == 'go'){
 	        		$('#stamp_yes_'+go[i].ufo_gid).show();
 	        	}
 	        }
 	       markerSet(pos);
 	       });
        }else{
        	markerSet(pos);
        }
        
      }, function() {
    	var infoWindow = new google.maps.InfoWindow({map: map});
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
      var infoWindow = new google.maps.InfoWindow({map: map});
      handleLocationError(false, infoWindow, map.getCenter());
	}
}
/**
 * 마커 세팅
 */
		
function markerSet(pos){
	$.post( "/PIX/get/ufogo/${sessionScope.eventPara}/")
       .done(function( data ) {
         var go = JSON.parse(JSON.stringify(data));		         
         for(var i = 0; i < go.length; i++){
        	 var target = {};
        	 target.lat = parseFloat((Number(go[i].go_lat)));
        	 target.lng = parseFloat((Number(go[i].go_alt)));
        	 target.content = '<p><h4 id="firstHeading" style="font-family:football;">'+go[i].go_content+'</h3></p><br><button class="btn btn-social btn-facebook" onClick="getUfo('+"'go'"+')"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">스탬프 찍기</span></button>';
        	 
        	 
        	 if((Math.pow(target.lat - pos.lat, 2) + Math.pow(target.lng - pos.lng, 2)) < Math.pow(parseFloat('${ufo.go_rad}'), 2) ){
        		 target.type = "ufoOn";
       		 $("#stamp_"+go[i].ufo_gid).show();
        	 }else{
        		 target.type = "ufoOff";
        		 $("#stamp_"+go[i].ufo_gid).hide();
        	 }
        	 
        	 if($('#stamp_yes_'+go[i].ufo_gid).css('display') == "block"){
        		 target.type = "ufoDone";
        	 }	 
	         neighborhoods.push(target);
         }
         neighborhoods.push(pos);
         map.setCenter(pos);
         drop();
    });
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
function stampPostSubmit(para){
	if(checkLogin()){
			  showPleaseWait();
			  $( "#first_name_go"+para ).val(window.sessionStorage.getItem('first_name'));
			  $( "#last_name_go"+para ).val(window.sessionStorage.getItem('last_name'));
			  $( "#uid_go"+para ).val(window.sessionStorage.getItem('uid'));
			  $( "#email_go"+para ).val(window.sessionStorage.getItem('email'));		  
			  var form = new FormData($("#stampForm"+para)[0]);
			  
			  var fileCanvas = document.getElementById('img'+para).toDataURL('image/jpeg');
			  var blob = dataURItoBlob(fileCanvas);
			  form.append('file', blob, "fileName.png");

			  $.ajax({
		              url: '/PIX/ufogo/insert',
		              method: "POST",
		              dataType: 'json',
		              data: form,
		              processData: false,
		              contentType: false,
		              success: function(result){
		            	  showDone("성공하였습니다.", "go");
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