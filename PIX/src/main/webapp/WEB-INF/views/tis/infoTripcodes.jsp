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
    <!-- Brand and toggle get grouped for better mobile display -->
<!--     <div class="navbar-header" >  -->
<!--       <a class="navbar-brand" href="#" style="padding-top: 2em;color: WHITE"> -->
      	<h4 class="navbar-brand" style="color: WHITE; font-size: 1.5em; padding-top: 1.5em;">Trip Info System <Strong>ADMIN</Strong> ${sessionScope.user_name}</h4>
<!--       </a> -->
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
			  <li role="presentation"><a href="infoTrip">Trips</a></li>
			  <li role="presentation"><a href="infoAdmin">Profiles</a></li>
			  <li role="presentation"><a href="infoShift">Shifts</a></li>
			  <li role="presentation" class="active"><a href="infoTripcodes">Trip-codes</a></li>
		</ul>
</div>
<div style="height: 2em"></div>
	<div class="row">
	<h4>Events <button class="btn-style" onclick="openForm('TripCodes')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width:2%;">Id</th>
	        <th style="width:45%;">Event Name</th>
	        <th style="width:45%;">Event Description</th>
	        <th style="width:8%;">Active</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${te }" var="ele">
	    	<tr class="tr-style" onclick="openUpdateForm('TripCodesUpdate', '${ele.id }')" id="TripCodesUpdate_${ele.id }">
	        <td>${ele.id }</td>
	        <td>${ele.event_name }</td>
	        <td>${ele.event_desc }</td>
	        <td>${ele.active }</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="TripCodes" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Events
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="TripCodesForm" action="TripCodesForm" method="POST">
			<label>Event Name</label>
			<input type="text" name="event_name" placeholder="event_name" class="form-control">
			<label>Event Description</label>
			<input type="text" name="event_desc" placeholder="event_desc" class="form-control">
			<label>Active</label>
			<div class="input-group">
			<label class="radio-inline" style="font-weight: normal; color: #000000; padding-top:0px;">
			<input type="radio" name="active" value="Y" class="form-control">Yes</label>
			<label class="radio-inline" style="font-weight: normal; color: #000000; padding-top:0px;">
		  	<input type="radio" name="active" value="N" class="form-control" checked>No</label>
		  	</div>
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TripCodesForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="TripCodesUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		TripCodes
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="TripCodesUpdateForm" action="TripCodesUpdateForm" method="POST">
			<label>Event Name</label>
			<input type="text" id="TripCodesUpdate_event_name" name="event_name" placeholder="event_name" class="form-control">
			<label>Event Description</label>
			<input type="text" id="TripCodesUpdate_event_desc" name="event_desc" placeholder="event_desc" class="form-control">
			<label>Active</label>
			<div class="input-group">
			<label class="radio-inline">
			<input type="radio" id="TripCodesUpdate_active_Y" name="active" value="Y" class="form-control">Yes
			</label>
			<label class="radio-inline">
		  	<input type="radio" id="TripCodesUpdate_active_N" name="active" value="N" class="form-control">No
		  	</label>
		  	</div>
		  	<input type="hidden" name="id" id="TripCodesUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TripCodesUpdateForm')">Submit</button>
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
</script>

	<div class="row">	
	<h4>Locations <button class="btn-style" onclick="openForm('Locations')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width: 2%;">Id</th>
	        <th style="width: 3%;">Picture</th>
	        <th style="width: 15%;">Name</th>
	        <th style="width: 15%;">Name (Local)</th>
	        <th style="width: 25%;">Address</th>
	        <th style="width: 25%;">Local Address (Taxi)</th>
	        <th style="width: 5%;">Latitude</th>
	        <th style="width: 5%;">Longitude</th>
	        <th style="width: 5%;">Type</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tv }" var="ele">
	    	<tr class="tr-style" onclick="openUpdateLocationsForm('LocationsUpdate', '${ele.id }')" id="LocationsUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.venue_pic}</td>
	        <td>${ele.venue_name}</td>
	        <td>${ele.venue_name_loc}</td>
	        <td>${ele.venue_address}</td>
	        <td>${ele.venue_address_loc}</td>
	        <td>${ele.lat}</td>
	        <td>${ele.lng}</td>
	        <td>${ele.venue_type}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Locations" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Locations
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="LocationsForm" action="LocationsForm" method="POST">
			<label>Picture</label>
			<input type="text" name="venue_pic" placeholder="venue_pic" class="form-control">
			<label>Name</label>
			<input type="text" name="venue_name" placeholder="venue_name" class="form-control">
			<label>Local Name</label>
			<input type="text" name="venue_name_loc" placeholder="venue_name_loc" class="form-control">
			<label>Address</label>
			<input type="text" name="venue_address" placeholder="venue_address" class="form-control">
			<label>Local Address (Taxi)</label>
			<input type="text" name="venue_address_loc" placeholder="venue_address_loc" class="form-control">
			<label>Latitude</label>
			<input type="text" name="lat" placeholder="lat" class="form-control">
			<label>Longitude</label>
			<input type="text" name="lng" placeholder="lng" class="form-control">
			<label>Type</label>
			<input type="text" name="venue_type" placeholder="venue_type" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('LocationsForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="LocationsUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Locations
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="LocationsUpdateForm" action="LocationsUpdateForm" method="POST">
			<label>Picture</label>
			<input type="text" id="LocationsUpdate_venue_pic" name="venue_pic" placeholder="venue_pic" class="form-control">
			<label>Name</label>
			<input type="text" id="LocationsUpdate_venue_name" name="venue_name" placeholder="venue_name" class="form-control">
			<label>Local Name</label>
			<input type="text" id="LocationsUpdate_venue_name_loc" name="venue_name_loc" placeholder="venue_name_loc" class="form-control">
			<label>Address</label>
			<input type="text" id="LocationsUpdate_venue_address" name="venue_address" placeholder="venue_address" class="form-control">
			<label>Local Address (Taxi)</label>
			<input type="text" id="LocationsUpdate_venue_address_loc" name="venue_address_loc" placeholder="venue_address_loc" class="form-control">
			<label>Latitude</label>
			<input type="text" id="LocationsUpdate_lat" name="lat" placeholder="lat" class="form-control">
			<label>Longitude</label>
			<input type="text" id="LocationsUpdate_lng" name="lng" placeholder="lng" class="form-control">
			<label>Type</label>
			<input type="text" id="LocationsUpdate_venue_type" name="venue_type" placeholder="venue_type" class="form-control">
		  	<input type="hidden" name="id" id="LocationsUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('LocationsUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateLocationsForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_venue_pic").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_venue_name").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_venue_name_loc").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$("#"+para+"_venue_address").val($("#"+para+"_"+id+" td:nth-child(5)").text());
	$("#"+para+"_venue_address_loc").val($("#"+para+"_"+id+" td:nth-child(6)").text());
	$("#"+para+"_lat").val($("#"+para+"_"+id+" td:nth-child(7)").text());
	$("#"+para+"_lng").val($("#"+para+"_"+id+" td:nth-child(8)").text());
	$("#"+para+"_venue_type").val($("#"+para+"_"+id+" td:nth-child(9)").text());
	$('#'+para).modal('show');
}
</script>

