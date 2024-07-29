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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="/assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="/css/calendar.css" type="text/css">
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
	        
			<div class="wrapper">
			
		    	<div class="left">
		    		<div class="body">
		    			<div class="margin-bottom title">여행정보 등록</div>
		    			<input type="text" class="form-control planName" placeholder="일정명을 입력하세요."/>
		    			
		    			<div class="margin-bottom">지역 선택</div>
		    			<select class="form-select sido" name="sido">
		    				<option value="전체">전체</option>
		    				<option value="서울">서울</option>
		    				<option value="부산">부산</option>
		    				<option value="인천">인천</option>
		    				<option value="대구">대구</option>
		    				<option value="광주">광주</option>
		    				<option value="대전">대전</option>
		    				<option value="울산">울산</option>
		    				<option value="세종">세종</option>
		    			</select>
		    			<select class="form-select city" name="city">
		    				<option value="전체">전체</option>
		    				<option value="서울">서울</option>
		    				<option value="부산">부산</option>
		    				<option value="인천">인천</option>
		    				<option value="대구">대구</option>
		    				<option value="광주">광주</option>
		    				<option value="대전">대전</option>
		    				<option value="울산">울산</option>
		    				<option value="세종">세종</option>
		    			</select>
		    		</div>
		    	</div>
		        <div class="left">
		            <div class="body">
		
		                <header>
		                    <div class="nav">
		                        <div id="prev" class="meterial-icons"><img class="arrowIcon" src="/images/calendar/left.png"></div>
		                        <p class="current-date"></p>
		                        <div id="next" class="meterial-icons"><img class="arrowIcon" src="/images/calendar/right.png"></div>
		                    </div>
		                </header>
		    
		                <div class="calendar">
		                    <ul class="weeks">
		                        <li>일</li>
		                        <li>월</li>
		                        <li>화</li>
		                        <li>수</li>
		                        <li>목</li>
		                        <li>금</li>
		                        <li>토</li> 
		                    </ul>   <!-- weeks -->
			    			<form action="/calendar/plan" method="post">
			                    <ul class="days">
			                        
			                    </ul>   <!-- days --> 
			                    <input type="hidden" class="dates" name="dates"/>
				                <input type="button" class="delBtn" value="취소하기"/>
				                <input type="submit" class="selBtn" value="선택하기"/>
			                </form>
		                </div>  <!-- calendar -->
			                
		            </div>  <!-- body -->
		        </div>  <!-- left -->
		        
		    </div>
 
      <!-- 컨테이너 -->
    </div>
    <!-- 여행 정보 -->
  </section>
  <jsp:include page="/WEB-INF/views/footer.jsp" />
  <!-- 상단으로 이동 버튼 -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=HfsADugOlL7V9xem6QOFx5WtuGp7oNzpa9QxyY7Y"></script>

  
  <script src="/assets/js/popper.min.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="/assets/js/owl.carousel.js"></script>
  <script src="/assets/js/contact-form.js"></script>
  <script src="/assets/js/video-popup.js"></script>
  <script src="/assets/js/video-section.js"></script>
  <script src="/assets/js/jquery.validate.js"></script>
  <script src="/assets/js/wow.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/search.js"></script>
  <script src="/js/calendar.js"></script>
  <script src="/js/tmap.js"></script>
  
  
  
  
</body>
</html>
