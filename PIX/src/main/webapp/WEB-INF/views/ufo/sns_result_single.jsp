<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>UFO79</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
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
	   			<div class="col-xs-12" id='qr_div_${ele.ufo_gid }' style="position : relative; padding-left: 0.2em;padding-right: 0.2em">
	   				<div style="padding-top:12px; padding-bottom:3px">
	   					<c:if test="${pick eq ele.ufo_gid}">
		   				<div style="border: 2px solid #FFF;"><img alt="" src="https://www.ufo79.com/image/${ele.go_image}" class="img-responsive"></div>
		   				</c:if>
		   				
<%-- 			   			<img id="qr_yes_${ele.ufo_gid }" style="position:absolute; top:0; left:0; width:50%; display:none; opacity : 0.5;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg"> --%>
<%-- 		   				<img id="qr_back_${ele.ufo_gid }" style="border: 2px solid #FFF;" class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_stamp.svg"> --%>
	   					
	   				</div>
	   			</div>
	   			</c:forEach>
	   		</div>
	   		<h4 style="font-family:football; color:WHITE; float:right;"><fmt:formatDate pattern="yyyy.MM.dd" value="${now}" /> ${ufo.title } </h4>
			<br>
		</div>
	 	<div style="background: url('${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_collage_02_500px.svg')">
			<div class="modal-footer">
			<br>
		    	<span class="btn" style="background-color:WHITE; color:#d7579f; border:2px solid #d7579f" onClick="window.print()"><span class="btn-text">인쇄하기</span></span>
		    	<a href="https://www.facebook.com/sharer.php?u=${ shareLink}"><span class="btn btn-social btn-facebook" style="margin: auto;"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">공유하기</span></span></a>
		    <br><br>
		    <div><img id="barcode" style="width:350px; margin: 0 auto; display:block"/></div>
		    </div>
  		</div>
	</div>
</div>

<!-- ******FOOTER****** -->
<%-- 	<jsp:include page="footer.jsp" flush="false"> --%>
<%-- 		<jsp:param name="param" value="value1" /> --%>
<%-- 	</jsp:include><!--//footer--> --%>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jsbarcode/3.5.8/barcodes/JsBarcode.code128.min.js"></script>
<script>

// var qrcode = new QRCode("qrcode", {
//     text: "https://www.facebook.com/${vo.sns_return }",
//     width: 200,
//     height: 200,
//     colorDark : "#000000",
//     colorLight : "#ffffff",
//     correctLevel : QRCode.CorrectLevel.H
// });
var barString = "${shareLink}";
var n = barString.indexOf("/result/");
var e = barString.length;
barString = barString.substring(n+8, e);
JsBarcode("#barcode", barString);
</script>
</body>
</html>