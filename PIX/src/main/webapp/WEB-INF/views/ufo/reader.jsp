<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UFO79 reader</title>
</head>
<body>
UFO79 Reader ${para }
<input type="text" id="link">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
<script>

var str = "go/2323232323232/3232";
var patt = new RegExp("(/.*){2}");
//var match = patt.test(str);
//var n = str.split("/");
//console.log(n[1]);


$(document).keypress(function(e) {
    if(e.which == 13) {
    	var link = "https://www.ufo79.com/PIX/ufo/${para}/result/";
    	link = link + $("#link").val();
    	var n = str.split("/");
    	if(patt.test(link)){
    		//3 gid 포함
    		$.post( "/PIX/ufo/${para}/barcodeLog/"+n[1]+"/"+n[2], function( data ) {
    			  console.log(data);
    			  location.href = link;
    		});
    	}else{
    		//gid 안 포함
    		$.post( "/PIX/ufo/${para}/barcodeLog/"+n[1], function( data ) {
  			  console.log(data);
  			location.href = link;
  			});
    	}
    }
});
</script>
</body>
</html>