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
	<title>UFO79</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="UFO79, 축제를 위한, 축제에 의한 플랫폼!">
	<meta name="author" content="TEAM U.F.O.">
    
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

        
        <!-- #navigation -->
        <nav id="navigation" class="navbar scrollspy">
            
            <!-- .container -->
            <div class="container">
                
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-collapse-1">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand">
                        <a href="index"><img src="${pageContext.request.contextPath}/resources/ulc/images/logo_ufo_white.png" alt="Logo"></a> <!-- site logo -->
                    </div>
                </div>
                               <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="menu-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                    	<li class="active"><a href="#header" class="smooth-scroll">홈</a></li>
                    </ul>
                </div>
                
            </div>
            <!-- .container end -->
            
        </nav>
        <!-- #navigation end -->
        
        <!-- .header-content -->
        <div class="header-content" >
            
            <!-- .header-overlay -->
            <div class="header-overlay">
                
                <!-- .container -->
                <div class="container">
                    
                    <div class="header-txt">
                        <h1>UFO79</h1>
                        <p>질문에 어떠한 대답이라도 해주세요.</p>
                    </div>
                    
                    <div class="header-btn">
                    <c:forEach items="${que }" var="ele">
                    	<a href="${pageContext.request.contextPath}/que/questions/${ele.id}" class="btn-custom btn-white btn-border btn-rounded btn-icon"><i class="ion ion-happy-outline"></i>${ele.question }</a><br>
                    </c:forEach>
                    </div>
                    <div style="height: 15em"></div>
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
            	<a href="https://www.facebook.com/UFO79-727262880784383/" class="link-icon" title="Facebook"><i class="ion ion-social-facebook"></i></a>
                <a href="http://www.twitter.com/share?=url=www.ufo79.com/PIX/que/" class="link-icon" title="Twitter"><i class="ion ion-social-twitter"></i></a>
                <a href="http://plus.google.com/share?url=www.ufo79.com/PIX/que/" class="link-icon" title="Google Plus"><i class="ion ion-social-googleplus"></i></a>
<!--                 <a href="#" class="link-icon" title="Dribbble"><i class="ion ion-social-dribbble"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Instagram"><i class="ion ion-social-instagram"></i></a> -->
                <a href="#" class="scrollup"><i class="ion ion-ios-arrow-up"></i></a>
            </div>
            
            <div class="footer-copyright">
            	<p>&copy; <a href="http://affapress.com" target="_blank">UFO79 Corp.</a> All Rights Reserved.</p>
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