<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head>

<body class="stories-page" data-spy="scroll" data-target="#page-nav">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->

<section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.ufo79.com/image/${ufo.info_hist_pic}"></div>
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
			<div class="actions" id="mainbtn">
           	<button class="btn btn-warning" style="margin:0 auto" onclick="surveyInit()">설문조사하기</button>
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
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">서베이</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li></c:if>
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
	<div class="stories container">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
		<div id="story-block-${statusEle.count }" class="story-block story-block-${ele.question }">
			
				
			<div class="story-item">
				<div class="row">
					<div class="figure-holder col-sm-12 col-sm-6 col-md-7">
						<div class="inner">
							
<!-- 						우선 단오제용 -->
<!-- 							<img class="img-responsive" -->
<%-- 								src="${pageContext.request.contextPath}/resources/pix/img/${ele.ques_img }.png" --%>
<!-- 								alt=""> -->
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/resources/ufo/assets/images/stories/dano_survey_thumb0${statusEle.count }.jpg"
								alt="">
							<div class="figure-mask"></div>
						</div>
						<!--//inner-->
					</div>
					<!--//figure-holder-->
					<div class="content col-sm-12 col-sm-6 col-md-5">
						<div class="inner">
							<h3 class="question"><span class="question-number">문항 ${statusEle.count }.</span>${ele.question }</h3>
							<c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
								<div class="answer">${status.count}. ${var.q_option }<span class="percentage">${var.percent }%</span></div>
							</c:forEach>
							<!--//desc-->
						</div>
						<!--//inner-->
					</div>
					<!--//content-->
				</div>
				<!--//row-->
			</div>
			<!--//story-item-->

			<div class="quotes">
				<div class="row">
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[0].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과1위) ${ele.questionOptions[0].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">우리나라 단오의 특성</span><br>1. 풍년을 기원하는 파종제로서의 단오<br>2. 풍년을 기원하는 파종제로서의 단오<br>3. 풍년을 기원하는 파종제로서의 단오</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->
					<div class="quote-item col-sm-12 col-sm-6 text-center">
						<div class="inner">
							<div class="profile">
								<div class="circle"><span class="circle-percentage">${ele.questionOptions[1].percent }%</span></div>
							</div>
							<!--//profile-->

							<i class="fa fa-quote-left" aria-hidden="true"></i>
							<blockquote class="result">(결과2위) ${ele.questionOptions[1].q_option }</blockquote>
							<!--//blockquote-->
							<div class="tip"><span class="tip-title">강릉의 3대 명소</span><br>1. 빙상 베뉴가 모여있는 강릉 올림픽 파크<br>2. 경포호와 경포해변이 한눈에 보이는 경포대<br>3. 강릉의 자랑 오죽헌</div>
							<!--//source-->

						</div>
						<!--//inner-->
					</div>
					<!--//quote-item-->

				</div>
				<!--//row-->
			</div>
			<!--//quotes-->
		</div>
		<!--//story-block-->
</c:forEach>
	</div>

<!-- 서베이 이닛 -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#remodal_q1" style="display:none;" id="modalTrigger">TRINGGER</button>


<form id="surveyForm" method="post" enctype="multipart/form-data">
<c:forEach items="${quesVO}" var="ele" varStatus="statusEle" begin="0" end="4">
<div class="modal fade" id="remodal_q${statusEle.count }" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
	      <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>${ele.question}</h4>
	  	 </div>	
  
	   <div class="modal-body">
	    7문항 중 ${statusEle.count }문항<br>
	    <div class="progress">
		  <div class="progress-bar progress-bar-success" style="width: ${statusEle.count * 100/ 7 }%">
		  </div>
		  <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(statusEle.count * 100 / 7)}%">
		  </div>
		</div>
	  
		<c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
			<div class="input-group">
		      <span class="input-group-addon">
		      <input type="radio" name="q${statusEle.count }_a" id="q${statusEle.count }_a" aria-label="..." value="${status.count }" answer="${var.q_option }" onclick="enableNextBtn(${statusEle.count})">
		      </span>
		      <input type="text" class="form-control" aria-label="..." value="${var.q_option }" name="noUse" readonly="readonly">
		    </div>
	    </c:forEach>
	 	<br>
	  </div>
	  <div class="modal-footer">
	    <button type="button" class="btn" data-toggle="modal" data-target="#remodal_q${statusEle.count + 1 }" data-dismiss="modal" id="btn_q${statusEle.count}" disabled>다음</button>
	  </div>
	</div>
	</div>
</div>
</c:forEach>
	  

