<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Responsive website template for products</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
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

<body class="blog-page">   
    <!-- ******HEADER****** --> 
    <header id="header" class="header">  
        <div class="container">      
            <h1 class="logo">
                <a href="index
"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/logo.svg" alt=""><span class="text">Startup Kit</span></a>
            </h1><!--//logo-->
            <nav class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->
                <div id="navbar-collapse" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a href="index
">Home</a></li>
                        <li class="nav-item"><a href="features
">Features</a></li>
                        <li class="nav-item"><a href="stories
">Stories</a></li>
                        <li class="nav-item"><a href="pricing
">Pricing</a></li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">More <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="about
">About Us</a></li>
                                <li><a href="story-single
">Customer Story Single</a></li>
                                <li><a href="blog
">Blog</a></li>
                                <li><a href="blog-single
">Blog Single</a></li>
                                <li><a href="support
">Support Center</a></li>   
                                <li><a href="career
">Career</a></li> 
                                <li><a href="job-single
">Job Single</a></li> 
                                <li><a href="contact
">Contact</a></li>                    
                            </ul>                            
                        </li><!--//dropdown-->                         
                        <li class="nav-item"><a href="#" class="login-trigger" data-toggle="modal" data-target="#login-modal">Log in</a></li>
                        <li class="nav-item nav-item-cta last"><a class="btn-signup" href="#" data-toggle="modal" data-target="#signup-modal">Sign Up</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->      
    
    <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder"></div>
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">Blog</h2>
            <div class="intro">The latest news, stories, and resources from the Startup Kit team.</div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#posts-promo-block">View featured posts</a>
                 <a class="scrollto-no-offset" href="#posts-promo-block"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
   
    <div class="posts-promo-block" id="posts-promo-block">
        <div class="container">
            <div id="promo-carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#promo-carousel" data-slide-to="0" class="active"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="1"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="2"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="3"></li>
                </ol><!--//carousel-indicators-->
                <div class="carousel-inner" role="listbox">
                    <div class="item item-1 active">
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                <div class="figure-holder"> 
                                                                    
                                </div>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single
">The Future of UX Design</a></h3>
                                    <div class="item-meta" >By Alice Aguilar, 2 days ago</div>                                 
                                    <div class="item-intro">
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec...
                                    </div><!--//item-intro-->
                                                                        
                                    <a class="item-cta btn btn-secondary" href="blog-single
">Read more</a>
                                                                        
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->
                    
                    <div class="item item-2">
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                <div class="figure-holder"> 
                                                                    
                                </div>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single
">How to build a successful product</a></h3>
                                    <div class="item-meta" >By Robert Berry, 22 Sep</div>                                     
                                    <div class="item-intro">
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec...
                                    </div><!--//item-intro-->
                                                                        
                                    <a class="item-cta btn btn-secondary" href="blog-single
">Read more</a>
                                                                        
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->
                    
                    <div class="item item-3">
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                <div class="figure-holder"> 
                                                                    
                                </div>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single
">When to Ship Your Product</a></h3>
                                    <div class="item-meta" >By Samuel Coleman, 6 days ago</div>                                     
                                    <div class="item-intro">
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec...
                                    </div><!--//item-intro-->
                                                                        
                                    <a class="item-cta btn btn-secondary" href="blog-single
">Read more</a>
                                                                        
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->
                    
                    <div class="item item-4">
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                <div class="figure-holder"> 
                                                                    
                                </div>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single
">10 Tips for SketchApp</a></h3>
                                    <div class="item-meta" >By Kate  Nichols, 2 days ago</div>                                     
                                    <div class="item-intro">
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec...
                                    </div><!--//item-intro-->
                                                                        
                                    <a class="item-cta btn btn-secondary" href="blog-single
">Read more</a>
                                                                        
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->

                </div><!--//carousel-inner-->
                
            </div><!--//promo-carousel-->
        </div><!--//container-->
    </div><!--//posts-promo-block-->
    <div class="posts-block text-center" id="posts-block">
        <div class="container">
            <h2 class="block-heading text-center">Latest Posts</h2>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab-1" aria-controls="tab-1" role="tab" data-toggle="tab">Latest</a></li>
                <li role="presentation"><a href="#tab-2" aria-controls="tab-2" role="tab" data-toggle="tab">News</a></li>
                <li role="presentation"><a href="#tab-3" aria-controls="tab-3" role="tab" data-toggle="tab">Tips</a></li>
                <li role="presentation"><a href="#tab-4" aria-controls="tab-4" role="tab" data-toggle="tab">Resources</a></li>
            </ul><!--//nav-tabs-->
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane tab-pane-1 active" id="tab-1">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single
">How To Work in A Remote Team</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-1.png" alt="">
                                    <div class="author-name">By Mark Harper</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 day ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-1.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Etiam feugiat nulla ac accumsan euismod. Cras porttitor consectetur metus in imperdiet. Nam mollis finibus ante, sed luctus nibh imperdiet eu. Integer ac aliquam magna, id fermentum metus... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    <div class="post post-2">
                        <h3 class="post-title"><a href="blog-single
">Say Goodbye To The Nine To Five</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-2.png" alt=""> 
                                    <div class="author-name">By Kate Peterson</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    3 days ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-2.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Integer facilisis elementum lacus, nec commodo velit scelerisque eget. Donec accumsan tempus purus, sed cursus massa. Ut at semper nisl. Pellentesque sit amet urna a ex lobortis auctor ac ac elit. Etiam ut urna id dui pulvinar vestibulum eget ut erat. Fusce efficitur faucibus tellus, non lacinia nunc efficitur ut...<a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-2-->
                    <div class="post post-3">
                        <h3 class="post-title"><a href="blog-single
