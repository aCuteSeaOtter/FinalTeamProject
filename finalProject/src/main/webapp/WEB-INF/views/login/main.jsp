<!DOCTYPE html>
<html lang="zxx">
	<%@page contentType="text/html; charset=UTF-8"%>

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
 <!-- <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">-->
 <link rel="stylesheet" href="/css/custom.css" type="text/css"> 
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
  <div class="bg-outer-wrapper float-left w-100">
    <div class="clearfix"></div> 
    <!-- HEADER SECTION -->
    <header class="w-100 flaot-left header-con main-box position-relative">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="main">
            <figure class="mb-0">
              <img src="/assets/images/logo-icon.png" alt="logo-icon">
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
                <a class="nav-link p-0" href="/main">일정만들기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="/plan/plan">여행후기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="#">매거진</a>
              </li>
			 </ul>
            <div class="header-contact">
              <ul class="list-unstyled mb-0">
                <li><a href="/loginForm" class="live-chat-btn d-inline-block">로그인</a></li>
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
    </div>

    <!-- bg outer wrapper -->
  </div>
  <section class="float-left w-100 top-destinations-con position-relative padding-top padding-bottom main-box">
    <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector4.png">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector5.png">
	  
	  
	  
	  
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
              <span class="d-block text-uppercase">
              </span>
              <a href="destinations.html">
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
       
            <figure><img src="/assets/images/destination-img2.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                  </span>
              <a href="destinations.html">
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
              <a href="destinations.html">
                <h4>
                  </h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i><span
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
              <a href="destinations.html">
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
              <a href="destinations.html">
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
              <a href="destinations.html">
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
  
  <!-- FOOTER SECTION -->
  <section class="float-left w-100 position-relative main-box footer-con">
    <img alt="vector" class="vector8 img-fluid position-absolute" src="/assets/images/vector8.png">
    <div class="container">
      <div class="partner-con">
        <ul class="mb-0 list-unstyled d-flex align-items-center justify-content-between">
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-1.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-2.png" alt="icon">
            </figure>
          </li>
          <li class="img-mb">
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-3.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-4.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-5.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="/assets/images/partner-logo-6.png" alt="icon">
            </figure>
          </li>
        </ul>
        <!-- partner con -->
      </div>
      <div class="middle-portion">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 footer-logo-con">
            <a href="index.html">
              <figure class="footer-logo">
                <img src="/assets/images/footer-logo.png" class="img-fluid" alt="">
              </figure>
            </a>
            <p class="text-size-16 footer-text">Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod
              tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.</p>
            <figure class="mb-0 payment-icon">
              <img src="/assets/images/payment-card.png" class="img-fluid" alt="">
            </figure>
          </div>
          <div class="col-lg-1 col-md-1 col-sm-6 col-12 d-lg-block d-none">

          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links">
              <h4 class="heading">Quick Links</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="index.html" class="text-size-16 text text-decoration-none">Home</a></li>
                <li><a href="service.html" class="text-size-16 text text-decoration-none">Services</a></li>
                <li><a href="about.html" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="blog.html" class="text-size-16 text text-decoration-none">Latest News</a></li>
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
                <li><a href="contact.html" class="text-size-16 text text-decoration-none">Contact Us</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none">Knowledge Base</a></li>
                <li><a href="about.html" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="faq.html" class="text-size-16 text text-decoration-none">FAQ</a></li>
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
            <p class="text-size-16">Copyright ©2024 TravelTrek.com All Rights Reserved
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
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>



   <script>
  	//클릭 이벤트 핸들러 함수
  	function goToNextPage(){
  		window.location.href='reservation';
  	}	
  	
  	// 엔터 키 이벤트 처리 함수
  	  function handleKeyPress(event) {
  	      // event.which와 event.keyCode는 오래된 브라우저에서 사용될 수 있습니다.
  	      var keycode = event.keyCode || event.which;
  	      if (keycode === 13) { // 엔터 키의 keycode는 13입니다.
  	          goToNextPage(); // 엔터 키가 눌리면 goToNextPage 함수 호출
  	      }
  	  }
  	
  </script>
</body>

</html>