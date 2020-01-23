<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
			  <li role="presentation" class="active"><a href="infoShift">Shifts</a></li>
			  <li role="presentation"><a href="infoTripcodes">Trip-codes</a></li>
		</ul>
</div>
<div style="height: 2em"></div>
	<div class="row">
	<h4>Supports <button class="btn-style" onclick="openForm('Supports')">Add new</button></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th style="width:2%">Id</th>
	        <th style="width:35%">Event Name</th>
	        <th style="width:35%">Support Title</th>
	        <th style="width:20%">Support Telephone</th>
	        <th style="width:8%">Assign</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tsup }" var="ele">
	    	<tr class="tr-style" id="SupUpdate_${ele.id }">
		        <td onclick="openUpdateSupForm('SupUpdate', '${ele.id }')">${ele.id}</td>
		        <td onclick="openUpdateSupForm('SupUpdate', '${ele.id }')" tisvalue="${ele.event_id }">${ele.event_name}</td>
		        <td onclick="openUpdateSupForm('SupUpdate', '${ele.id }')">${ele.support_title}</td>
		        <td onclick="openUpdateSupForm('SupUpdate', '${ele.id }')">${ele.support_tel}</td>
	          	<td style="text-align: center; font-size:1.3em;"><span class="label label-success" onclick="openAssignSupForm(${ele.event_id}, ${ele.id}, 3)">+</span></td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Supports" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Supports
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="SupForm" action="SupForm" method="POST">
			<label>Event Name</label>
			<select name="event_id" class="form-control">
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}">${ele.event_name }</option>
			</c:forEach>
			</select>
			<label>Support Title</label>
			<input type="text" name="support_title" placeholder="support_title" class="form-control">
			<label>Support Telephone</label>
			<input type="text" name="support_tel" placeholder="support_tel" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('SupForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="SupUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Supports
		</div>
		<div class="label-style modal-body-style modal-body">
		<form id="SupUpdateForm" action="SupUpdateForm" method="POST">
			<label>Event Name</label>
			<select id="SupUpdate_event_id" name="event_id" class="form-control">
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}">${ele.event_name }</option>
			</c:forEach>
			</select>
			<label>Support Title</label>
			<input type="text" id="SupUpdate_support_title" name="support_title" placeholder="support_title" class="form-control">
			<label>Support Telephone</label>
			<input type="text" id="SupUpdate_support_tel" name="support_tel" placeholder="support_tel" class="form-control">
		  	<input type="hidden" name="id" id="SupUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="modal-btn-style" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('SupUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="SupportsAss" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content-style modal-content">
		<div class="modal-header-style modal-header">
		Supports Assign
		</div>
		<form:form method="post" action="SupAssForm" modelAttribute="TisShifteList" id="SupAssForm">
		<div class="label-style modal-body-style2 modal-body">				
			<c:forTokens items = "A,B,C" delims = "," var = "name" varStatus="status">
			<label style="padding-right:10px;">${name }</label>
			<select name="shifts[${status.index}].emp_id" id="${name}emp_id">
			<option value="0">None</option>
			<c:forEach items="${temp }" var="ele">
				<option value="${ele.id}">${ele.first_name } ${ele.last_name }</option>
			</c:forEach>
			</select>
			<input type="hidden" name="shifts[${status.index}].event_id" id="${status.index}event_id"><br/>
			<input type="hidden" name="shifts[${status.index}].supports_id" id="${status.index}supports_id"><br/>
			<input type="hidden" name="shifts[${status.index}].group_name" value="${name }">
			</c:forTokens>		
		</div>
		<div class="modal-footer">
<!-- 	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('SupForm')">Submit</button> -->
	    <input type="submit" value="Save" />
	    </div>
	    </form:form>
		</div>
		</div>
	</div>
	<script>
	function openUpdateSupForm(para, id){
		$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
		$("#"+para+"_event_id").val($("#"+para+"_"+id+" td:nth-child(2)").attr('tisvalue'));
		$("#"+para+"_support_title").val($("#"+para+"_"+id+" td:nth-child(3)").text());
		$("#"+para+"_support_tel").val($("#"+para+"_"+id+" td:nth-child(4)").text());
		$('#'+para).modal('show');
	}
	
	function openAssignSupForm(par1, par2, length){
		for(i = 0 ; i < length ; i++){
		$("#"+i+"event_id").val(par1);
		$("#"+i+"supports_id").val(par2);
		$("#"+i+"emp_id").val("0");
		}
		
		  var url = '/TIS/getShift/'+par2;
		  $.ajax({
		      url: url,
		      method: "POST",
		      dataType: 'json',
		      processData: false,
		      contentType: false,
		      success: function(result){
		    	  for(var ele in result){
		    		  if(result[ele].event_id == par1){
		    			  $("#"+result[ele].group_name+"emp_id").val(result[ele].emp_id);
		    		  }
		    	  }
		      },
		      error: function(er){
		    	  console.log("err. : "+er);
		      }
		  });
		
		$('#SupportsAss').modal('show');
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