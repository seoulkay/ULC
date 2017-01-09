<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>2017 강릉단오제</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet" type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head> 

<body class="blog-single-page">   
    <!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->        
    
    <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder"></div>
            <div class="hero-mask-solid"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">         
            <div class="back-to-main">
                <a href="blog"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> 목록으로 돌아가기</a>
            </div><!--//back-to-main-->       
            <h2 class="headline">제목 입니다.</h2>
            <div class="meta">
                <div class="author">
                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                    <div class="author-name">작성자</div>
                </div>
                <!--//author-->
                <div class="time-stamp">날짜</div>
                <!--//time-stamp-->
            </div><!--//meta-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="post-single-block" id="post-single-block">
        
        <div class="post-container">
            <p>내용입니다.</p>
        </div><!--//post-container-->
        <%-- <div class="author-container">
            <div class="author">
                <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-3.png" alt="">
            </div><!--//author-->
            <div class="intro">
                <h4 class="author-name">Author: David Chung, Full-stack Developer at Startup Kit</h4>
                <p>Hello, lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                <ul class="social list-inline">
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-medium" aria-hidden="true"></i></a></li>
                </ul>
            </div><!--//intro-->
            
        </div><!--//author-container--> --%>
        
    </div><!--//post-single-block-->
    
    <div class="related-posts text-center">
        <div class="container">
             <h3 class="title">You May Also Like:</h3>
             <div class="row">
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-3.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-5.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-6.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
             </div><!--//row-->
        </div><!--//container-->
    </div><!--//related-posts-->
    
    <div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">강릉단오제 뉴스레터 구독하기</h3>
            <div class="block-intro">강릉단오제의 소식을 보내드립니다.</div>
            <form class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail" class="form-control email-field" placeholder="이메일 주소를 입력하세요." name="email" required="" aria-required="true">
                    <button type="submit" class="btn btn-primary">구독하기</button>  
                </div>                              
            </form>
        </div><!--//container-->
    </div><!--//blog-signup-block-->

           
    <!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
    
    <!-- Login Modal -->
    <div class="modal modal-auth modal-login" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="loginModalLabel" class="modal-title text-center">Log in to your account</h4>
                </div>
                <div class="modal-body">
                    <div class="social-login text-center">                        
                        <ul class="social-buttons list-unstyled">
                            <li><a href="#" class="btn btn-social btn-google btn-block"><i class="fa fa-google" aria-hidden="true"></i><span class="btn-text">Log in with Google</span></a></li>
                            <li><a href="#" class="btn btn-social btn-facebook btn-block"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">Log in with Facebook</span></a></li>
                        </ul>
                    </div>
                    <div class="divider">
                        <span class="or-text">OR</span>
                    </div>
                    <div class="login-form-container">
                        <form class="login-form">                
                            <div class="form-group email">
                                <i class="material-icons icon">&#xE0BE;</i>
                                <label class="sr-only" for="login-email">Email</label>
                                <input id="login-email" name="login-email" type="email" class="form-control login-email" placeholder="Email">
                            </div><!--//form-group-->
                            <div class="form-group password">
                                <i class="material-icons icon">&#xE897;</i>
                                <label class="sr-only" for="login-password">Password</label>
                                <input id="login-password" name="login-password" type="password" class="form-control login-password" placeholder="Password">
                                <div class="extra">
                                    <div class="checkbox remember">
                                        <label>
                                            <input type="checkbox"> Remember me
                                        </label>
                                    </div><!--//check-box-->
                                    <div class="forgotten-password">
                                        <a href="#" id="resetpass-link" data-toggle="modal" data-target="#resetpass-modal">Forgotten password?</a>
                                    </div>
                                </div><!--//extra-->
                            </div><!--//form-group-->
                            <button type="submit" class="btn btn-cta btn-block btn-primary">Log in</button>
                        </form>
                    </div><!--//login-form-container-->
                    
                    <div class="option-container">
                        <div class="lead-text">Don't have an account?</div> 
                        <a class="signup-link btn btn-ghost-alt" id="signup-link" href="#">Sign Up</a>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
                
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <!-- Signup Modal -->
    <div class="modal modal-auth modal-signup" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="signupModalLabel" class="modal-title text-center">Sign up to start your 30 day free trial!</h4>
                </div>
                <div class="modal-body">
                    <div class="social-login text-center">                        
                        <ul class="social-buttons list-unstyled">
                            <li><a href="#" class="btn btn-social btn-google btn-block"><i class="fa fa-google" aria-hidden="true"></i><span class="btn-text">Sign up with Google</span></a></li>
                            <li><a href="#" class="btn btn-social btn-facebook btn-block"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">Sign up with Facebook</span></a></li>
                        </ul>
                    </div>
                    <div class="divider">
                        <span class="or-text">OR</span>
                    </div>
                    <div class="login-form-container">
                        <form class="login-form">         
                            <div class="form-group full-name">
                                <i class="material-icons icon">&#xE7FD;</i>
                                <label class="sr-only" for="signup-fullname">Your Full Name</label>
                                <input id="signup-fullname" name="signup-fullname" type="text" class="form-control signup-email" placeholder="Your Full Name">
                            </div><!--//form-group-->       
                            <div class="form-group email">
                                <i class="material-icons icon">&#xE0BE;</i>
                                <label class="sr-only" for="signup-email">Your Email</label>
                                <input id="signup-email" name="signup-email" type="email" class="form-control signup-email" placeholder="Your Email">
                            </div><!--//form-group-->
                            <div class="form-group password">
                                <i class="material-icons icon">&#xE897;</i>
                                <label class="sr-only" for="signup-password">Create a Password</label>
                                <input id="signup-password" name="signup-password" type="password" class="form-control signup-password" placeholder="Create a Password">
                            </div><!--//form-group-->
                            <div class="legal-note">By signing up, you agree to our terms of services and privacy policy.</div>
                            <button type="submit" class="btn btn-block btn-primary btn-cta">Sign up</button>
                            
                        </form>
                    </div><!--//login-form-container-->
                    <div class="option-container">
                        <div class="lead-text">Already have an account?</div> 
                        <a class="login-link btn btn-ghost-alt" id="login-link" href="#">Log in</a>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <!-- Reset Password Modal -->
    <div class="modal modal-auth modal-resetpass" id="resetpass-modal" tabindex="-1" role="dialog" aria-labelledby="resetpassModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="resetpassModalLabel" class="modal-title text-center">Forgot your password?</h4>
                </div>
                <div class="modal-body">
                    <div class="resetpass-form-container">
                        <p class="intro">We'll email you a link to a page where you can easily create a new password.</p>
                        <form class="resetpass-form">                
                            <div class="form-group email">
                                <label class="sr-only" for="reg-email">Your Email</label>
                                <input id="reg-email" name="reg-email" type="email" class="form-control login-email" placeholder="Your Email">
                            </div><!--//form-group-->
                            <button type="submit" class="btn btn-block btn-secondary btn-cta">Reset Password</button>
                        </form>
                    </div><!--//login-form-container-->
                    <div class="option-container">
                        <div class="lead-text">I want to <a class="back-to-login-link" id="back-to-login-link" href="#">return to login</a></div>                    
                    </div><!--//option-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
    <%-- <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->  
    <div id="config-panel" class="config-panel hidden-xs hidden-sm">
        <div class="panel-inner">
            <a id="config-trigger" class="config-trigger config-panel-hide" href="#"><i class="fa fa-cog"></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-unstyled list-inline">
                <li class="theme-1 active"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css" href="#"></a></li>
                <li class="theme-2"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles-2.css" href="#"></a></li>
                <li class="theme-3"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles-3.css" href="#"></a></li>
                <li class="theme-4"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles-4.css" href="#"></a></li>     
                <li class="theme-5"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles-5.css" href="#"></a></li>    
                <li class="theme-6"><a data-style=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles-6.css" href="#"></a></li>             
            </ul>
            <a id="config-close" class="close" href="#"><i class="fa fa-times-circle"></i></a>
        </div><!--//panel-inner-->
    </div><!--//configure-panel--> --%>
 
    <!-- Javascript -->          
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>    
    <script type="text/javascript" src=
"${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>
    
    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src=
"${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>
            
</body>
</html> 

