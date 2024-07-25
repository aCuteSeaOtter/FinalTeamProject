<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>

<!-- registForm-->
<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | 회원가입</title>
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
				<a class="nav-link p-0" href="index">홈</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link p-0" href="reservForm">예약</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link p-0" href="megazineForm">매거진</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link p-0" href="reviewForm">리뷰</a>
					</li>
					<li class="nav-item">
					<a class="nav-link p-0" href="csForm">고객센터</a>
					</li>
			  
     <!--         <li class="nav-item">
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
-->            </ul>
            <!--<div class="header-contact">
              <ul class="list-unstyled mb-0">
               <li><a href="contact" class="live-chat-btn d-inline-block"><i class="fa-solid fa-comment-dots"></i>
                    Live Chat</a></li>
                list unstyled
				/ul>-->
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
              <h1>회원가입</h1>
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
   
 <div class="row">
        <div class="col-12">
          <div class="join-box">
            <form action="regist" method="POST">
              <div class="row">
                <div class="col-lg-15 col-md-15 col-sm-20 col-20">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
                
				  <div class="row">
				<div class="col-12"><!--12-->
					  <div class="form-email">
					    <label>이메일</label>
						<input type="email" style="width:200px; height:30px;"name="MEMBER_EMAIL" placeholder="Enter Your Email Address"
					      id="email"required>
					  </div>
					</div>
					<div class="col-12">
					    <div class="form-pass">
						<label>비밀번호</label>
					   <input type="password" style="width:190px; height:30px;"class="form_style" placeholder="Enter Your passwords" name="MEMBER_PASS"
					   id="fname" minlength="6" required>
					     </div>
					  </div>
					  <div class="col-12"><!--6--><!--12-->
					    <div class="form-birth">
					  <label>생년월일</label>
					  						
					  	<select name="year" 	id="year" style="width:47px; height:30px;" required></select>년
					  	<select name="month"	id="month"style="width:30px; height:30px;"required></select>월
					  	<select name="day"		id="day"  style="width:30px; height:30px;"required></select>일
					  	</div>
					  	</div>
						<div class="col-12"><!--12-->
					 <div class="form-nickname">
					<label>닉네임</label>
					<input type="text" style="width:200px; height:30px;"class="mb-md-0 form_style" placeholder="Enter Your nickname"
					 name="MEMBER_NICKNAME"required>
					 </div>
					 </div>
					 <div class="col-12"><!--12-->
					<div class="form-gender">
					<label>성별</label>
											  				<label for="male">남</label>
											  			<input type="radio" style="width:20px; height:20px;"id="male" name="MEMBER_GENDER" value="M" required>
											  		<label for="female">여</label>
											  		<input type="radio" style="width:20px; height:20px;" id="female" name="MEMBER_GENDER" value="F"required>
											  			</div>
											  			</div>
					
														
														<!--<div class="col-lg-6 col-md-6 col-sm-12 col-12">-->
														        
														             <div class="col-12"><!--12-->
														                    <div class="form-agree">
															<!--				  <textarea class="form_style" style="margin:10px; padding:10px;"placeholder="이용약관" rows="5" name="msg">
																				이 서비스는 개인정보 보호를 위해 최선을 다하겠습니다. 사용자는 자신의 개인정보를
																			  안전하게 보호하기 위해 필요한 조치를 취해야 합니다.
																			  </textarea>-->
																			  <br/>
																			  <label for="agree_terms">
																			<a	href="agreeForm" target="_blank">이용약관</a></label>
																			<input type="checkbox"id="agree_terms" name="agree_terms" required> 
														                    </div> 
														                  </div>
				
																	  
																		  <div class="col-12"><!--12-->
																		                      <div class="join">
																		  						  <div class="join-button">
																		                          <button type="submit" name="submit"
																		                            class="join_now text-white text-decoration-none w-100">
																		                           가입하기</button>
																		  						 </div>
																		                        </div>
																		                      </div>
																	  </div><!-- row -->
		
				
				
                  </div>
                
              </div>
            </form>
          </div>
        </div>
  
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
  
  <script>
  	$(document).ready(function () {
  	let today = new Date();
  	let year = today.getFullYear();
  	console.log(year);

  	 //년도 selectbox 만들기
  	  for (i = 1940; i <= year; i++) {
  	    $('#year').append('<option value="' + i + '">' + i + '</option>');
  	  }

  	  //월 selectbox 만들기
  	  for (i = 1; i <= 12; i++) {
  	    $('#month').append('<option value="' + i + '">' + i + '</option>');
  	  }


  		  //일 selectbox 만들기
  		  for (i = 1; i <= 31; i++) {
  		    $('#day').append('<option value="' + i + '">' + i + '</option>');
  		  }
 
}); // end of ready function

		 
</script>

<script>
	
	document.addEventListener('DOMContentLoaded', function() {
	    document.querySelector('form').addEventListener('submit', function(event) {
	        // 비밀번호 입력란
	        var passwordInput = document.getElementById('fname');
	        var password = passwordInput.value;
	        
	        // 비밀번호의 길이 확인 (6자리 이상인지)
	        if (password.length < 6) {
	            alert('비밀번호는 최소 6자리 이상이어야 합니다.');
	            event.preventDefault(); // 폼 제출 막기
	        }
	    });
	});

	</script>
 
</body>

</html>