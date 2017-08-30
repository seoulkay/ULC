<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
    <body data-spy="scroll" data-offset="80">
        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
            <div class="container">
            <div style="height:2em"></div>
            <div class="row">
            <h2>Looks & Feels</h2>
            <div style="height:2em"></div>
            <form id="ufoForm" action="updateUfo" enctype="multipart/form-data" method="post">
            <input type="submit" class="form-control btn btn-warning" style="background-color: #FD7A02; color: #ffffff; font-weight: bold;" value="업데이트!">
            <div style="height:2em"></div>
            		<table class="table table_striped">	
                   		<tr><td colspan="2" style="border:none;"><h3>Event</h3></td></tr>
                    	<tr><td class="hk2" rowspan="4">Header</td><td class="hk">로고 <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="logo_file"></td></tr>
                    	<tr><td class="hk">메인이미지 <c:if test="${ufo.main_image ne null}"><img src="https://www.ufo79.com/image/${ufo.main_image}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="main_image_file"></td></tr>
                   		<tr><td class="hk">제목</td><td><input class="form-control" type="text" name="title" value="${ufo.title }" maxlength="50"></td></tr>
                   		<tr><td class="hk">기간</td><td><input type="text" class="form-control" name="event_date" value="${ufo.event_date }" maxlength="125"></td></tr>                   		
                   		<tr><td class="hk2">Footer</td><td class="hk">사업자 정보</td><td><textarea form="ufoForm" class="form-control" name="footer_msg"  maxlength="150">${ufo.footer_msg }</textarea></td></tr>
                   		<tr><td class="hk2">Tawk</td><td class="hk">주소</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_title" maxlength="1000">${ufo.ufo_qr_title }</textarea></td></tr>
                   	</table>
                    
                    <table class="table table_striped" <c:if test="${!fn:contains(sessionScope.eventMenu, 'index')}">style="display:none"</c:if>>
                    	<tr><td colspan="2" style="border:none;"><h3>Home</h3></td></tr>                    	
                    	<tr><td class="hk2" rowspan="3">Notice</td><td class="hk">한줄 공지1</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice1"  maxlength="150">${ufo.ufo_notice1} </textarea></td></tr>
                    	<tr><td class="hk">한줄 공지2</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice2"  maxlength="150">${ufo.ufo_notice2} </textarea></td></tr>
                    	<tr><td class="hk">한줄 공지3</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice3"  maxlength="150">${ufo.ufo_notice3} </textarea></td></tr>  
                    	<tr><td class="hk2" rowspan="3">Winners</td><td class="hk">당첨자 메세지</td><td><textarea form="ufoForm" class="form-control" name="winner_msg"  maxlength="400">${ufo.winner_msg} </textarea></td></tr>                    	
                    	<!-- 당첨자수 & 당첨자 발표시간 -->
                    	<tr><td class="hk">당첨자수</td><td></td></tr>
                    	<tr><td class="hk">당첨자 발표시간</td><td></td></tr>                    	
                    	<tr><td class="hk2" rowspan="2">L!VE</td><td class="hk">페이스북 라이브 피드 주소</td><td><input class="form-control" type="text" name="fb_live" value="${ufo.fb_live }"></td></tr>                   		
                   		<tr><td class="hk">페이스북 문의댓글창</td><td><textarea form="ufoForm" class="form-control" name="event_long_description"  maxlength="2500">${ufo.event_long_description }</textarea></td></tr>                 		                   		
                   	</table>
                  
                   	<table class="table table_striped" <c:if test="${!fn:contains(sessionScope.eventMenu, 'modal')}">style="display:none"</c:if>>
                   		<tr><td colspan="2" style="border:none;"><h3>Stamp Rally</h3></td></tr>
                   		<tr><td class="hk2">Header</td><td class="hk">메인이미지 <c:if test="${ufo.q2_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q2_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q2_img_file"></td></tr>
                   		<tr><td class="hk2">Map</td><td class="hk">스탬프 활성화 반경</td><td><input type="text" class="form-control" name="go_rad" value="${ufo.go_rad }" maxlength="20"></td></tr>                   		
                   		<tr><td class="hk2" rowspan="2">How to</td><td class="hk">제목</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_title" maxlength="1000">${ufo.ufo_go_title }</textarea></td></tr>
                   		<tr><td class="hk">설명</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_desc" maxlength="1000">${ufo.ufo_go_desc }</textarea></td></tr>                   		
    	                <tr><td class="hk2" rowspan="2">Icons</td><td class="hk">완성핀<c:if test="${ufo.pin_comp ne null}"><img src="https://www.ufo79.com/image/${ufo.pin_comp}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q4_img_file"></td></tr>
    	                <tr style="display: none;"><td class="hk">부스핀<c:if test="${ufo.pin_booth ne null}"><img src="https://www.ufo79.com/image/${ufo.pin_booth}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q5_img_file"></td></tr>
    	                
                   	</table>                   	                   	
                                  	
                   	<table class="table table_striped" <c:if test="${!fn:contains(sessionScope.eventMenu, 'stories')}">style="display:none"</c:if>>
                   		<tr><td colspan="2" style="border:none;"><h3>Survey</h3></td></tr>
                   		<tr><td class="hk2">Header</td><td class="hk">메인이미지 <c:if test="${ufo.info_program_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_program_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_program_pic_file"></td></tr>
                   		
                   	</table>
                   	
                   	<table class="table table_striped" <c:if test="${!fn:contains(sessionScope.eventMenu, 'features')}">style="display:none"</c:if>>
                   		<tr><td colspan="2" style="border:none;"><h3>Information</h3></td></tr>
                   		
                   		<tr><td class="hk2">Header</td><td class="hk">메인이미지 <c:if test="${ufo.q3_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q3_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q3_img_file"></td></tr>	
                   		
                   		<tr><td class="hk2" rowspan="3">Block 1</td><td class="hk">제목1</td><td><input type="text" class="form-control" name="info_title" value="${ufo.info_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">사진1 <c:if test="${ufo.info_info_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_info_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_info_pic_file"></td></tr>
                   		<tr><td class="hk">내용1</td><td><textarea form="ufoForm" class="form-control" name="info_info_text" maxlength="1000">${ufo.info_info_text }</textarea></td></tr>
                   		<tr><td class="hk2" rowspan="3">Block 2</td><td class="hk">제목2</td><td><input type="text" class="form-control" name="history_title" value="${ufo.history_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">사진2 <c:if test="${ufo.info_hist_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_hist_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_hist_pic_file"></td></tr>
                   		<tr><td class="hk">내용2</td><td><textarea form="ufoForm" class="form-control" name="info_hist_text" maxlength="1500">${ufo.info_hist_text }</textarea></td></tr>
                   	
                   		<tr><td class="hk2" rowspan="3">Block 3</td><td class="hk">제목3</td><td><input type="text" class="form-control" name="location_title" value="${ufo.location_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">사진3<c:if test="${ufo.info_location_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_location_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_location_pic_file"></td></tr>
                   		<tr><td class="hk">내용3</td><td><textarea form="ufoForm" class="form-control" name="info_location_text" maxlength="1000">${ufo.info_location_text }</textarea></td></tr>
                   		
                   		<tr style="display: none;"><td class="hk2" rowspan="2">Block 5</td><td class="hk">축제연락처 사진 <c:if test="${ufo.info_contact_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_contact_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_contact_pic_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">축제연락처 내용</td><td><textarea form="ufoForm" class="form-control" name="info_contact_text" maxlength="1000">${ufo.info_contact_text }</textarea></td></tr>
                   		
                   	</table>
                   
                   	<table class="table table_striped" <c:if test="${!fn:contains(sessionScope.eventMenu, 'minwon')}">style="display:none"</c:if>>	
                   		<tr><td colspan="2" style="border:none;"><h3>Report</h3></td></tr>
                   		<!-- Grace: 메인이미지가 q2_img로 설정되어 있어요. 변경 부탁 -->
                   		<tr><td class="hk2">Header</td><td class="hk">메인이미지 <c:if test="${ufo.q2_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q2_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q2_img_file"></td></tr>
                   		<tr><td class="hk2" rowspan="2">How to</td><td class="hk">제목</td><td><textarea form="ufoForm" class="form-control" name="minwon_map" maxlength="1000">${ufo.minwon_map }</textarea></td></tr>
                   		<tr><td class="hk">설명</td><td><textarea form="ufoForm" class="form-control" name="minwon_how_to" maxlength="1000">${ufo.minwon_how_to }</textarea></td></tr>                   		                   		
                   	</table>          	
                   	                	
                    <table class="table table_striped">
                    	<tr><td colspan="2" style="border:none;"><h3>Parameters</h3></td></tr>
                    	<tr><td class="hk2" rowspan="2">Value</td><td class="hk">이벤트 번호</td><td><input class="form-control" type="text" name="idfest_ufo" value="${ufo.idfest_ufo }" readonly></td></tr>
                    	<tr><td class="hk">이벤트 코드</td><td><input type="text" class="form-control" name="para" value="${ufo.para }" maxlength="10" readonly></td></tr>
                    	<tr><td class="hk2">Menu</td><td class="hk">메뉴 (index, modal, info, minwon)</td><td><input type="text" class="form-control" name="menu" value="${ufo.menu }" maxlength="100" readonly></td></tr>
                    	<!--Grace: 파일 업로드  - display: none -->
                    	<tr style="display: none;"><td class="hk">q_coupon_img <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_coupon_img_file"></td></tr>
              	
                   		<tr style="display: none;"><td class="hk">q4_img <c:if test="${ufo.q4_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q4_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q4_img_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">q5_img <c:if test="${ufo.q5_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q5_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q5_img_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">q6_img <c:if test="${ufo.q6_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q6_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q6_img_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">q7_img <c:if test="${ufo.q7_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q7_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q7_img_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">q_graphic <c:if test="${ufo.q_graphic ne null}"><img src="https://www.ufo79.com/image/${ufo.q_graphic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_graphic_file"></td></tr>
                   		<tr style="display: none;"><td class="hk">qr_pic <c:if test="${ufo.qr_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.qr_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="qr_pic_file"></td></tr>

                   		<tr style="display: none;"><td class="hk2" rowspan="7">Questions</td><td class="hk">질문 1 <c:if test="${ufo.q1_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q1_img_file"></td></tr>
                   		
                   	</table>
                   	
                   	
                   	<!-- Grace: 아래부분은 필요없으면 제외해주세요. Survey 부분 이미지랑 글넣는 것은 축제모듈에서 관리할 수 있게 해주세요. -->
                   	<%-- <table class="table table_striped">	
                   		<h3>Survey</h3>                   		
                   		<tr><td class="hk2" rowspan="5">Coupons</td><td class="hk">상품명</td><td><input type="text" class="form-control" name="q_coupon_txt" value="${ufo.q_coupon_txt }" maxlength="200"></td></tr>
                   		<tr><td class="hk">상품 수령 장소</td><td><input type="text" class="form-control" name="q_coupon_txt2" value="${ufo.q_coupon_txt2 }" maxlength="200"></td></tr>
                   		<tr><td class="hk">상품 수령 기간</td><td><input type="text" class="form-control" name="q_coupon_txt3" value="${ufo.q_coupon_txt3 }" maxlength="50"></td></tr>                   		
                    </table><hr>  
                   	<table class="table table_striped">	
                   		<h3>기타</h3>
                   		
                   		<tr><td class="hk">ufo_qr_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_desc" maxlength="1000">${ufo.ufo_qr_desc }</textarea></td></tr>
                   		<tr><td class="hk">qr_info_title</td><td><input type="text" form="ufoForm" class="form-control" name="qr_info_title" maxlength="45">${ufo.qr_info_title }</td></tr>
                   		<tr><td class="hk">qr_info</td><td><textarea form="ufoForm" class="form-control" name="qr_info" maxlength="1000">${ufo.qr_info }</textarea></td></tr>                   		
                    	<tr><td class="hk">ufo_survey_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_survey_title" maxlength="500">${ufo.ufo_survey_title }</textarea></td></tr>
                   		<tr><td class="hk">ufo_survey_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_survey_desc" maxlength="500">${ufo.ufo_survey_desc }</textarea></td></tr>
                   		<tr><td class="hk">ufo_tag</td><td><input type="text" class="form-control" name="ufo_tag" value="${ufo.ufo_tag }" maxlength="200"></td></tr>
                   		<tr><td class="hk">APK</td><td><input type="text" class="form-control" name="apk_name" value="${ufo.apk_name }" maxlength="200"></td></tr>                   	
                    </table><hr>                 --%>   	
                <input type="submit" class="form-control btn btn-warning" style="background-color: #FD7A02; color: #ffffff; font-weight: bold;" value="업데이트!">
                </form>                
            </div>
        <div style="height:2em"></div>
        </div>
        <jsp:include page="ufoFooter.jsp" flush="false">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
    </body>    
</html>