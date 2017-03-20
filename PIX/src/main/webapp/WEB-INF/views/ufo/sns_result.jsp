<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>${ufo.title }</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 페이스북 메타 -->
  	<meta property="og:url"                content="${homepage }" />
	<meta property="og:type"               content="article" />
	<meta property="og:title"              content="${ufo.title }" />
	<meta property="og:description"        content="${ufo.event_short_description }" />
    
    <link rel="shortcut icon" href="https://www.ufo79.com/image/https://www.ufo79.com/image/favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head>
<body>
<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
<!-- 	  		<button type="button" class="close" data-dismiss="modal">&times;</button> -->
		<c:choose>
			<c:when test="${userSize eq ufoSize }">
				<h3 style="color : #d7579f; font-family:football;">${rallyType}를 완성하였습니다! ${userSize }/${ufoSize }</h3>
			</c:when>
			<c:otherwise>
				<h3 style="color : #d7579f; font-family:football;">${rallyType}를 진행중입니다. ${userSize }/${ufoSize }</h3>
			</c:otherwise>
		</c:choose>
		
	   </div>
	   <div class="modal-body" style="background-color: #d7579f;">
	   		<div class="row" id="stampResultList">
	   			<c:forEach items="${ufoResult }" var="ele" varStatus="statusEle">
	   			<div class="col-xs-4" id='qr_div_${ele.ufo_gid }' style="position : relative; padding-left: 0.2em;padding-right: 0.2em">
	   				<div style="padding-top:3px; padding-bottom:3px">
	   					<c:if test="${not ele.submit}">
		   				<div style="position:absolute; top:20%; left:20%; width: 60%; height:60%; background-color: BLACK; opacity: 0.5;"><p style="color: WHITE; padding: 2em">미완료</p></div>
		   				</c:if>
		   				<a style="display:block" href="https://www.ufo79.com/PIX/ufo/${ufo.para }/result/${type}/${uid}/${ele.ufo_gid }">
	   						<div style="border: 2px solid #FFF; height:10em; overflow:hidden;background-color: WHITE;"><img src="https://www.ufo79.com/image/${ele.go_image}" class="img-responsive"></div>
		   				</a>
	   				</div>
	   			</div>
	   			</c:forEach>
	   		</div>
	   		<br>
	   		<h5 style="font-family:football; color:WHITE; float:right;"><fmt:formatDate pattern="yyyy.MM.dd" value="${now}" /> ${ufo.title } </h5>
			<br>
		</div>
	 	<div style="background: url('${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_collage_02_500px.svg')">
			<div class="modal-footer">
			<br>
		    	<span class="btn" style="background-color:WHITE; color:#d7579f; border:2px solid #d7579f" onClick="location.href='https://www.ufo79.com/PIX/ufo/${ufo.para}/index'"><span class="btn-text">확인</span></span>
		    	<a href="https://www.facebook.com/sharer.php?u=${ shareLink}"><span class="btn btn-social btn-facebook" style="margin: auto;"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">공유하기</span></span></a>
		    <br>
		    </div>
  		</div>
	</div>
	<div id="fb-root"></div> 
</div>
<!-- ******FOOTER****** -->
<%-- 	<jsp:include page="footer.jsp" flush="false"> --%>
<%-- 		<jsp:param name="param" value="value1" /> --%>
<%-- 	</jsp:include><!--//footer--> --%>
<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
<script>
document.getElementById('shareBtn').onclick = function() {
	  FB.ui({
	    method: 'share',
	    display: 'popup',
	    href: '${ shareLink}',
	  }, function(response){
		  console.log(response.post_id);
	  });
	}

</script>
</body>
</html>