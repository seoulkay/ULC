<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
</head>
<body>    
<nav class="navbar navbar-default" style="height: 6em ; background-size: 2000px 7em; background-image: url('${pageContext.request.contextPath}/resources/tis/image/headerGeneric.png');border-radius:0; border:0">
  <div class="container-fluid on-the-fly-behavior4">
    	<h4 class="navbar-brand" style="color: WHITE; font-size: 1.5em; padding-top: 1.5em;">Trip Info System <Strong>ADMIN</Strong> ${sessionScope.user_name}</h4>
     	<img class="img-responsive" alt="" src="${pageContext.request.contextPath}/resources/tis/image/Atos.svg" style="max-height: 2em; max-width:15%;margin-top: 2em;margin-right: 1em; float:right;"  >
   </div>
   
    <!-- Collect the nav links, forms, and other content for toggling -->
<!--     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
<!--     </div>/.navbar-collapse -->
<!--   </div> -->

</nav>	

<div class="container on-the-fly-behavior3">
<div class="row">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a href="bookings">Bookings</a></li>
			<li role="presentation" class="active"><a href="infoTrip">Trips</a></li>
		  	<li role="presentation"><a href="infoAdmin">Profiles</a></li>
		  	<li role="presentation"><a href="infoShift">Shifts</a></li>
		  	<li role="presentation"><a href="infoTripcodes">Trip-codes</a></li>
		</ul>
</div>
<div style="height: 2em"></div>
	<div class="row">
	<h4>Trips 
	<button class="btn-style" onclick="openForm('AddTripForm')">Add new</button>
<!-- 	<a href="infoTripForm"><span class="label label-success">Add new</span></a> -->
	</h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>Id</th>
	        <th>Event Name</th>
	        <th>Employee Name</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${ttr }" var="ele">
	    	
	    	<tr class="tr-style" onclick="goinfoTripForm(${ele.event_id},${ele.emp_id})">
	        <td>${ele.id }</td>
	        <td>${ele.event_name }</td>
	        <td>${ele.first_name } ${ele.last_name }</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	

<div class="modal" id="AddTripForm" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content-style modal-content">
	<div class="modal-header-style modal-header">
	Add a new trip
	</div>
	<div class="label-style modal-body-style modal-body">	
	<h4 style="padding-top: 10px;">Profile</h4>
	<form id="AddTripFormForm" action="tripForm" method="POST">
	<table class="table table-bordered" id="profile_tbl">
		<tr>
			<td class="box-style info">
			Name
			</td>
			<td>
			<select id="employee_id_sel" name="emp_id" id="emp_id" class="form-control">
			<option value="0">Select one</option>
			<c:forEach items="${temp }" var="ele">
				<option value="${ele.id}">${ele.first_name } ${ele.last_name }</option>
			</c:forEach>
			</select>
			</td>
		</tr>
		<tr><td class="box-style info">Id</td><td></td></tr>
		<tr><td class="box-style info">Job title</td><td></td></tr>
		<tr><td class="box-style info">Telephone</td><td></td></tr>
		<tr><td class="box-style info">Email</td><td></td></tr>
	</table>

	<h4 style="padding-top: 10px;">Event</h4>

	<table class="table table-bordered" id="event_tbl">
		<tr>
			<td class="box-style info">
			Event
			</td>
			<td>
			<select id="event_id_sel" name="event_id" id="event_id" class="form-control">
			<option value="0">Select one</option>
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}">${ele.event_name}</option>
			</c:forEach>
			</select>
			</td>
		</tr>
		<tr><td class="box-style info">Date</td><td></td></tr>
	</table>
	</form>
</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('AddTripFormForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_event_name").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_event_desc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	if($("#"+para+"_"+id+" td:nth-child(4)").text() == "Y"){
		$("#"+para+"_active_Y").prop("checked", true);
	}else{
		$("#"+para+"_active_N").prop("checked", true);
	}
	
	
	$('#'+para).modal('show');
}
$( "#employee_id_sel" ).change(function() {
	  var val = $("#employee_id_sel").val();
	  var url = '/TIS/getEmp/'+val;
	  $.ajax({
	      url: url,
	      method: "POST",
	      dataType: 'json',
	      processData: false,
	      contentType: false,
	      success: function(result){
	    	  $("#profile_tbl  tr:nth-child(2) td:nth-child(2)").text(result.id);
	    	  $("#profile_tbl  tr:nth-child(3) td:nth-child(2)").text(result.job_title);
	    	  $("#profile_tbl  tr:nth-child(4) td:nth-child(2)").text(result.tel);
	    	  $("#profile_tbl  tr:nth-child(5) td:nth-child(2)").text(result.email);
	      },
	      error: function(er){
	    	  console.log("err. : "+er);
	      }
	  });
	});
	
$( "#event_id_sel" ).change(function() {
	  var val = $("#event_id_sel").val();
	  var url = '/TIS/getEvent/'+val;
	  $.ajax({
	      url: url,
	      method: "POST",
	      dataType: 'json',
	      processData: false,
	      contentType: false,
	      success: function(result){
	    	  $("#event_tbl  tr:nth-child(2) td:nth-child(2)").text(result.event_desc);
	      },
	      error: function(er){
	    	  console.log("err. : "+er);
	      }
	  });
	});
function goinfoTripForm(event_id, emp_id){
	window.location.href = "infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
}
</script>

	
</div>
<script>
function openForm(para){
	$('#'+para).modal('show');
}
function submitForm(para){
	$('#'+para).submit();
}
</script>
    
           <!-- ******FOOTER****** -->
	<jsp:include page="common/footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
</body>

${js }




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
</fmt:bundle>
</html>