<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
<body>
<jsp:include page="ufoHeader.jsp" flush="true">
	<jsp:param name="param" value="value1"/>
</jsp:include>
<div class="container">
	<div style="height:2em"></div>
	<h3>축제모듈</h3>
	<div style="height:2em"></div>
	<div class="row">
	<h3>스탬프랠리</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>go_content</td><td>go_desc</td><td>go_image</td><td>ufo_gid</td><td>go_alt</td><td>go_lat</td>
			</tr>
				<c:forEach items="${goList}" var="ele">
				<tr><td>${ele.go_content}</td><td>${ele.go_desc}</td><td><c:if test="${ele.go_image ne null}"><img src="https://www.ufo79.com/image/${ele.go_image}" class="img-responsive" alt="" style="width:100px"></c:if></td><td>${ele.ufo_gid}</td><td>${ele.go_alt}</td><td>${ele.go_lat}</td></tr>
				</c:forEach>
		</table>
	</div>
	<div style="height:2em"></div>
	<div class="row">
	<h3>큐알랠리</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>go_content</td><td>go_desc</td><td>go_image</td><td>ufo_gid</td><td>go_alt</td><td>go_lat</td>
			</tr>
				<c:forEach items="${qrList}" var="ele">
				<tr><td>${ele.go_content}</td><td>${ele.go_desc}</td><td><c:if test="${ele.go_image ne null}"><img src="https://www.ufo79.com/image/${ele.go_image}" class="img-responsive" alt="" style="width:100px"></c:if></td><td>${ele.ufo_gid}</td><td>${ele.go_alt}</td><td>${ele.go_lat}</td></tr>
				</c:forEach>
		</table>
	</div>
	<div style="height:2em"></div>
	<div class="row">
	<h3>서베이</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>orderq</td><td>question</td><td>ques_time</td><td>ques_img</td>
			</tr>
				<c:forEach items="${surveyList}" var="ele">
				<tr class="info"><td>${ele.orderq}</td><td>${ele.question}</td><td>${ele.ques_time}</td><td><c:if test="${ele.ques_img ne null}"><img src="https://www.ufo79.com/image/${ele.ques_img}" class="img-responsive" alt="" style="width:100px"></c:if></td></tr>
					<c:forEach items="${ele.questionOptions}" var="el">
					<tr><td></td><td>${el.q_option }</td><td></td><td></td></tr>
					</c:forEach>
				</c:forEach>
		</table>
	</div>
</div>
<jsp:include page="ufoFooter.jsp" flush="false">
	<jsp:param name="param" value="value1"/>
</jsp:include>
<script>
// $("tr").click(function(){
// 	$(this).slideUp();
// });
// function handler(event){
// 	var target = $(event.target);
// 	if(target.is("td")){
// 		target.children().append("<p>!</p>");
// 	}
// }
// $("tr").click(handler).find("td").show();

</script>
</body>
</html>