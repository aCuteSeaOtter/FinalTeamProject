<%@page import="com.fasterxml.jackson.databind.ser.std.DateSerializer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html> 
<html lang="zxx">
<head> 
  <title>Travel | Destinations </title>
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
  <!-- 스타일시트 링크 CSS -->
  <link rel="stylesheet" href="/assets/css/animate.css">
  <!-- 최신 컴파일된 CSS -->
  <link rel="stylesheet" href="/assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="/css/plan.css" type="text/css">
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
  <div class="bg-outer-wrapper sub-banner-outer-wrapper float-left w-100">
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
          <!-- 상단 바 내부 내용 -->
        </div>
        <!-- 컨테이너 -->
      </div>
      <!-- 상단 바 컨 -->
    </div>
    <div class="clearfix"></div>
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- 외부 배경 래퍼 -->
  </div>
  
  <!-- 주요 목적지 섹션 -->
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
	    <div class="container full-height-container">
	      <div class="row">
	        <div class="col-lg-4">
	        	<div>
		        	<c:if test="${not empty travelInfo}">
		        		<div class="title">${travelInfo.info_name}</div>
		        	</c:if>
	        	</div>
	        	<div class="selectedDate" name="dates"></div><img alt="calendar" class="calendarImg" src="/images/plan/calendar.png">
				<!-- <div class="btnSet">
					<input type="button" class="hbtn btn" value="숙소"></input>
		        	<input type="button" class="abtn btn" value="항공"></input>
				</div> -->
		        <hr/>
		         
		        
			    <div class="dayBlockWrapper">
			        
			        <!-- '장소추가' 생기는 구역 -->
			        
			    </div>
			    
			<!-- col -->
	        </div>
	        <input type="hidden" class="hiddenDate"/>
	        
	        
	        
	        
	        <!-- Tmap -->
	        <div class="col-lg-8 mapBlock">
	        <div>&nbsp&nbsp</div>
	          
	          <p id="result"></p>
	          	<div id="map_wrap" class="map_wrap">
	          		<div id="map_div"></div>
	          	</div>
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          <!-- col -->
	        </div>
	        <!-- row -->
      </div>
      <!-- 컨테이너 -->
    </div>
    <!-- 여행 정보 -->
  </section>
  <jsp:include page="/WEB-INF/views/footer.jsp" />
  <!-- 상단으로 이동 버튼 -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=<!-- HfsADugOlL7V9xem6QOFx5WtuGp7oNzpa9QxyY7Y -->"></script>

  
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
  <script src="/js/plan.js"></script>
  <script src="/js/tmap.js"></script>
  
  
  
  
</body>
</html>
