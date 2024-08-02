<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">
<head>  
  <title>planPopup</title> 
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
  <!-- Font Awesome link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- StyleSheet link CSS -->
  <link rel="stylesheet" href="/assets/css/animate.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="/assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="/css/plan.css" type="text/css">
  <link rel="stylesheet" href="/css/planPopup.css" type="text/css">
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
    
    
    <!-- bg outer wrapper -->
  </div>
  <!-- TOP DESTINATIONS SECTION -->
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-5">
	        <div class="selectedLocal"><%= session.getAttribute("local") %></div> 
	        <div class="selectedDate2">
	        	<%= session.getAttribute("start_date") %> ~ <%= session.getAttribute("end_date") %>
	        </div>
	        <div class="search"><input type="text" class="searchBar" placeholder="검색어를 입력하세요"/><img class="searchPng" src="/images/plan/search.png"/></div><hr/>
	        
	        
		    <div class="scrollBox"> 
		    
		    <!-- 명소 출력 시작 -->
	        <c:forEach items="${attrList}" var="attr">
				<div class="divBlock">
		        	<div class="location">
		        		<img class="thumbnail" src="${attr.attr_img}"/>
		        		<div class="contentBox">
		        			<input type="hidden" class="attrId" value="${attr.attr_id}"/>
				        	<div class="localTitle">${attr.attr_name}</div>
				        	<div>${attr.attr_local} </div>
		        		</div>
				        <img class="selectBox" src="/images/plan/none_select.svg">
			        </div>
		        </div>
			</c:forEach>
		        <!-- 명소 출력 끝 -->
		        
	        </div>
	        
	          <!-- col -->
	        </div>
	        
	        
	        
	        
	        <div class="col-lg-7 selectedDiv">
		        <div>
		        	<div>
		        		<span class="dayNum2"></span> 
		        		<span class="date2"><%= session.getAttribute("start_date") %></span> 
		        		<input type="button" class="btn btn-secondary save-btn" value="저장"></input>
		        	</div> 
		        </div> 
	        	<div>
			        <div class="selectedCnt"><c:out value="${cnt}"/></div>
			        <div class="deleteAll">모든 항목 삭제</div>
	        	</div>
	        	
	        	
	        	<div class="selectedScrollBox">
	        	
			        <!-- 선택한 일정이 추가되는 영역 -->
			        <c:forEach items="${selectedAttrList}" var="attr" varStatus="status">
				        <div class="selectedItem">
					        <div class="selectedLocation">
					            <img class="selectedThumbnail" src="${attr.attr_img}"/>
					            <div class="selectedContentBox">
					                <input type="text" class="attr_id" value="${attr.attr_id}"/>
					                <div class="selectedLocalTitle">${attr.attr_name}</div>
					                <div>${attr.attr_local}</div>
					            </div>
					            <img class="deleteItem" src="../images/plan/trash.png">
					        </div>
					    </div>
				    </c:forEach>
				</div>
	          
	          
	          
	          <!-- col -->
	        </div>
	        
	        
          
	        
	        <!-- row -->
	      </div>
	      <!-- container -->
	    </div>
	    <!-- about travel con -->
	  </section>
  

  <!-- BACK TO TOP BUTTON -->
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
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/search.js"></script>
  <script src="/js/plan.js"></script>
  <script src="/js/planPopup.js"></script>
</body>

</html>