<div class="modal" id="remodal_q6" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4 id="modal1Title">${quesVO[5].question}</h4>
	   </div>	
	   <div class="modal-body">
  			7문항 중 6문항<br>
  			<div class="progress">
	  		<div class="progress-bar progress-bar-success" style="width: ${6 * 100/ 7 }%">
	  		</div>
	  		<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(6 * 100 / 7)}%">
	  		</div>
			</div>
  			<input class="form-control" type="text" id="q6_a" name="q6_a" maxlength="900"/>
  		</div>
  		<div class="modal-footer">
	    <button type="button" class="btn" data-toggle="modal" data-target="#remodal_q7" data-dismiss="modal" id="btn_q6" disabled>다음</button>
	  	</div>
	</div>
	</div>
</div>



<div class="modal" id="remodal_q7" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>${quesVO[6].question}</h4>
	   </div>
	   <div class="modal-body">
   		7문항 중 7문항<br>
	 	 	<div class="progress">
		  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
		  	</div>
		  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
		  	</div>
			</div>
			  	<input type="file" id="q7_a" name="file" class="form-control">
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-dismiss="modal" onClick="surveyPostSubmit()" id="btn_q7" disabled>GO!</button>
	  	</div>
	</div>
	</div>
</div>
<input type="hidden" id="uid_a" name="uid_a">
<input type="hidden" id="first_name_a" name="first_name_a">
<input type="hidden" id="last_name_a" name="last_name_a">
<input type="hidden" id="email_a" name="email_a">
<input type="hidden" id="sns_type_a" name="sns_type_a">
<input type="hidden" id="access_token_a" name="access_token_a">
<input type="hidden" id="sns_msg" name="sns_msg">
<input type="hidden" id="sns_return" name="sns_return">
<input type="hidden" id="sns_gid" name="sns_gid">
</form>

<div class="modal" id="surveyResult" role="dialog">
	<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4>서베이 결과</h4>
	   </div>
	   <div class="modal-body">
	 	 	<div class="progress">
		  	<div class="progress-bar progress-bar-success" style="width: ${7 * 100/ 7 }%">
		  	</div>
		  	<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-(7 * 100 / 7)}%">
		  	</div>
			</div>
			1. 답변<br>
		  	2. 답변<br>
		  	3. 답변<br>
		  	4. 답변<br>
		  	5. 답변<br>
		  	6. 답변<br>
		  	7. 답변<br> 
<!-- 			  	<input type="file" id="q7_a" name="file" class="form-control"> -->
		</div>
		<div class="modal-footer">
<!-- 	    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button> -->
	  	</div>
	</div>
	</div>
</div>

	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->

<script>

function enableNextBtn(para){
	$('#btn_q'+para).prop('disabled', false);
	$('#btn_q'+para).addClass("btn-primary");
}

$(document).ready(function() {
    $('input[name=q6_a]').keyup(function() {
    	if($('#q6_a').val() != '') {
       		$('#btn_q6').prop('disabled', false);
       		$('#btn_q6').addClass("btn-primary");
    	}
    });
    
    $('input[name=file]').change(function() {
           $('#btn_q7').prop('disabled', false);
           $('#btn_q7').addClass("btn-primary");
    });
    
    if(checkLogin()){
    	var url = '/PIX/ufo/${sessionScope.eventPara}/checkResult/ve/'+window.sessionStorage.getItem('uid');
    	$.ajax({
            url: url,
            method: "get",
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function(result){
          	  console.log("처리되었습니다. : "+result);
          	  if(result == 1){
          		  $("#mainbtn").append('<button class="btn btn-primary" style="margin:0 auto" onclick="location.href=\'https://www.ufo79.com/PIX/ufo/${sessionScope.eventPara}/result/ve/'+window.sessionStorage.getItem('uid')+'\'">결과보기</button>');
          	  }
            },
            error: function(er){}
    });
    }
});
/**
 * 
 */
function surveyInit(){
	if(checkLogin()){
		$("#remodal_q1").modal("show");
	}else{
		fbLogin('survey');
	}
}



/**
 * 
 */

function surveyPostSubmit(){
	if(checkLogin()){
		showPleaseWait();
		  $( "#first_name_a").val(window.sessionStorage.getItem('first_name'));
		  $( "#last_name_a").val(window.sessionStorage.getItem('last_name'));
		  $( "#uid_a").val(window.sessionStorage.getItem('uid'));
		  $( "#email_a").val(window.sessionStorage.getItem('email'));		  
		  $( "#sns_type_a").val('ufo_survey');		  
		  var form = new FormData($("#surveyForm")[0]);
	      $.ajax({
	              url: '/PIX/ufo/${sessionScope.eventPara}/surveySubmit',
	              method: "POST",
	              dataType: 'json',
	              data: form,
	              processData: false,
	              contentType: false,
	              success: function(result){
	            	  console.log("처리되었습니다. : "+result);
	            	  showDone("성공하였습니다.", "ve");
	              },
	              error: function(er){}
	      });
	}else{
		fbLogin('survey');
	}
}

</script>

	
</body>
</html>

