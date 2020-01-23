<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--><html lang="en"><!--<![endif]-->

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
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/slick-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/colors/orange/color.css">
    <!--<link rel="stylesheet" href="css/colors/pink/color.css">-->
    <!--<link rel="stylesheet" href="css/colors/yellow/color.css">-->
    
    <!--[if lt IE 9]>
    	<script src="js/html5.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->
    
    <!--[if lt IE 8]>
    	<link rel="stylesheet" href="css/ie-older.css">
    <![endif]-->
    
    <noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/no-js.css"></noscript>
    
    <!-- Favicons -->
	<link rel="shortcut icon" href="https://www.ufo79.com/image/favicon.ico">
</head>
<body>
    
    <!-- #header -->
    <header id="header">
        
        <!-- .header-content -->
        <div class="header-content" >
            
            <!-- .header-overlay -->
            <div class="header-overlay">
                
                <!-- .container -->
                <div class="container">
                    
                    <div class="header-txt">
                    	<img style="max-height: 10em; margin: 0 auto" src="${pageContext.request.contextPath}/resources/tis/Atos_Pyeongchang2018_H_W_ALL.png" alt="Logo" class="img-responsive">
<!--                         <h1>Atos</h1> -->
                        <p>Trip information system</p>
                    </div>
                    <div class="well" style="background-color: #e74c3c">
                    <form action="info" method="post">
                    	<input type="text" class="form-control" placeholder="DAS ID"><br>
                    	<input type="password" class="form-control" placeholder="TIS password"><br>
                    	<input type="submit" value="Login" style="background-color: #3498db; border-color: #2980b9">
                    </form>
                    </div>
                    <div class="header-btn">
                    </div>
                    <div style="height: 20em"></div>
                </div>
                <!-- .container end -->
                
            </div>
            <!-- .header-overlay end -->
            
        </div>
        <!-- .header-content end -->
        
    </header>
    <!-- #header end -->
    <!-- #features2 -->
    
    <!-- #footer -->
    <footer id="footer">
        
        <!-- .container -->
        <div class="container">
            
            <div class="footer-links">
<!--             	<a href="https://www.facebook.com/UFO79-727262880784383/" class="link-icon" title="Facebook"><i class="ion ion-social-facebook"></i></a> -->
<!--                 <a href="http://www.twitter.com/share?=url=www.ufo79.com/PIX/que/" class="link-icon" title="Twitter"><i class="ion ion-social-twitter"></i></a> -->
<!--                 <a href="http://plus.google.com/share?url=www.ufo79.com/PIX/que/" class="link-icon" title="Google Plus"><i class="ion ion-social-googleplus"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Dribbble"><i class="ion ion-social-dribbble"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Instagram"><i class="ion ion-social-instagram"></i></a> -->
                <a href="#" class="scrollup"><i class="ion ion-ios-arrow-up"></i></a>
            </div>
            
            <div class="footer-copyright">
            	<p>&copy; <a href="http://affapress.com" target="_blank">Atos Pyeongchang team</a> All Rights Reserved.</p>
            </div>
            
		</div>
        <!-- .container end -->
        
    </footer>
    <!-- #footer end -->
    
    <!--[if lt IE 8]>
    	<div class="browser-notice">
            <div class="container">
            	<div class="text">
                    <h1>Internet Explorer Out To Date</h1>
                    <p>Please update your Internet Explorer browser with a newer version (Internet Explorer 8 above) now!</p>
                    <span>You can download it <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">here....</a></span>
                </div>
            </div>
        </div>
	<![endif]-->
    
    <!-- JavaScripts -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/smoothscroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/response.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/waypoints.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/slick.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fancybox-media.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/script.js"></script>
   <div id="fb-root"></div> 
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
</html>