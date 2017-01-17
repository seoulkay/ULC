	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
	
    <body data-spy="scroll" data-offset="80">
		
        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
                        	
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">              	
                      	<%-- <div class='col lg 12'>
                      		<H1>${ufo.title }</H1>
                      	    <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.logo }.png" class="img-responsive" alt="">      		
                      		<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.main_image }.png" class="img-responsive" alt="">
                            <H3>${ufo.event_date}</H3>
                            <H5>${ufo.event_long_description}</H5>                            
                            <textarea id="long_desc">${ufo.event_long_description }</textarea>
                      	</div> --%>
                                        
                    	
                        
                        <c:forEach var="var" items="${noticeList}" varStatus="status">
                    	<div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>${status.index }</h2>
                                        <span>만든 날짜 <br>${var.date }</span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람 <br>${var.createdBy}</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
<!--                                     	<div class="col-sm-6"> -->
<!--                                         <a href="#"> -->
<%--                                             <img src="${pageContext.request.contextPath}/resources/pix/img/blog-1.jpg" class="img-responsive" alt=""> --%>
<!--                                         </a>  -->
<!--                                         </div> -->
                                        <div class="col-sm-12">
                                        <h3><a href="#" onClick="layer_open('layer2${status.index }',${status.index });return false;">${var.title }</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.createdBy}</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
							            <div class="layer" id="layer${status.index }">
							                <div class="bg" id="bg${status.index }"></div>
							                    <div id="layer2${status.index }" class="pop-layer">
							                        <div class="pop-container">
							                            <div class="pop-conts">
							                            	<form id="formContentFest${status.index }" method="post" action="updateInfo" enctype="multipart/form-data">
							                                <p class="ctxt mb20"><input type="text" name="title" id="notiDisplay${var.idfest_ufo_notice }" value="${var.title }" style="width:100%"></input></p>
							                                <textarea id="noti${status.index }" name="content">${var.content }</textarea>
							                                <input type="hidden" name="voType" value="${var.voType }">
							                                <input type="hidden" name="para" value="${ufo.para 	}">
							                                <input type="file" name="file" class="form-control"><br>
							                                </form>
							                                <div class="btn-r">
							                                	<a href="#" class="sbtn" onClick="submitNoti(${status.index })">수정하기</a>
<%-- 							                                	<a href="#" class="sbtn" onClick="delNoti(${status.index })">삭제하기</a> --%>
							                                    <a href="#" class="cbtn">닫기</a>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							               </div>
<%-- 							            <form id="formContentFestDel${var.idfest_ufo_notice }" method="post" action="delNotice"> --%>
<%--                                         <input type="hidden" name="idfest_ufo_notice" value="${var.idfest_ufo_notice }"> --%>
<!--                                         </form> -->
                                        	<c:if test="${var.photo_file ne null}">
                                        		<img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:300px">
                                        	</c:if>
							               	<div><p>${var.content }</p></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                      	</c:forEach>
                        
                    </div><!--blog-post col-->
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