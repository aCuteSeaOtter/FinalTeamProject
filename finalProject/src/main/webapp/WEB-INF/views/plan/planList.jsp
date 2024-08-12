<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>여행 | 일정 리스트</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="apple-touch-icon" sizes="57x57" href="/assets/images/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/assets/images/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/assets/images/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/assets/images/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/assets/images/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/assets/images/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/assets/images/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/assets/images/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="/assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/assets/images/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="/assets/images/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/assets/images/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <!-- Font Awesome 링크 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- 스타일 시트 링크 -->
  <link rel="stylesheet" href="/assets/css/animate.css">
  <!-- 최신 컴파일된 CSS -->
  <link rel="stylesheet" href="/assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="/css/planList.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/blog.css" type="text/css">
</head>

<body>
  <!-- 로더 -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>
  <!-- 외부 배경 래퍼 -->
  <div class="bg-outer-wrapper booking-wrapper float-left w-100">
    <!-- 상단 바 섹션 -->
    <div class="w-100 float-left top-bar-con main-box">
      <div class="container">
        <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
          <div class="left-con">
            <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i> help@traveltrek.com</a>
            <!-- left con -->
          </div>
          <div class="right-con"><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123 456</a>
            <!-- right con -->
          </div>
          <!-- 상단 바 내부 컨텐츠 -->
        </div>
        <!-- container -->
      </div>
      <!-- 상단 바 컨텐츠 -->
    </div>
    <div class="clearfix"></div>
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- 배너 섹션 -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1 img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>일정 리스트</h1>
              <p class="font-size-20">여행 일정 리스트</p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/index">홈</a></li>
                </ol>
              </div>
              <!-- sub banner inner con -->
            </div>
            <!-- col-lg-6 -->
          </div>
          <!-- row -->
        </div>
        <!-- container -->
      </div>
      <!-- 배너 컨텐츠 -->
    </section>
    <!-- 우리가 제공하는 서비스 섹션 -->
	<section class="float-left w-100 what-we-serve-con service-serve-con position-relative main-box padding-bottom">
	  <div class="container">
	    <div class="row">
		  <!-- 여행 정보 리스트 -->
	      <div class="col-xl-9 col-lg-8">
	        <ul class="travel-info-list">
	          <c:forEach items="${travelInfoList}" var="info">
	            <li class="travel-info-item" onclick="window.location.href='selectPlan?info_id=${info.info_id}'">
	              <div class="travel-info-details">
	                <p><strong>장소:</strong> ${info.trip_place}</p>
	                <p><strong>스타일:</strong> ${info.style_tag}</p>
	                <p><strong>대상:</strong> ${info.who_tag}</p>
	              </div>
	              <div class="travel-info-hover">
	                <p>${info.info_name}</p> <!-- 부제 표시 -->
	              </div>
	            </li>
	          </c:forEach>
	        </ul>
	      </div>
		  <div class="sidebar sticky-sidebar col-xl-3 col-lg-4">
  			<!-- 사이드바 -->
  			<div class="theiaStickySidebar">
  	          <div class="widget widget-newsletter" data-aos="fade-up" data-aos-duration="700">
  	            <form id="widget-search-form-sidebar" class="form-inline" method="get" action="planList">
  	              <div class="input-group">
  	                <input type="text" aria-required="true" name="searchKeyword" class="form-control widget-search-form" placeholder="검색어 입력...">
  	                <div class="input-group-append">
  	                  <button type="submit" id="widget-widget-search-form-button" class="btn">
  	                    <i class="fa fa-search"></i>
  	                  </button>
  	                </div>
  	              </div>
  	            </form>
  	          </div>
  	        </div>
  	      </div>
	    </div>
	  </div>
	</section>


    <!-- 페이지네이션 링크 -->
    <div class="pagination">
      <!-- 이전 페이지 링크 -->
      <c:if test="${currentPage > 1}">
        <a href="?searchKeyword=${searchKeyword}&page=${currentPage - 1}">이전</a>
      </c:if>

      <!-- 페이지 번호 링크 -->
      <c:choose>
        <c:when test="${totalPages <= 10}">
          <!-- 페이지가 10페이지 이하인 경우 모두 표시 -->
          <c:forEach var="i" begin="1" end="${totalPages}">
            <a href="?searchKeyword=${searchKeyword}&page=${i}" 
               class="${i == currentPage ? 'active' : ''}">${i}</a>
          </c:forEach>
        </c:when>
        <c:otherwise>
          <!-- 페이지가 10페이지 초과인 경우 -->
          <c:if test="${currentPage > 4}">
            <a href="?searchKeyword=${searchKeyword}&page=1">1</a>
            <span>...</span>
          </c:if>

          <c:set var="startPage" value="${currentPage - 3}" />
          <c:set var="endPage" value="${currentPage + 3}" />
          
          <!-- startPage가 1보다 작으면 1로 설정 -->
          <c:if test="${startPage < 1}">
            <c:set var="startPage" value="1" />
          </c:if>
          
          <!-- endPage가 totalPages보다 크면 totalPages로 설정 -->
          <c:if test="${endPage > totalPages}">
            <c:set var="endPage" value="${totalPages}" />
          </c:if>

          <c:forEach var="i" begin="${startPage}" end="${endPage}">
            <c:if test="${i > 0 && i <= totalPages}">
              <a href="?searchKeyword=${searchKeyword}&page=${i}" 
                 class="${i == currentPage ? 'active' : ''}">${i}</a>
            </c:if>
          </c:forEach>

          <c:if test="${currentPage < totalPages - 3}">
            <span>...</span>
            <a href="?searchKeyword=${searchKeyword}&page=${totalPages}">${totalPages}</a>
          </c:if>
        </c:otherwise>
      </c:choose>

      <!-- 다음 페이지 링크 -->
      <c:if test="${currentPage < totalPages}">
        <a href="?searchKeyword=${searchKeyword}&page=${currentPage + 1}">다음</a>
      </c:if>
    </div>

    <jsp:include page="/WEB-INF/views/footer.jsp" />

    <!-- 상단으로 이동 버튼 -->
    <button id="back-to-top-btn" title="상단으로 이동"></button>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/popper.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/owl.carousel.js"></script>
    <script src="/assets/js/contact-form.js"></script>
    <script src="/assets/js/video-popup.js"></script>
    <script src="/assets/js/video-section.js"></script>
    <script src="/assets/js/jquery.validate.js"></script>
    <script src="/assets/js/wow.js"></script>
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/search.js"></script>
    
  </body>

</html>