">Setting Up Slack For Small Teams</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-3.png" alt="">
                                    <div class="author-name">By David Chung</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 week ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-3.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Curabitur vitae elit sit amet risus imperdiet ornare vitae sed lacus. Etiam tellus felis, tempus a nisi ac, commodo consectetur nisl. In tempus commodo facilisis. Aenean at pretium purus. Pellentesque congue leo et lacus maximus, consequat sollicitudin... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-3-->
                    <div class="post post-4">
                        <h3 class="post-title"><a href="blog-single
">How To Use Startup Kit</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-4.png" alt="">
                                    <div class="author-name">By Mike Lee</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    24 Sep
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-4.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt sapien in ornare dapibus. Duis laoreet neque eu ullamcorper faucibus. Sed laoreet diam ut lectus congue, sodales euismod mi molestie... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-4-->
                    
                    <div class="pagination-container text-center">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">Â«</a></li>
                            <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">Â»</a></li>
                        </ul><!--//pagination-->
                    </div>
                    
                </div><!--//tab-pane-1-->
                
                <div role="tabpanel" class="tab-pane tab-pane-2" id="tab-2">
                    <div class="post post-4">
                        <h3 class="post-title"><a href="blog-single
">How To Use Startup Kit</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-4.png" alt="">
                                    <div class="author-name">By Mike Lee</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 day ago
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-4.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt sapien in ornare dapibus. Duis laoreet neque eu ullamcorper faucibus. Sed laoreet diam ut lectus congue, sodales euismod mi molestie... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-4-->
                    
                    <div class="post post-5">
                        <h3 class="post-title"><a href="blog-single
">New Features in Startup Kit</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-5.png" alt="">
                                    <div class="author-name">By Jennifer Hughes</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    22 Aug
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-5.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt sapien in ornare dapibus. Duis laoreet neque eu ullamcorper faucibus. Sed laoreet diam ut lectus congue, sodales euismod mi molestie... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-5-->
                    
                    <div class="post post-6">
                        <h3 class="post-title"><a href="blog-single
">Lorem Ipsum Dolor Sit Amet</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-6.png" alt="">
                                    <div class="author-name">By James Doe</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    22 Aug
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-6.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt sapien in ornare dapibus. Duis laoreet neque eu ullamcorper faucibus. Sed laoreet diam ut lectus congue, sodales euismod mi molestie... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-6-->
                    
                    <div class="pagination-container text-center">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">Â«</a></li>
                            <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">Â»</a></li>
                        </ul><!--//pagination-->
                    </div>
                    
                    
                </div><!--//tab-pane-2-->
                
                <div role="tabpanel" class="tab-pane tab-pane-3" id="tab-3">
                    
                    <div class="post post-3">
                        <h3 class="post-title"><a href="blog-single
">Setting Up Slack For Small Teams</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-3.png" alt="">
                                    <div class="author-name">By David Chung</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 week ago
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-3.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Curabitur vitae elit sit amet risus imperdiet ornare vitae sed lacus. Etiam tellus felis, tempus a nisi ac, commodo consectetur nisl. In tempus commodo facilisis. Aenean at pretium purus. Pellentesque congue leo et lacus maximus, consequat sollicitudin... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-3-->
                    
                    <div class="post post-7">
                        <h3 class="post-title"><a href="blog-single
">Curabitur Vitae Elit Sit Amet</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-7.png" alt="">
                                    <div class="author-name">By Tim Wright</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    16 July
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-7.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Curabitur vitae elit sit amet risus imperdiet ornare vitae sed lacus. Etiam tellus felis, tempus a nisi ac, commodo consectetur nisl. In tempus commodo facilisis. Aenean at pretium purus. Pellentesque congue leo et lacus maximus, consequat sollicitudin... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-7-->
                    
                </div><!--//tab-pane-3-->
                
                
                
                <div role="tabpanel" class="tab-pane tab-pane-4" id="tab-4">
                    
                    <div class="post post-8">
                        <h3 class="post-title"><a href="blog-single
">UI Kit for Designers</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-8.png" alt="">
                                    <div class="author-name">By Betty Diaz</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    23 July
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-8.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Curabitur vitae elit sit amet risus imperdiet ornare vitae sed lacus. Etiam tellus felis, tempus a nisi ac, commodo consectetur nisl. In tempus commodo facilisis. Aenean at pretium purus. Pellentesque congue leo et lacus maximus, consequat sollicitudin... <a href="blog-single
" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-8-->
                    
                </div><!--//tab-pane-4-->
                
            </div><!--//tab-content-->
        </div><!--//container-->
    </div><!--//posts-block-->
    
    <div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">Get free resources for your startup weekly</h3>
            <div class="block-intro">Subscribe to our newsletter to be the first to get the freebies.</div>
            <form class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail" class="form-control email-field" placeholder="Enter your email address" name="email" required="" aria-required="true">
                    <button type="submit" class="btn btn-primary">Subscribe</button>  
                </div>                              
            </form>
        </div><!--//container-->
    </div><!--//blog-signup-block-->

           
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">About</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Jobs</a> <label class="label label-new">We're hiring</label></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div><!--//footer-col-inner-->
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Product</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Tutorials</a></li>
                            <li><a href="#">Support Center</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Customers</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Useful Links</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Sign up</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Become our partner</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Legal</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Terms of Services</a></li>
                            <li><a href="#">Policies</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
            </div><!--//row-->
            <div class="divider"></div>
            <div class="footer-bottom text-center">
                <ul class="social-media list-inline">
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                    
                </ul>
    
                <small class="copyright">Template Copyright @ <a href="http://themes.3rdwavemedia.com/" target="_blank">3rd Wave Media</a></small> 
            </div>
        </div><!--//container-->
    </footer><!--//footer-->
    
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
    
    <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->  
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
    </div><!--//configure-panel-->
 
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

