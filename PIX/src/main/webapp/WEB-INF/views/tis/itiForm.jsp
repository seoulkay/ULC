<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


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
  <div class="container-fluid">
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

<div class="container">
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
	<h3>itinerary Detail</h3>
	<h4>itinerary</h4>
	</div>
	<div class="row">
	<table class="table table-bordered" id="profile_tbl">
		<tr class="info">
			<td style="width:20%" class="form-style info">Date & Time</td>
			<td style="width:20%" class="form-style info">Description</td>
			<td style="width:20%" class="form-style info">Description (Local)</td>
			<td style="width:20%" class="form-style info">Employee name</td>
			<td style="width:20%" class="form-style info">Event name</td>
		</tr>
		<tr>
			<td>${ti.stmp }</td>
			<td>${ti.desc }</td>
			<td>${ti.desc_local }</td>
			<td>${ti.first_name} ${ti.last_name }</td>
			<td>${ti.event_name}</td>
		</tr>
	</table>
	</div>
	<div class="row">	
	<h4>Detail <button class="btn-style" onclick="openForm('itiDetForm')">+</button></h4>
	</div>
	<div class="row">
	<table class="table table-bordered" id="profile_tbl">
		<tr class="info">
			<td style="width:2%" class="form-style info">Id</td>
			<td style="width:20%" class="form-style info">Description</td>
			<td style="width:20%" class="form-style info">Description (Local)</td>
			<td style="width:20%" class="form-style info">Date</td>
			<td style="width:15%" class="form-style info">Note</td>
			<td style="width:15%" class="form-style info">Note (Local)</td>
			<td style="width:8%" class="form-style info">Transportation</td>
		</tr>
		<c:forEach items="${tidl}" var="ele">
		<tr class="tr-style updateIti">
			<td class="iti_id">${ele.id}</td>
			<td>${ele.desc}</td>
			<td>${ele.desc_local}</td>
			<td><fmt:formatDate value='${ele.stmp}' pattern = 'yyyy-MM-dd HH:mm' /></td>
			<td>${ele.note}</td>
			<td>${ele.note_local}</td>
			<td>${ele.trs_id}</td>
		</tr>
		</c:forEach>
	</table>
	<div class="modal" id="itiDetForm" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Itinerary Detail
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="itiDetInsertForm" action="itiDetForm" method="POST">
			<label>Description</label>
			<input type="text" name="desc" placeholder="desc" class="form-control">
			<label>Description (Local)</label>
			<input type="text" name="desc_local" placeholder="desc_local" class="form-control">
			<label>Date & Time</label>
			<input type="datetime-local" class="form-control" name="stmp" pattern = 'yyyy-MM-ddTHH:mm'>
			<input type="hidden" name="iti_id" value="${ti.id }">
			<label>Note</label>
			<input type="text" name="note" placeholder="note" class="form-control">
			<label>Note (Local)</label>
			<input type="text" name="note_local" placeholder="note_local" class="form-control">
			<label>Transportation</label>
			<select name="trs_id" class="form-control">
			<option value="0">Select one</option>
			<c:forEach items="${temp }" var="ele">
				<option value="${ele.id}">${ele.trs_title }</option>
			</c:forEach>
			</select>
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('itiDetInsertForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>	
	<div class="modal" id="itiDetUpdateForm" role="dialog">	
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Itinerary Detail
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="itiDetUpdate" action="itiDetUpdateForm" method="POST">
			<label>Description</label>
			<input type="text" id="iti_desc" name="desc" placeholder="desc" class="form-control">
			<label>Description (Local)</label>
			<input type="text" id="iti_desc_local" name="desc_local" placeholder="desc_local" class="form-control">
			<label>Date & Time</label>
			<input type="datetime-local" class="form-control" id="iti_stmp" name="stmp" pattern = 'yyyy-MM-ddTHH:mm'>
			<label>Note</label>
			<input type="text" id="iti_note" name="note" placeholder="note" class="form-control">
			<label>Note (Local)</label>
			<input type="text" id="iti_note_local" name="note_local" placeholder="note_local" class="form-control">
			<label>Transportation</label>
			<select id="iti_trs_id" name="trs_id" class="form-control">
			<option value="0">Select one</option>
			<c:forEach items="${temp }" var="ele">
				<option value="${ele.id}">${ele.trs_title }</option>
			</c:forEach>
			</select>
			<input type="hidden" name="iti_id" value="${ti.id }">
			<input type="hidden" id="iti_det_id" name="id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('itiDetUpdate')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>	
	</div>	
</div>


<script>
$(".updateIti").click(function() {
    var id = $(this).closest("tr").find(".iti_id");
	var desc = id.next();
    var desc_local = desc.next();
    var stmp = desc_local.next();
    var note = stmp.next();
    var note_local = note.next();
    var trs_id = note_local.next();

    $('#iti_desc').val(desc.text());
    $('#iti_desc_local').val(desc_local.text());
    $('#iti_stmp').val(stmp.text().replace(" ", "T"));
    $('#iti_det_id').val(id.text());
    $('#iti_note').val(note.text());
    $('#iti_note_local').val(note_local.text());
    $('#iti_trs_id').val(trs_id.text());
    
    $('#itiDetUpdateForm').modal('show');
});

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

<script>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
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