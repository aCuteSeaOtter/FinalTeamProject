<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head> 
  <title>Travel | 로그인성공_메인화면 </title>
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
  <link rel="stylesheet" href="/css/login.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
  
  </head>

<body onload="displayUserInfo()">
	<%@ page import="com.example.domain.LoginVO" %>
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
       <div class="right-con">070-0000-0000
            <!-- right con -->
          <!--</div>-->
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
			  <i class="fa-solid fa-user" id="dropdownIcon" 
			  style="font-size:20px; margin-right:100px; cursor:pointer; 
			  position:relative;"> 
			  ${mem.member_nickname}님 로그인중
			  </i>
			 </li>
				<div class="dropdown-menu" id="dropdownMenu" aria-labelledby="navbarDropdown4"
				style="position: absolute; right: 0; left: auto; display: none;">
				<a class="dropdown-item" href="/mypage">마이페이지</a>
			 <a class="dropdown-item" href="/reservation">예약내역</a>
			 <a class="dropdown-item" href="/main" id="logoutbtn">로그아웃</a>
				</div>	
	            </ul>
          </div>
        </nav>
        <!-- container -->
      </div> 
      <!-- header-con -->
    </header>
    <!-- BANNER SECTION -->

  <!-- TRAVEL TOUR AND PACKAGES -->
  <section class="float-left w-100 travel-tour-con position-relative">
    <div class="color-overlay position-relative padding-top padding-bottom main-box">
      <div class="container wow bounceInUp" data-wow-duration="2s">
         <div class="heading-content text-center position-relative">
         
          <h3 class="animated-text">어디로 여행을 떠나시나요?</h3>
		  <br/>
		  <input type="text" class="input-field" placeholder="검색어를 입력하세요" onkeypress="handleKeyPress(event)">
		  <i class="icon fas fa-search" onClick="goToNextPage()"></i>
        </div>
	<span></span>
	  </section>
 <!--Footer section-->


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
<script>
document.addEventListener("DOMContentLoaded", function() {
    var dropdownIcon = document.getElementById('dropdownIcon');
    var dropdownMenu = document.getElementById('dropdownMenu');

    dropdownIcon.addEventListener('click', function() {
        dropdownMenu.classList.toggle('show');
    });

    // 클릭 이벤트가 발생한 곳 외의 다른 곳을 클릭했을 때 드롭다운 메뉴가 사라지도록 처리
    document.addEventListener('click', function(event) {
        if (!dropdownIcon.contains(event.target)) {
            dropdownMenu.classList.remove('show');
        }
    });
});

</script>

<script>
	// 기본 탭 열기
	  document.getElementById("defaultOpen").click();

	  function openTab(evt, tabName) {


	      // 탭 버튼 활성화 상태 해제
	      tablinks = document.getElementsByClassName("tablinks");
	      for (i = 0; i < tablinks.length; i++) {
	          tablinks[i].className = tablinks[i].className.replace(" active", "");
	      }

	     
	      // 선택된 탭 버튼을 활성화 상태로 설정
	      evt.currentTarget.className += " active";
	  }
	</script>
	
	<script>
		document.addEventListener("DOMContentLoaded", function() {
		    var dropdownIcon = document.getElementById('dropdownIcon');
		    var dropdownMenu = document.getElementById('dropdownMenu');

		    dropdownIcon.addEventListener('click', function() {
		        dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
		    });

		    // 클릭 이벤트가 발생한 곳 외의 다른 곳을 클릭했을 때 드롭다운 메뉴가 사라지도록 처리
		    document.addEventListener('click', function(event) {
		        if (!dropdownIcon.contains(event.target) && !dropdownMenu.contains(event.target)) {
		            dropdownMenu.style.display = 'none';
		        }
		    });
		});
		</script>
	<!-- 카카오 로그아웃-->
	<script>
	function kakaoLogout(kakaoKey){
		Kakao.init(kakaokey); //초기화?
		Kakao.isInitialized();
		
		if(!Kakao.Auth.getAccessToken()){//토큰확인
			console.log("not logged in");
			return;
		}
	}
	Kakao.Auth.logout(function(){
		console.log(Kakao.Auth.getAccessToken());
	})
	</script>
	  

</body>

</html>