<div class="row">	
	<h4>Facilities <button class="btn-style" onclick="openForm('Facilities')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width:2%;">Id</th>
	        <th style="width:45%;">Facility Title</th>
	        <th style="width:45%;">Facility Title (Local)</th>
	        <th style="width:8%;">Icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tfac }" var="ele">
	    	<tr class="tr-style" onclick="openUpdateFacForm('FacUpdate', '${ele.id }')" id="FacUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.fac_title}</td>
	        <td>${ele.fac_title_loc}</td>
	        <td>${ele.fac_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Facilities" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Facilities
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="FacForm" action="FacForm" method="POST">
			<label>Facility Title</label>
			<input type="text" name="fac_title" placeholder="fac_title" class="form-control">
			<label>Facility Title (Local)</label>
			<input type="text" name="fac_title_loc" placeholder="fac_title_loc" class="form-control">
			<label>Icon</label>
			<input type="text" name="fac_icon" placeholder="fac_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('FacForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="FacUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Facilities
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="FacUpdateForm" action="FacUpdateForm" method="POST">
			<label>Facility Title</label>
			<input type="text" id="FacUpdate_fac_title" name="fac_title" placeholder="venue_pic" class="form-control">
			<label>Facility Title (Local)</label>
			<input type="text" id="FacUpdate_fac_title_loc" name="fac_title_loc" placeholder="venue_name" class="form-control">
			<label>Icon</label>
			<input type="text" id="FacUpdate_fac_icon" name="fac_icon" placeholder="venue_name_loc" class="form-control">
		  	<input type="hidden" name="id" id="FacUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('FacUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateFacForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_fac_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_fac_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_fac_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>
<div class="row">	
	<h4>Policies <button class="btn-style" onclick="openForm('Policies')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width: 2%;">Id</th>
	        <th style="width: 45%;">Policy Title</th>
	        <th style="width: 45%;">Policy Title (Local)</th>
	        <th style="width: 8%;">Icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tpol }" var="ele">
	    	<tr class="tr-style" onclick="openUpdatePolForm('PolUpdate', '${ele.id }')" id="PolUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.pol_title}</td>
	        <td>${ele.pol_title_loc}</td>
	        <td>${ele.pol_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Policies" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Policies
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="PolForm" action="PolForm" method="POST">
			<label>Policy Title</label>
			<input type="text" name="pol_title" placeholder="pol_title" class="form-control">
			<label>Policy Title (Local)</label>
			<input type="text" name="pol_title_loc" placeholder="pol_title_loc" class="form-control">
			<label>Icon</label>
			<input type="text" name="pol_icon" placeholder="pol_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('PolForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="PolUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Policies
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="PolUpdateForm" action="PolUpdateForm" method="POST">
			<label>Policy Title</label>
			<input type="text" id="PolUpdate_pol_title" name="pol_title" placeholder="pol_title" class="form-control">
			<label>Policy Title (Local)</label>
			<input type="text" id="PolUpdate_pol_title_loc" name="pol_title_loc" placeholder="pol_title_loc" class="form-control">
			<label>Icon</label>
			<input type="text" id="PolUpdate_pol_icon" name="pol_icon" placeholder="pol_icon" class="form-control">
		  	<input type="hidden" name="id" id="PolUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('PolUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdatePolForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_pol_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_pol_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_pol_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>
<div class="row">	
	<h4>Transportations <button class="btn-style" onclick="openForm('Transportations')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width: 2%;">Id</th>
	        <th style="width: 45%;">Transportation Title</th>
	        <th style="width: 45%;">Transportation Title (Local)</th>
	        <th style="width: 8%;">Icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${ttrs }" var="ele">
	    	<tr class="tr-style" onclick="openUpdateTrsForm('TrsUpdate', '${ele.id }')" id="TrsUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.trs_title}</td>
	        <td>${ele.trs_title_loc}</td>
	        <td>${ele.trs_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Transportations" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Transportations
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="TrsForm" action="TrsForm" method="POST">
			<label>Transportation Title</label>
			<input type="text" name="trs_title" placeholder="trs_title" class="form-control">
			<label>Transportation Title (Local)</label>
			<input type="text" name="trs_title_loc" placeholder="trs_title_loc" class="form-control">
			<label>Transportation Icon</label>
			<input type="text" name="trs_icon" placeholder="trs_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TrsForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="TrsUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Transportations
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="TrsUpdateForm" action="TrsUpdateForm" method="POST">
			<label>Transportation Title</label>
			<input type="text" id="TrsUpdate_trs_title" name="trs_title" placeholder="trs_title" class="form-control">
			<label>Transportation Title (Local)</label>
			<input type="text" id="TrsUpdate_trs_title_loc" name="trs_title_loc" placeholder="trs_title_loc" class="form-control">
			<label>Transportation Icon</label>
			<input type="text" id="TrsUpdate_trs_icon" name="trs_icon" placeholder="trs_icon" class="form-control">
		  	<input type="hidden" name="id" id="TrsUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TrsUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateTrsForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_trs_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_trs_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_trs_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
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