<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>
<!--loginForm-->

<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | Login </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-aweson/5.15.4/css/all.min.css">
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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            HOTSPOT
          </div>
          <div class="right-con">
             070-0000-0000 
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
                <a class="nav-link p-0" href="index">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="about">About Us</a>
              </li>
			  
			  <li class="nav-item">
			   <a class="nav-link p-0" href="join">join</a>
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
               <li><a href="registForm" class="live-chat-btn d-inline-block">
                    회원가입</a></li>
                <!-- list unstyled -->
              </ul>
              <!-- header contact -->
            </div>
           </div>
        </nav>
        <!-- container -->
      </div>
      <!-- header-con -->
    </header>
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>로그인</h1>
         <!--     <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed doeiusm tempor
                incididunt
                ut labore et dolore.
              </p>-->
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
               <!-- <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="index">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol> -->
              </div>
              <!-- sub banner inner con -->
            </div>
            <!-- col-lg-6 -->
          </div>
          <!-- row -->
        </div>
        <!-- container -->
      </div>

      <!-- banner con -->
    </section>
    <!-- bg outer wrapper -->
  </div>
  <!-- TALK TO US SECTION -->

  <!-- CONTACT FORM SECTION  -->
 <!-- <section class="float-left w-100 talk-width-our-team-con position-relative main-box padding-top padding-bottom">-->
  <!--<img alt="vector" class="vector11 img-fluid position-absolute wow bounceInUp" data-wow-duration="2s"
      src="/assets/images/vector11.png">
    <img alt="vector" class="vector9 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector9.png">-->
    <div class="container wow bounceInUp" ><!--data-wow-duration="2s"-->
   <!--  <div class="heading-title text-center">
        <h4 class="text-uppercase">Talk with our team</h4>
        <h2 class="">Any Question? Feel Free <br>
          to Contact
        </h2>
         heading title 
      </div>-->
     
 <div class="row">
        <div class="col-12">
          <div class="login-box">
            <form action="loginsuccess" method="POST">
			         
                <div class="col-lg-10 col-md-10 col-sm-12 col-12">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
                			
					<div class="col-12"><!--12-->
					<div class="login-group">
					 <label for="memberEmail">이메일</label>
				 <input type="email" style="width:250px; height:50px;" name="member_email" placeholder="Enter Your Email Address"
			id="email"required>
		 </div>
	</div>
	<div class="col-12">
	<div class="login-group">
	    <label for="memberPass">비밀번호</label>
	<input type="password" style="width:250px;" class="form_style" placeholder="Enter Your passwords" name="member_pass"
	 id="fname"required>
	   </div>
	</div>
<ul>
	<p><a href="findpass">비밀번호 찾기</a></p>	
	<p id="regist"><a href="registForm">회원가입</a></p>
</ul>

 <div class="col-6">
    <div class="manage-button">
	      <button type="submit" name="submit"
	      class="login_now text-white text-decoration-none w-100">로그인</button>
	</div>
	 </div>

	 <div class="col-6">
	    <div class="kakao-btn" onclick="kakaoLogin()">
	   	<a href="https://kauth.kakao.com/oauth/authorize?client_id=93f73b822defadc4b387046b57697917
		&redirect_uri=http://localhost:8081/login/oauth2/code/kakao&response_type=code"><img src="/assets/images/kakao_login_medium_narrow.png"></a>
	 </div>
	  </div>


  </div><!-- row -->
		
				
				
                  </div>
                

              </div>

			  <p>${error}</p>
			  </form>
          </div>
        </div>
  
    <!--</section>-->
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
  
  <!-- Kakao SDK -->
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  
  <script>
	
	function kakaoLogin() {
	$.ajax({
	 url:'/loginForm/getKakaoAuthUrl',
	 type:'post',
	 async: false,
	 dataType: 'text',
	 success: function (res) {
	   location.href = res;
	 }
	});
	}
	
	
	</script>
  
  
 </body>

</html>