<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-default" style= "background-image: url('${pageContext.request.contextPath}/resources/tis/image/headerGeneric.png'); background-size:cover">
  <div class="container-fluid on-the-fly-behavior2">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span style="background-color: #fff" class="icon-bar"></span>
        <span style="background-color: #fff" class="icon-bar"></span>
        <span style="background-color: #fff" class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/info">
      	<img class="img-responsive" alt="" src="${pageContext.request.contextPath}/resources/tis/image/Atos.svg" style="max-height: 100%" >
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
      <ul class="nav navbar-nav navbar-right">
        <li><a class="li-style" href="${pageContext.request.contextPath}/info">My Travel</a></li>
        <li class="dropdown">
          <a class="li-style" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PYC2018 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <!-- <li><a style="color: #000000;" href="/TIS/about/team">Team</a></li> -->
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/about/emer">Health and Safety</a></li>
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/about/faq">FAQ</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="li-style" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Games <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/host">Host city</a></li>
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/oly">Olympics</a></li>
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/par">Paralympics</a></li>
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/venue">Venue</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="li-style" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Discoveries <span class="caret"></span></a>
          <ul class="dropdown-menu">            
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/attraction">Attractions</a></li>
            <li><a style="color: #000000;" href="${pageContext.request.contextPath}/game/restaurant">Restaurants</a></li>
          </ul>
        </li>
        <li><a class="li-style" href="javascript:signout()">Sign out</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>