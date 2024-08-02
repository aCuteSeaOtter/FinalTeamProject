<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title> HOTSPOT | Home </title>
  <meta charset="UTF-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="apple-touch-icon" sizes="57x57" href="assets/images/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="assets/images/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="assets/images/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/images/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="assets/images/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="assets/images/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="assets/images/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="assets/images/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="assets/images/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/images/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <!-- Font Awesome link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- StyleSheet link CSS -->
  <link rel="stylesheet" href="assets/css/animate.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/superclasses.css" type="text/css">
<!-- <link rel="stylesheet" href="/css/custom.css" type="text/css">-->
  <link rel="stylesheet" href="css/realLogin.css" type="text/css">
  <link rel="stylesheet" href="css/login.css" type="text/css">
  <link rel="stylesheet" href="assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
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
  <div class="bg-outer-wrapper float-left w-100">
      </div>
    <div class="clearfix"></div>
    	<jsp:include page="/WEB-INF/views/header.jsp" />
      <!-- bg outer wrapper -->
  </div>
   <!-- NEWS AND ARTICLES SECTION -->
  <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
		<h3 style="font-weight: bold; color:black;">어디로 여행을 떠나시나요?</h3>
		<br/>
		<input type="text" class="input-field" placeholder="검색어를 입력하세요"onkeypress="handleKeyPress(event)">
		<i class="icon fas fa-search" onClick="goToNextPage()"></i>
	  </div>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <div class="flex item-center"id="wrapper-filter">
		
		<ul class="flex jusitfy-center">
		<li>
			<a href="#" id="navbarDropdownAll" role="button">전체</a>
	
		<li  class="nav-item dropdown">	
			 <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdownPlaces" role="button"
			  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">명소</a>
			  
			  <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		      </div>
		</li>
		</li>
		</ul>
		</div><!--id=wrapper filter-->
		
		
		<!--////////이미지///////////-->
<!--		<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-6">
          <div class="article-box position-relative">
            
			<figure><img class="img-fluid" src="assets/images/article-img1.jpg" alt="img"></figure>
            <div class="bottom-left"><span class="d-block text-white"></span>
              <a href="single-blog">
                <h6 class="text-white"> <br>
                  </h6>
              </a>
             
            </div> bottom left
            
          </div>article box
          
        </div>col
		
     </div> row      
	 
	 -->
	 </div>  <!-- container -->
    
	 <div class="row">
		<c:ForEach var="mainimage" items="${mainimageList}"> <!--mainimage에서 아이템을 mainimage라는 변수명으로 반복-->
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="article-box position-relative">
					<figure>
						<img class="img-fulid" src="${mainimage.file_path}/${mainimage.file_name}" alt="img">
					<!--DB에서 가져온 file_path와 file_name을 조합하여 이미지 표시-->
					</figure>
		<div class="bottom-left">
			<span class="d-block text-white">${mainimage.city_name}</span>
			<a href="single-blog?main_id=${mainimage.main_id}">
			<h6 class="text-white">
				${mainimage.city_name}			<!--도시이름출력-->
			</h6>
		</a> 
		</div><!--bottom-left-->
		</div> <!--article-box-->
		</div> <!--col-->
		</div>
		</c:ForEach>
		</div><!--row-->	
		
  </section> <!-- news and article con -->
  
  
    <!-- BACK TO TOP BUTTON -->
  
  <button id="back-to-top-btn" title="Back to Top"></button>
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/owl.carousel.js"></script>
  <script src="assets/js/contact-form.js"></script>
  <script src="assets/js/video-popup.js"></script>
  <script src="assets/js/video-section.js"></script>
  <script src="assets/js/jquery.validate.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/counter.js"></script>
  <script src="assets/js/custom.js"></script>
  <script src="assets/js/search.js"></script>



</body>
</html>