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
  <link rel="stylesheet" href="/css/realLogin.css" type="text/css">
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
   
   <div class="clearfix"></div>
   <!-- HEADER SECTION -->
  <jsp:include page="/WEB-INF/views/header.jsp" />

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
              <h2>비밀번호찾기</h2>
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

   <div class="container wow bounceInUp" ><!--data-wow-duration="2s"-->
     
 <div class="row">
        <div class="col-12">
          <div class="login-box">
            <form action="loginForm" method="POST">
				<div class="col-lg-10 col-md-10 col-sm-12 col-12">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
                			
					<div class="col-12"><!--12-->
					<div class="login-group">
					 <label for="memberEmail">이메일</label>
				 <input type="email" style="width:250px; height:50px;" name="member_email" placeholder="Enter Your Email Address"
			id="email"required><span><a href="#">이메일인증</a></span>
		 </div>
		 <br/>
	
	 
	 </div> <!--class="col-12" -->
	
	<div class="col-12">
	<div class="login-group">
	    <label for="memberPass">새 비밀번호</label>
	<input type="password" style="width:250px;" class="form_style" placeholder="Enter Your passwords" name="member_pass"
	 id="fname"required>
	   </div>
	   </div>
	 <br/>
	   <div class="col-12">
	   <div class="login-group">
	       <label for="memberPass">비밀번호확인</label>
	   <input type="password" style="width:250px;" class="form_style" placeholder="Enter Your passwords" name="member_pass"
	    id="fname"required>
	      </div>
	      </div>
   	
		  <div class="col-6">
		     <div class="checkbtn">
		        <button onClick="check()" type="submit" name="submit"
		        class="check_now text-white text-decoration-none w-100">확인</button>

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
  
  <script>
	
	function check(){
		alert('성공');
		
		window.location.href = '/login/loginForm';
	}
	
  </script>
 
 </body>

</html>