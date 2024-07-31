<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
	<link rel="stylesheet" href="/css/calendar.css" type="text/css">
	<link rel="stylesheet" href="/css/custom.css" type="text/css">
	 <link rel="stylesheet" href="/css/realLogin.css" type="text/css">
	 <link rel="stylesheet" href="/css/login.css" type="text/css">
<!-- HEADER SECTION -->
    <header id="header" class="w-100 flaot-left header-con main-box position-relative">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="/login/main">
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
	                <a class="nav-link p-0" href="/calendar/calendar">일정 만들기</a>
	            </li>
				<li class="nav-item">
	                <a class="nav-link p-0" href="/review/reviewList">여행후기</a>
	            </li>
				<li class="nav-item">
	                <a class="nav-link p-0" href="/login/main">매거진</a>
	            </li>

				<li class="nav-item">
				<a class="nav-link p-0"> ${sessionScope.mem.member_nickname}님 로그인중</a>
		<div class="dropdown-menu" id="dropdownMenu" aria-labelledby="navbarDropdown4">
			<a class="dropdown-item" href="/login/mypage">마이페이지</a>
			<a class="dropdown-item" href="/review/review">후기내역</a>
			 <a class="dropdown-item" href="/login/main">로그아웃</a>
				</div>
			</li>
            </ul>
            <div class="header-contact">
              <ul class="list-unstyled mb-0">
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

	<button id="back-to-top-btn" title="Back to Top"></button>
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/popper.min.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/owl.carousel.js"></script>
	<script src="/assets/js/contact-form.js"></script>
	<script src="/assets/js/video-popup.js"></script>
	<script src="/assets/js/video-section.js"></script>
	<script src="/assets/js/jquery.validate.js"></script>
	<script src="/assets/js/wow.js"></script>
	<script src="/assets/js/counter.js"></script>
	<script src="/assets/js/custom.js"></script>
	<script src="/assets/js/search.js"></script> 
	 
	<script> 
	    document.addEventListener("DOMContentLoaded", function() {
	        const dropdownToggle = document.getElementById("navbarDropdown4");
	        const dropdownMenu = document.getElementById("dropdownMenu");

	        // 드롭다운 메뉴 토글
	        dropdownToggle.addEventListener("click", function(event) {
	            event.preventDefault(); // 링크 기본 동작 방지
	            dropdownMenu.classList.toggle("show"); // 'show' 클래스를 추가/제거하여 드롭다운 메뉴를 토글
	        });

	        // 드롭다운 외부 클릭 시 닫기
	        document.addEventListener("click", function(event) {
	            if (!dropdownToggle.contains(event.target) && !dropdownMenu.contains(event.target)) {
	                dropdownMenu.classList.remove("show"); // 드롭다운 메뉴 숨기기
	            }
	        });
	    });
	</script>