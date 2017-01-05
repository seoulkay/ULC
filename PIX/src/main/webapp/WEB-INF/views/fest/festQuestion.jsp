<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
    <body data-spy="scroll" data-offset="80">

        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
        
        <div class="divided-50"></div>
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                      		<c:forEach items="${quesVO}" var="ele" varStatus="statusEle">
                      		<c:if test="${statusEle.count % 3 == 1}">
							<div class="row">
<!-- 							로스타트 -->
							</c:if>
	                      		<div class="col-sm-3" style="margin: 10px; vertical-align: middle; text-align: center;">
	                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ele.title_img}.png" class="img-responsive" alt=""><br>
	                            	
									<div class="panel-heading">${statusEle.count }. ${ele.fest_question }</div>	
									<div>							
									  <table class="table">
									  <c:forEach items="${ele.questionOptions }" var="var" varStatus="status">
											<li class="list-group-item">${status.count}. ${var.fest_option_content }</li>
									  </c:forEach>
									  </table>
									</div>
	                      	
	                            </div>
                            <c:if test="${statusEle.count % 3 == 0}">
<!--                            로엔드 -->
                            </div>
                            </c:if>
                          </c:forEach>
                       </div>
                      </div>
                    <jsp:include page="sideBar.jsp" flush="false">
			        	<jsp:param name="param" value="value1"/>
			        </jsp:include>
                </div>
            </div>
        </section><!--blog wrapper-->
        <jsp:include page="ufoFooter.jsp" flush="false">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
    </body>
</html>