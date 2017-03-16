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
            	<form id="ufoForm" action="updateUfo" enctype="multipart/form-data" method="post">
                    <table class="table table_striped">
                    	<tr><td>idfest_ufo</td><td><input class="form-control" type="text" name="idfest_ufo" value="${ufo.idfest_ufo }" readonly></td></tr>
                    	<tr><td>logo <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="logo_file"></td></tr>
                    	<tr><td>main_image <c:if test="${ufo.main_image ne null}"><img src="https://www.ufo79.com/image/${ufo.main_image}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="main_image_file"></td></tr>
                   		<tr><td>title</td><td><input class="form-control" type="text" name="title" value="${ufo.title }" maxlength="50"></td></tr>
                   		<tr><td>event_date</td><td><input type="text" class="form-control" name="event_date" value="${ufo.event_date }" maxlength="125"></td></tr>
                   		<tr><td>event_long_description</td><td><textarea form="ufoForm" class="form-control" name="event_long_description"  maxlength="2500">${ufo.event_long_description }</textarea></td></tr>
                   		<tr><td>event_short_descriptio</td><td><textarea form="ufoForm" class="form-control" name="event_short_description"  maxlength="1000">${ufo.event_short_description }</textarea></td></tr>
                   		<tr><td>info_info_pic <c:if test="${ufo.info_info_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_info_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_info_pic_file"></td></tr>
                   		<tr><td>info_info_text</td><td><textarea form="ufoForm" class="form-control" name="info_info_text" maxlength="1000">${ufo.info_info_text }</textarea></td></tr>
                   		<tr><td>info_hist_pic <c:if test="${ufo.info_hist_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_hist_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_hist_pic_file"></td></tr>
                   		<tr><td>info_hist_text</td><td><textarea form="ufoForm" class="form-control" name="info_hist_text" maxlength="1000">${ufo.info_hist_text }</textarea></td></tr>
                   		<tr><td>q_coupon_img <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_coupon_img_file"></td></tr>
                   		<tr><td>info_program_pic <c:if test="${ufo.info_program_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_program_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_program_pic_file"></td></tr>
                   		<tr><td>info_program_text</td><td><textarea form="ufoForm" class="form-control" name="info_program_text" maxlength="3000">${ufo.info_program_text }</textarea></td></tr>
                   		<tr><td>info_location_pic <c:if test="${ufo.info_location_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_location_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_location_pic_file"></td></tr>
                   		<tr><td>info_location_text</td><td><textarea form="ufoForm" class="form-control" name="info_location_text" maxlength="1000">${ufo.info_location_text }</textarea></td></tr>
                   		<tr><td>info_contact_pic <c:if test="${ufo.info_contact_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_contact_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_contact_pic_file"></td></tr>
                   		<tr><td>info_contact_text</td><td><textarea form="ufoForm" class="form-control" name="info_contact_text" maxlength="1000">${ufo.info_contact_text }</textarea></td></tr>
                   		<tr><td>q1_img <c:if test="${ufo.q1_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q1_img_file"></td></tr>
                   		<tr><td>q2_img <c:if test="${ufo.q2_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q2_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q2_img_file"></td></tr>
                   		<tr><td>q3_img <c:if test="${ufo.q3_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q3_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q3_img_file"></td></tr>
                   		<tr><td>q4_img <c:if test="${ufo.q4_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q4_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q4_img_file"></td></tr>
                   		<tr><td>q5_img <c:if test="${ufo.q5_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q5_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q5_img_file"></td></tr>
                   		<tr><td>q6_img <c:if test="${ufo.q6_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q6_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q6_img_file"></td></tr>
                   		<tr><td>q7_img <c:if test="${ufo.q7_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q7_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q7_img_file"></td></tr>
                   		<tr><td>q_coupon_txt</td><td><input type="text" class="form-control" name="q_coupon_txt" value="${ufo.q_coupon_txt }" maxlength="200"></td></tr>
                   		<tr><td>q_coupon_txt2</td><td><input type="text" class="form-control" name="q_coupon_txt2" value="${ufo.q_coupon_txt2 }" maxlength="200"></td></tr>
                   		<tr><td>q_coupon_txt3</td><td><input type="text" class="form-control" name="q_coupon_txt3" value="${ufo.q_coupon_txt3 }" maxlength="50"></td></tr>
                   		<tr><td>q_graphic <c:if test="${ufo.q_graphic ne null}"><img src="https://www.ufo79.com/image/${ufo.q_graphic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_graphic_file"></td></tr>
                   		<tr><td>para</td><td><input type="text" class="form-control" name="para" value="${ufo.para }" maxlength="10" readonly></td></tr>
                   		<tr><td>menu</td><td><input type="text" class="form-control" name="menu" value="${ufo.menu }" maxlength="100"></td></tr>
                   		<tr><td>location_title</td><td><input type="text" class="form-control" name="location_title" value="${ufo.location_title }" maxlength="45"></td></tr>
                   		<tr><td>info_title</td><td><input type="text" class="form-control" name="info_title" value="${ufo.info_title }" maxlength="45"></td></tr>
                   		<tr><td>program_title</td><td><input type="text" class="form-control" name="program_title" value="${ufo.program_title }" maxlength="45"></td></tr>
                   		<tr><td>history_title</td><td><input type="text" class="form-control" name="history_title" value="${ufo.history_title }" maxlength="45"></td></tr>
                   		<tr><td>apk_name</td><td><input type="text" class="form-control" name="apk_name" value="${ufo.apk_name }" maxlength="200"></td></tr>
                   		<tr><td>go_rad</td><td><input type="text" class="form-control" name="go_rad" value="${ufo.go_rad }" maxlength="20"></td></tr>
                   		<tr><td>ufo_tag</td><td><input type="text" class="form-control" name="ufo_tag" value="${ufo.ufo_tag }" maxlength="200"></td></tr>
                   		<tr><td>ufo_go_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_desc" maxlength="1000">${ufo.ufo_go_desc }</textarea></td></tr>
                   		<tr><td>ufo_qr_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_title" maxlength="1000">${ufo.ufo_qr_title }</textarea></td></tr>
                   		<tr><td>ufo_go_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_title" maxlength="1000">${ufo.ufo_go_title }</textarea></td></tr>
                   		<tr><td>ufo_qr_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_desc" maxlength="1000">${ufo.ufo_qr_desc }</textarea></td></tr>
                    </table>
                    <input type="submit" class="form-control primary" value="나의 홈페이지를 업데이트!">
                </form>
            </div>
            <br><br><br><br><br><br>
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
                                        	<c:if test="${var.photo_file ne null}"><img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:300px"></c:if>
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