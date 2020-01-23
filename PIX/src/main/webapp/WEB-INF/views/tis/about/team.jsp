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
    <jsp:include page="../common/navbar.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>

        <div class="container on-the-fly-behavior">
            	<div class="row title-row-style">	
		<h4><span class="label label-success">My Group</span></h4>
	</div>
	<div class="row row-style">
		<div style="padding-left:0px;" class="col-sm-6">
			<h5>${ttw[0].tisTeamList[0].event_name }</h5>
		</div>
		<div style="padding-left: 0px; padding-right:0px; padding-bottom: 1em; class="col-sm-6">
			<select class="form-control group-selector" id="group-selector">
			<option value="0">SELECT GROUP</option>
			<c:forEach items="${ttw[0].tisTeamList }" var="ele" varStatus="stat">
					<option value="${ele.group_name }">${ele.group_name }</option>
			</c:forEach>
			</select>
		</div>
	</div>
	<div class="row row-style">
	<c:forEach items="${ttw }" var="ele" varStatus="stat">
	<table class="table table-bordered" style="table-layout: fixed">
	      <tr class="info">
	        <th colspan="4">${ele.tisTeamList[0].support_title }</th>
	      </tr>
	      <c:forEach items="${ele.tisTeamList }" var="elee">
	      <tr style="display: none;" class="group_tr group_${elee.group_name }">
	      	<td><img alt="" src="<fmt:message key="baseurl"></fmt:message>/image/tisImage/${elee.picture }" ></td>
	      	<td style="word-wrap:break-word">${elee.first_name } ${elee.last_name }</td>
	      	<td style="word-wrap:break-word"><a href="mailto:${elee.email }">${elee.email }</a></td>
	      	<td >${elee.support_tel }</td>
	      </tr>
	      </c:forEach>
	  </table>
	  </c:forEach>
	</div>
	<!-- My Group section ends -->	
</div>
<script>
$( ".group-selector" ).change(function() {
	  $(".group_tr").hide();
	  $(".group_"+$("#group-selector").val()).show();
	});
</script>

        <!-- ******FOOTER****** -->
	<jsp:include page="../common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
 
 
</body>
</fmt:bundle>
</html>