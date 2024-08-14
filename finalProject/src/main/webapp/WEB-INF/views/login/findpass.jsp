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
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box" style=" background: linear-gradient(to bottom, #b2f3de 0%, #ffffff 100%); color:white;">
       <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h2 class="findpass">비밀번호찾기</h2>
			  
			  <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
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
     
 <div class="center-content"><!--row-->
      <!-- <div class="col-12">-->
          <div class="login-box">
			<div class="my-1">
				
		        <form action="loginForm" method="POST">
					<div class="mt-4 group"> 
					<label class="block text-xs text-gray-500 duration-200 group-focus-within:text-lightScheme-primary mb-0.5">	
					이메일</label>
					<div class="findflex">
						<input type="email" id="email" class="flex-1 w-full px-2 py-2.5 text-black placeholder-gray-700 border border-gray-600 rounded-md focus:outline-none focus:border-lightScheme-primary"
						name="member_email" placeholder="이메일 주소" style="border-radius:4px; width:280px;height:40px;">
						<button class="processBtn" type="button" id="sendemail" style="width:60px;height:30px;">인증</button>
					</div><!--findflex-->
					<br/>
					<div id="emailCheck"></div>
					<input type="hidden" id="injeungbunho" value=""class="flex-1 w-full px-2 py-2.5 text-black placeholder-gray-700 border border-gray-600 rounded-md focus:outline-none focus:border-lightScheme-primary">
					<input type="password" id="randnum" class="flex-1 w-full px-2 py-2.5 text-black placeholder-gray-700 border border-gray-600 rounded-md focus:outline-none focus:border-lightScheme-primary"
					placeholder="인증번호" style="border-radius:4px; width:280px;height:40px;" value="${code}">
				<button type="submit" id="conFirmrandnum" class="conFirmBtn" style="width:60px;height:30px;">확인</button>
					</div><!--mt-4 group-->
				<!--  <p>${error}</p>-->
			  </form>
        <!-- </div>-->
        </div>
  	<p class="mt-4 text-sm">
	<a class="font-medium hover:underline"href="/login/loginForm">로그인바로가기</a> 
	</p>
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

<!--<script>
	
	processBtn.addEventListener("click",function(){
		const randnum = documnet.getElementById('randnum').value; // 사용자 입력한 인증번호
		const injeungbunho=document.getElementBtId('injeungbunho').value;//실제 발송된 인증번호
	
		if (injeungbunho == "") {
		        	 injeungCheckWarn.innerText = "인증을 진행해주세요.";
		        	 injeungCheckWarn.style.color = "red";
		        	 check_email = false;
			         } else {
			            if (randnum == "") {
			            	injeungCheckWarn.innerText = "인증번호를 입력해주세요.";
			            	injeungCheckWarn.style.color = "red";
			            	check_email = false;
			         } else {
			            if (randnum == injeungbunho) {
			               // 인증 번호가 맞을때 실행할거
			               injeungCheckWarn.innerText = "인증번호가 일치합니다.";
			               injeungCheckWarn.style.color = "black";
			               check_email = true;
			         } else {
			            // 인증 번호가 맞지 않을때 실행할거
			            injeungCheckWarn.innerText = "인증번호가 일치하지 않습니다.";
			            injeungCheckWarn.style.color = "red";
			            check_email = false;
			         }
		           }
		         }

	});
</script>-->
<script>
	document.getElementById('sendemail').addEventListener('click', function() {
	    const email = document.getElementById('email').value;
	    fetch('/api/auth/send-email', {
	        method: 'POST',
	        headers: {
	            'Content-Type': 'application/x-www-form-urlencoded'
	        },
	        body: new URLSearchParams({
	            email: email
	        })
	    }).then(response => response.text())
	      .then(data => {
	          //console.log(data);
			  // 이메일 전송 성공 알림
			  alert("인증 이메일이 전송되었습니다.");
		  }).catch(error=>{
			//error
			console.error('Error: ', error);
			alert("실패");
		  });
	});
</script>	

<script>

	document.getElementById('conFirmrandnum').addEventListener('click', function() {
	    const email = document.getElementById('email').value;
	    const code = document.getElementById('randnum').value;
	    fetch('/api/auth/verify-code', {
	        method: 'POST',
	        headers: {
	            'Content-Type': 'application/x-www-form-urlencoded'
	        },
	        body: new URLSearchParams({
	            email: email,
	            code: code
	        })
	    }).then(response => response.text())
	      .then(data => {
	          console.log(data);
	      });
	});

</script>

</body>

</html>