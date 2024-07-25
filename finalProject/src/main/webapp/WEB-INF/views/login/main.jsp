<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="zxx">

<head> 
  <title>Travel | 메인화면 </title>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
  </head>

<body onload="displayUserInfo()">
  <!-- LOADER -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>
  <!-- OUTER BG WRAPPER -->
  <div class="bg-outer-wrapper float-left w-100">
    <!-- TOP BAR SECTION -->
    <div class="w-100 float-left top-bar-con main-box">
      <div class="container">
        <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
         <div class="left-con">
			HOTSPOT
          </div>	<!-- left con -->
 <div class="right-con">
	070-0000-0000
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
            <!--<img src="/assets/images/logo-icon.png" alt="logo-icon">-->  
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
			  <li class="nav-item">
			  <a class="nav-link p-0" href="loginForm">로그인</a>
			   </li>
			 	   
			<li class="nav-item" style="display: inline-block;">
			<a class="nav-link p-0" href="registForm">가입하기</a>
			</li>
        <li><i class="fa-solid fa-user" style="font-size:30px; margin-right:100px;"></i></li>    
		    </div>	
              </li>
            </ul>
          
          </div>
        </nav>
        <!-- container -->
      </div>
      <!-- header-con -->
	  <section class="float-left w-100 travel-tour-con position-relative">
	     <div class="color-overlay position-relative padding-top padding-bottom main-box">
	       <div class="container wow bounceInUp" data-wow-duration="2s">
	          <div class="heading-content text-center position-relative">
	          
	           <h3 class="animated-text">어디로 여행을 떠나시나요?</h3>
	  	  <br/>
	  	  <input type="text" class="input-field" placeholder="검색어를 입력하세요" onkeypress="handleKeyPress(event)">
	  	  <i class="icon fas fa-search" onClick="goToNextPage()"></i>
	         </div>
			 

			 
			 
			 
<!--
	  
	  <div class="container">
	        <ul class="travel-list">
	            <li>
	                <img src="/images/login/jeju.jpg" alt="제주">
	              </li>
				  <span>
					</span>
				  <li>
					 <img src="/images/login/jeju2.jpg" alt="제주">
	     		</li>
				
				<li>
				 <img src="/images/login/jeju3.jpg" alt="제주">
			  </li>
			  
	            <li>
	               <img src="/images/login/seoul.jpg" alt="서울">
	           </li>
			   <li>
			      <img src="/images/login/seoul2.jpg" alt="서울">
			         </li>
					 
			 <li>
			  <img src="/images/login/seoul3.jpg" alt="서울">
     		  </li>
			  
			  <li>
			  	 <img src="/images/login/seoul4.jpg" alt="서울">
			  </li>
	            <li>
	                <img src="/images/login/busan.jpg" alt="부산">
	              </li>
				  <li>
				 <img src="/images/login/busan2.jpg" alt="부산">
				</li>
				<li>
				<img src="/images/login/busan3.jpg" alt="부산">
				</li>
				<li>
				 <img src="/images/login/kyeongju.jpg" alt="경주">
				</li>
				<li>
	             <img src="/images/login/gyeongju.jpg" alt="경주">
	            </li>
				<li>
				<img src="/images/login/gyeongju2.jpg" alt="경주">
			 	</li>
			<li>
			<img src="/images/login/gyeongju2.jpg" alt="경주">
			</li>
			<li>
			<img src="/images/login/busan.jpg" alt="부산">
			</li>
			<li>
			<img src="/images/login/busan2.jpg" alt="부산">
			</li>
			<li>
			<img src="/images/login/busan3.jpg" alt="부산">
			</li>		
			<li>
					<img src="/images/login/busan3.jpg" alt="부산">
					</li>		
					<li>
					<img src="/images/login/sokcho.jpg" alt="부산">
					</li>		
					<li>
					<img src="/images/login/sokcho2.jpg" alt="부산">
					</li>		
						
					<li>
					<img src="/images/login/sokcho3.jpg" alt="부산">
					</li>						
			  </ul>
	    </div>
	  </section>-->
    </header>
    <!-- BANNER SECTION -->

   
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