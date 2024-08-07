<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="${path}/css/calendar.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/realLogin.css" type="text/css">
</head>
<body>
<!-- HEADER SECTION -->
<header id="header" class="w-100 float-left header-con main-box position-relative">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="/">
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
                <a class="nav-link p-0" href="/">홈</a>
            </li>
            <li class="nav-item">
                <a class="nav-link p-0" href="/review/reviewList">여행후기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link p-0" href="/magazine/magazineList">매거진</a>
            </li>
        </ul>
        <div class="header-contact">
          <ul class="list-unstyled mb-0" id="header-session">
            <c:if test="${not empty sessionScope.member}">
                <li class="nav-item dropdown">
                    <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdown4" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       "${sessionScope.member.member_nickname}"님 로그인중
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
                        <a class="dropdown-item" href="/login/mypage">마이페이지</a>
                        <a class="dropdown-item" href="/question/questionList">문의사항</a>
						<a class="dropdown-item" href="/notice/noticeList">공지사항</a>
                        <a class="dropdown-item" href="${path}/login/logout">로그아웃</a>
                    </div>
                </li>
            </c:if>

            <c:if test="${empty sessionScope.member}">
                <li class="nav-item">
                    <a href="/login/loginForm" class="live-chat-btn d-inline-block">
                        로그인
                    </a>
                </li>
            </c:if>
          </ul>
          <!-- header contact -->
        </div>
      </div>
    </nav>
    <!-- container -->
  </div>
  <!-- header-con -->
</header>
<script src="${path}/assets/js/jquery.min.js"></script>
<script src="${path}/assets/js/popper.min.js"></script>
<script src="${path}/assets/js/bootstrap.min.js"></script>
<script src="${path}/assets/js/custom.js"></script>
<script src="${path}/js/header.js"></script>

</body>
</html>
