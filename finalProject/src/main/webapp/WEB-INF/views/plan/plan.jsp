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
    <header class="w-100 flaot-left header-con main-box position-relative">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="index">
            <figure class="mb-0">
              <img src="../assets/images/logo-icon.png" alt="logo-icon">
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
                <a class="nav-link p-0" href="index">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="destinations">Destination</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdown3" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                  <a class="dropdown-item" href="booking">Booking</a>
                  <a class="dropdown-item" href="faq">Faq</a>
                  <a class="dropdown-item" href="contact">Contact</a>
                  <a class="dropdown-item" href="team">Team</a>
                  <a class="dropdown-item" href="service">Service</a>
                  <a class="dropdown-item" href="testimonial">Testimonial</a>

                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle p-0" href="blog" id="navbarDropdown4" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
                  <a class="dropdown-item" href="blog">Blog</a>
                  <a class="dropdown-item" href="load-more">Load More</a>
                  <a class="dropdown-item" href="single-blog">Single Blog</a>
                  <a class="dropdown-item" href="one-column">One Column</a>
                  <a class="dropdown-item" href="two-column">Two Column</a>
                  <a class="dropdown-item" href="three-column">Three Column</a>
                  <a class="dropdown-item" href="three-colum-sidbar">Three Column Sidbar</a>
                  <a class="dropdown-item" href="four-column">Four Column</a>
                  <a class="dropdown-item" href="six-colum-full-wide">Six Column</a>
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
  <section class="float-left w-100 position-relative main-box footer-con">
    <img alt="vector" class="vector8 img-fluid position-absolute" src="../assets/images/vector8.png">
    <div class="container">
      <div class="partner-con">
        <ul class="mb-0 list-unstyled d-flex align-items-center justify-content-between">
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-1.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-2.png" alt="icon">
            </figure>
          </li>
          <li class="img-mb">
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-3.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-4.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-5.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="../assets/images/partner-logo-6.png" alt="icon">
            </figure>
          </li>
        </ul>
        <!-- partner con -->
      </div>
      <div class="middle-portion">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 footer-logo-con">
            <a href="index">
              <figure class="footer-logo">
                <img src="../assets/images/footer-logo.png" class="img-fluid" alt="">
              </figure>
            </a>
            <p class="text-size-16 footer-text">Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod
              tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.</p>
            <figure class="mb-0 payment-icon">
              <img src="../assets/images/payment-card.png" class="img-fluid" alt="">
            </figure>
          </div>
          <div class="col-lg-1 col-md-1 col-sm-6 col-12 d-lg-block d-none">

          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links">
              <h4 class="heading">Quick Links</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="index" class="text-size-16 text text-decoration-none">Home</a></li>
                <li><a href="service" class="text-size-16 text text-decoration-none">Services</a></li>
                <li><a href="about" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="blog" class="text-size-16 text text-decoration-none">Latest News</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none">Terms & Conditions</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none mb-0">Privacy Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links var1">
              <h4 class="heading">Support</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="#" class="text-size-16 text text-decoration-none">Support</a></li>
                <li><a href="contact" class="text-size-16 text text-decoration-none">Contact Us</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none">Knowledge Base</a></li>
                <li><a href="about" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="faq" class="text-size-16 text text-decoration-none">FAQ</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none mb-0">Partnerships</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12 d-sm-block">
            <div class="icon">
              <h4 class="heading">Get in Touch</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li class="text-size-16 text"><span class="d-inline-block">Email:</span> <a
                    href="mailto:info@traveltrek.com"
                    class="mb-0 text text-decoration-nonetext-size-16">info@traveltrek.com</a></li>
                <li class="text-size-16 text"><span class="d-inline-block">Phone:</span> <a href="tel:+12345678900"
                    class="mb-0 text text-decoration-nonetext-size-16">+1 234 567 89 0 0</a></li>
                <li class="text-size-16 text1"><span class="d-inline-block">Fax:</span> <a href="tel:+1(987)65432199"
                    class="mb-0 text text-decoration-nonetext-size-16">+1 ( 987 ) 654 321 9 9</a></li>
                <li class="social-icons">
                  <div class="circle"><a href="https://www.facebook.com/login/"><i
                        class="fa-brands fa-square-facebook"></i></a></div>
                  <div class="circle"><a href="https://twitter.com/i/flow/login"><i
                        class="fa-brands fa-square-x-twitter"></i></a></div>
                  <div class="circle"><a href="https://www.linkedin.com/login"><i class="fa-brands fa-linkedin"></i></a>
                  </div>
                  <div class="circle"><a href="https://www.pinterest.com/"><i
                        class="fa-brands fa-square-pinterest"></i></a></div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright-con">
        <div class="row">
          <div class="col-12">
            <p class="text-size-16">Copyright Â©2024 TravelTrek.com All Rights Reserved
            </p>
          </div>
        </div>
        <!-- copyright con -->
      </div>
      <!-- container -->
    </div>
    <!-- footer con -->
  </section>

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