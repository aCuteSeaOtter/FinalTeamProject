
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
  <link rel="stylesheet" href="/css/login.css" type="text/css">
  <!--<link rel="stylesheet" href="/css/realLogin.css" type="text/css">-->
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
  <div class="bg-outer-wrapper sub-banner-outer-wrapper float-left w-100 login">
          <!-- top bar inner con -->
        </div>
        <!-- container -->
      </div>
      <!-- top bar con -->
    </div>
    <div class="clearfix"></div>
	<jsp:include page="/WEB-INF/views/header.jsp" />
    
		
	<!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
         <div class="container">
        <div class="row">
          <div class="col-lg-7">
           <!-- <div class="sub-banner-inner-con padding-bottom">-->
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
              <!--</div>-->
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

  				<br/>
  				<br/>
  				<br/>
  				<br/>
 
 		<!--<div class="inner-content w-full max-w-md p-8 m-auto bg-white rounded-md md:p-6">-->
				
	<div class="mt-7 text-center">
	<div class="group"> 
		<form id="loginForm" action="/login/" method="post">
		<label class="block text-xs text-gray-500 duration-200 group-focus-within:text-lightScheme-primary mb-0.5 undefined">이메일</label>
		<br/>
		<input type="text" class="flex-1 mx-auto w-full px-2 py-2.5 text-black placeholder-gray-700 border border-gray-598 rounded-md 
		focus:outline-none focus:border-lightScheme-primary undefined"name="member_email" placeholder="Enter your emailaddress" required>
		</div> <!--group-->
						
		<div class="mt-4">
		<div class="group">
		<label class="block text-xs text-gray-500 duration-200 group-focus-within:text-lightScheme-primary mb-0.5 undefined">비밀번호</label>
		<br/>
		<input type="password" class="flex-1 w-full px-2 py-2.5 text-black placeholder-gray-700 border border-gray-600 rounded-md focus:outline-none focus:border-lightScheme-primary undefined"
		name="member_pass" placeholder="Enter your password" required>
		</div><!--group-->
		<a class="text-xs text-gray-500 hover:underline" href="/login/findpass" 
		style="color:#cccccc;font-size:11px;">비밀번호를 잊으셨나요?</a>
		<br/>
		<div class="manage-btn mt-8">
		<button onClick="checkPassword()" type="submit" name="submit" class="login_now relative w-full px-4 py-2 h-[48px] text-white bg-lightScheme-primary-focus rounded-md">로그인</button>
		</div><!--mt-8-->
					</div><!--mt-4-->
		</form> 
		</div><!--mt-7-->
						
		<p class="mt-4 text-xs text-center text-gray-500" style="font-size:11px;">회원이 아니신가요?
		 <a class="font-medium text-lightScheme-confirm hover:underline" href="/login/registForm" 
		 style="font-size: 11px;">회원가입</a>
		 </p>
		<!--			 <div class="relative m-2 text-center">
					 <div class="absolute top-1/2 translate-y-1/2 w-full bg-gray-700 h-[1px]">
						<span class="w-[100px] relative inline-block bg-white text-gray-500">or</span>
					 			</div>-absolute top-1/2
					 	<h4 class="text-xs text-center text-gray-500" style="font-size:11px; color=#cccccc;">SNS 간편 로그인</h4>
					<a id="kakao-login-btn" href="https://kauth.kakao.com/oauth/authorize?
					client_id=93f73b822defadc4b387046b57697917&redirect_uri=						
					http://localhost:8081/login/oauth2/code/kakao&response_type=code">
						<img src="/images/login/kakao_login_medium_narrow.png" alt="kakao_login" 
						style="cursor:pointer;"></a>-->
				<!--</div>--><!--relative m-2 text-center-->	
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
 <!-- <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>-->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  
  
	<script>
	function checkPassword(event) {
		        // 사용자가 입력한 비밀번호
		        var inputPassword = document.getElementById("password").value;
		        var errorMsg = document.getElementById("error-msg");

		        // 테스트용 비밀번호 (서버 검증으로 대체해야 함)
		       // var expectedPassword = "expectedPassword"; 

		        // 비밀번호 비교
		        if (inputPassword === expectedPassword) {
		            // 로그인 성공 시
		            alert('로그인 성공');
		            return true; // 폼 제출 계속
		        } else {
		            // 비밀번호 불일치 시 메시지 표시
		            errorMsg.style.display = "block";
		            return false; // 폼 제출 중지
		        }
		    }
</script>


</body>

</html>