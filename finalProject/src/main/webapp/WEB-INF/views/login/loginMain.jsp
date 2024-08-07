<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>Travel | Home </title>
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
  <!--<link rel="stylesheet" href="/assets/css/custom.css" type="text/css">-->
  <link rel="stylesheet" href="/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/css/realLogin.css" type="text/css">
  <link rel="stylesheet" href="/css/login.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
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

   <div class="clearfix"></div>
    	<jsp:include page="/WEB-INF/views/header.jsp" />

  </div>

  <section class="float-left w-100 top-destinations-con position-relative padding-top padding-bottom main-box">
    <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector4.png">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector5.png">
	  
<!--	  <li class="nav-item">
	  		 	<a class="nav-link p-0" href="#"> ${sessionScope.mem.member_nickname}님 로그인중</a>
		</li>-->
	    
	  <div class="container top-destination-con1 wow bounceInUp" data-wow-duration="2s">
	    <div class="heading-title text-center">
	      <h3 style="font-weight: bold; color:black;">어디로 여행을 떠나시나요?</h3>
	  	<br/>
	  	<input type="text" class="input-field" placeholder="검색어를 입력하세요" onkeypress="handleKeyPress(event)">
	  	<i class="icon fas fa-search" onClick="goToNextPage()"></i>
	      <!-- heading title -->
	    </div>
	    <br/>
	    <br/>
	    <br/>
	    <br/>
	    <br/>
	    <br/>
	  	<div class="flex item-center justify-center w-full"
	  	id="wrapper-filter">
	    <ul class="inline-flex text-center"> 
	  <button class="button mx-3 px-4 duration-300 ease-in lg:mx-4 lg:py-2 text-lightScheme-primary 
	  border-b-2 border-lightScheme-primary">전체</button>
	  	</ul>
	    </div><!--id=wrapper filter-->
      <div class="owl-carousel">
        <div class="item">
          <div class="destination-box position-relative">
         
            <figure><img src="/assets/images/destination-img1.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
        I      <span class="d-block text-uppercase">
                
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i><span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
        
            <figure><img src="/assets/images/destination-img2.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
             
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i><span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
         
            <figure><img src="/assets/images/destination-img3.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
             
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> <span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <!--  -->
        <div class="item">
          <div class="destination-box position-relative">
            <figure><img src="/assets/images/destination-img1.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
             
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i><span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
          
            <figure><img src="/assets/images/destination-img2.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
          
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> <span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
           
            <figure><img src="/assets/images/destination-img3.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
          
              </span>
              <a href="destinations">
                <h4></h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i><span
                  class="d-inline-block review-span"></span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <!-- owl carousel -->
      </div>
      <!-- container -->
    </div>
    <!-- top destinations con -->
  </section>
   <jsp:include page="/WEB-INF/views/footer.jsp" />
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
  <script src="/assets/js/counter.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/search.js"></script>



  
  </body>

</html>