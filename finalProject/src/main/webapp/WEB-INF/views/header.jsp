<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
	
<!-- HEADER SECTION -->
    <header id="header" class="w-100 flaot-left header-con main-box position-relative">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="/index">
            <figure class="mb-0">
              <img src="<c:url value='/assets/images/logo-icon.png' />" alt="logo-icon">
            </figure>
          </a>
          <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link p-0" href="/index">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="/about">About Us</a>
              </li>
			  
			  <li class="nav-item">
			  	<a class="nav-link p-0" href="/user/userLogin">가상 로그인</a>
			  </li>
			  
              <li class="nav-item">
                <a class="nav-link p-0" href="/destinations">Destination</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdown3" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                  <a class="dropdown-item" href="/booking">Booking</a>
                  <a class="dropdown-item" href="/faq">Faq</a>
                  <a class="dropdown-item" href="/contact">Contact</a>
                  <a class="dropdown-item" href="/team">Team</a>
                  <a class="dropdown-item" href="/service">Service</a>
                  <a class="dropdown-item" href="/testimonial">Testimonial</a>

                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle p-0" href="blog" id="navbarDropdown4" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
                  <a class="dropdown-item" href="/blog">Blog</a>
                  <a class="dropdown-item" href="/load-more">Load More</a>
                  <a class="dropdown-item" href="/single-blog">Single Blog</a>
                  <a class="dropdown-item" href="/one-column">One Column</a>
                  <a class="dropdown-item" href="/two-column">Two Column</a>
                  <a class="dropdown-item" href="/three-column">Three Column</a>
                  <a class="dropdown-item" href="/three-colum-sidbar">Three Column Sidbar</a>
                  <a class="dropdown-item" href="/four-column">Four Column</a>
                  <a class="dropdown-item" href="/six-colum-full-wide">Six Column</a>
                </div>
              </li>
            </ul>
            <div class="header-contact">
              <ul class="list-unstyled mb-0">
                <li><a href="contact" class="live-chat-btn d-inline-block"><i class="fa-solid fa-comment-dots"></i>
                    Live Chat</a></li>
                <!-- list unstyled -->
              </ul>
              <!-- header contact -->
            </div>
            <!--  -->
          </div>
        </nav>
        <!-- container -->
      </div>
      <!-- header-con -->
    </header>