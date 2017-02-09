<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>2017 강릉단오제</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UFO ${vo.first_name_a} ${vo.last_name_a }의 포스트</title>
</head>
<body class="blog-page">
    <!-- ******HEADER****** -->
<%-- 	<jsp:include page="header.jsp" flush="true"> --%>
<%-- 		<jsp:param name="param" value="value1" /> --%>
<%-- 	</jsp:include><!--//header--> --%>
<p>
<row>
${vo.first_name_a} ${vo.last_name_a }의 포스트<br>
${vo.sns_msg }<br>
<img alt="sns사진" src="/image/${vo.q7_a }" style="width: 300px"><br>
${vo.sns_return }
</p>
</row>
<div id="qrcode"></div>

<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
<script>
$('#qrcode').qrcode({width: 130,height: 130,text:'${vo.sns_return }'});
</script>
</body>
</html>