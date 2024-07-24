<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html> 
<html lang="zxx">
<head> 
  <title>Travel | Destinations </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="apple-touch-icon" sizes="57x57" href="../assets/images/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="../assets/images/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="../assets/images/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/images/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="../assets/images/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="../assets/images/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="../assets/images/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="../assets/images/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="../assets/images/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="../assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="../assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="../assets/images/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="../assets/images/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <!-- Font Awesome link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- StyleSheet link CSS -->
  <link rel="stylesheet" href="../assets/css/animate.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="../assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="../assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="../assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="../assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="../assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="../assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="../css/plan.css" type="text/css">
</head>

<body>
  <!-- LOADER -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>
  <!-- OUTER BG WRAPPER -->
  <div class="bg-outer-wrapper sub-banner-outer-wrapper float-left w-100">
    <!-- TOP BAR SECTION -->
    <div class="w-100 float-left top-bar-con main-box">
      <div class="container">
        <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
          <div class="left-con">
            <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i> help@traveltrek.com</a>
            <!-- left con -->
          </div>
          <div class="right-con"><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123
              456</a>
            <!-- right con -->
          </div>
          <!-- top bar inner con -->
        </div>
        <!-- container -->
      </div>
      <!-- top bar con -->
    </div>
    <div class="clearfix"></div>
	<!-- HEADER SECTION -->
	  <jsp:include page="/WEB-INF/views/header.jsp" />
    
    <!-- bg outer wrapper -->
  </div>
  <!-- TOP DESTINATIONS SECTION -->
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-4">
	        <c:if test="${not empty dates}">
		        <c:if test="${not empty lastDate}">
		        	<div style="margin-bottom: 10px"><c:out value="${dates[0]}"/>(수) ~ <c:out value="${lastDate}"/>(금)&nbsp&nbsp<img alt="calendar" class="calendarImg" src="../images/plan/calendar.png"></div>
				</c:if>
				
		        <input type="button" class="habtn btn" value="숙소"></input>
		        <input type="button" class="habtn btn" value="항공"></input><hr/>
			        
			    
		        <div class="dayBlockWrapper">
		        
			        <div class="dayBlock"> 
			        	<div> 
				        	<div>
				        		<span>DAY 1</span> 
				        		<c:forEach var="date" items="${dates}">
				        			<span>&nbsp&nbsp${date} 수</span> 
	        					</c:forEach>
				        		<input type="button" class="edit-btn btn" value="편집"></input>
				        	</div>
				        </div>
				        
		        		<div class="inputData">
		        		
		        			<!-- 선택한 일정이 추가되는 영역 -->
		        		
		        		</div>
				       
				        <input type="button" class="add-btn btn" value="장소 추가"></input>
			        </div>
		        	
		        	<!-- dayBlockWrapper -->
		        </div> 
	        </c:if>
	          <!-- col -->
	        </div>
	        
	        
	        
	        
	        <div class="col-lg-8 mapBlock">
	        <div>&nbsp&nbsp</div>
	          
	          <div id="map">
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb3a8076d2603f3df36081d8e29ae823"></script>
				<script>
			      var container = document.getElementById("map");
			      var options = {
			        center: new kakao.maps.LatLng(37.552811217, 126.93794821),
			        level: 3,
			      };
			
			      var map = new kakao.maps.Map(container, options);
			    </script>
	          </div>
	          
	          <!-- col -->
	        </div>
	        
	        
	        <!-- <div class="col-lg-3">
	          <input type="text" style="width: 100%"></input>
	          col
	        </div> -->
	        
	        <!-- row -->
	      </div>
	      <!-- container -->
	    </div>
	    <!-- about travel con -->
	  </section>
	  <!-- FOOTER SECTION -->
	    <jsp:include page="/WEB-INF/views/footer.jsp" />

  <!-- BACK TO TOP BUTTON -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  <script src="../assets/js/jquery.min.js"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/owl.carousel.js"></script>
  <script src="../assets/js/contact-form.js"></script>
  <script src="../assets/js/video-popup.js"></script>
  <script src="../assets/js/video-section.js"></script>
  <script src="../assets/js/jquery.validate.js"></script>
  <script src="../assets/js/wow.js"></script>
  <script src="../assets/js/custom.js"></script>
  <script src="../assets/js/search.js"></script>
  <script src="../js/plan.js"></script>
</body>

</html>