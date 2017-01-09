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
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->      
    
    <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder"></div>
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">공지사항</h2>
            <div class="intro">2017 강릉단오제 관련 공지사항 입니다.</div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#posts-promo-block">공지사항 보러가기</a>
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
                <c:forEach var="var" items="${noticeList}" varStatus="status" begin="0" end="3">
                	<c:choose>
                	<c:when test="${status.count == 1 }">
                		<div class="item item-${status.count} active">
                	</c:when>
                	<c:otherwise>
                		<div class="item item-${status.count}">
                	</c:otherwise>
                    </c:choose>
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                 <c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<div class="figure-holder"> </div>
			                	</c:when>
			                	<c:otherwise>
			                		 <div>
                                     	<img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px">
                                     </div>  
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single">${var.title }</a></h3>
                                    <div class="item-meta" >${var.createdBy}</div>                                 
                                    <div class="item-intro">${var.content }</div>
                                    <!--//item-intro-->
                                    <a class="item-cta btn btn-secondary" href="blog-single">Read more</a>
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->
                 </c:forEach>
                </div><!--//carousel-inner-->
                
            </div><!--//promo-carousel-->
        </div><!--//container-->
    </div><!--//posts-promo-block-->
    <div class="posts-block text-center" id="posts-block">
        <div class="container">
            <h2 class="block-heading text-center">공지사항</h2>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab-1" aria-controls="tab-1" role="tab" data-toggle="tab">단오소식</a></li>
                <li role="presentation"><a href="#tab-2" aria-controls="tab-2" role="tab" data-toggle="tab">언론보도</a></li>
                <li role="presentation"><a href="#tab-3" aria-controls="tab-3" role="tab" data-toggle="tab">뉴스레터</a></li>
                <li role="presentation"><a href="#tab-4" aria-controls="tab-4" role="tab" data-toggle="tab">FAQ</a></li>
            </ul><!--//nav-tabs-->
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane tab-pane-1 active" id="tab-1">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single
">제목 입니다.</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">작성자</div>
                                </div><!--//author-->
                                <div class="time-stamp">날짜</div>
                                <!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb01.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">본문 내용 일부(4줄) 입니다. <a href="blog-single
" class="readmore">더 보기</a>
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt=""> 
                                    <div class="author-name">By Kate Peterson</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    3 days ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb02.jpg" alt=""></a>
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">By David Chung</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 week ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb03.jpg" alt=""></a>
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">By Mike Lee</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    24 Sep
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single
"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb04.jpg" alt=""></a>
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin02.png" alt="">
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin02.png" alt="">
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin02.png" alt="">
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin02.png" alt="">
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
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin02.png" alt="">
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
</body>
</html> 
