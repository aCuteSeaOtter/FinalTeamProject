<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>


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
			  ${sessionScope.mem.member_nickname}님 로그인중
			  </i>
			 </li>
				<div class="dropdown-menu" id="dropdownMenu" aria-labelledby="navbarDropdown4"
				style="position: absolute; right: 0; left: auto; display: none;">
				<a class="dropdown-item" href="/mypage">마이페이지</a>
			 <a class="dropdown-item" href="/reservation">예약내역</a>
			 <a class="dropdown-item" href="/main">로그아웃</a>
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
		
	     <div class="tab-content" id="myTabContent1">
          <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="deal-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>
                    JEJU</span>
                  <h6><a href="destinations">JejuIsland</a></h6>
                  <img class="img-fluid" alt="image" src="/images/login/jeju.jpg"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"> </span>
                   
                  </div>
				  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        </span>
                   </span>
                      </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>SEOUL</span>
                  <h6><a href="destinations">Seoul–LTower</a></h6>
                  <img class="img-fluid" alt="image" src="/images/login/seoul.jpg">
            <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> 
					  <span class="d-inline-block"> </span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                       </span>
                      </span>
                 </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>
					BUSAN</span>
                  <h6><a href="destinations">Busan</a></h6>
                  <img class="img-fluid" alt="image" src="data:image/jpeg;base64,/9j/
				  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">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"></span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                       </span>
                   </span>
                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>
                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> 
					SOKCHO,Gangwon-do
					</span>
                  <h6><a href="destinations">SOKCHO</a></h6>
                  <img class="img-fluid" alt="image" src="https://i.pinimg.com/originals/24/12/8e/24128ec8b24cac59982c6e2d4d258381.png">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"> </span> <span
                      class="d-inline-block"></span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        </span>
            </span>
                    <div >
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Gyeongju</span>
                  <h6><a href="destinations">Gyeongju,Gyeongsangbuk-do</a></h6>
                  <img class="img-fluid" alt="image" src="https://www.gyeongju.go.kr/upload/content/thumb/1105/1105_Woljeonggyo01_2019spring(42).JPG">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"> </span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                  
                      </span>
                   
                    </span>
                    <div>
                   
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
        </div>
        <!-- container -->
      </div>
      <!-- color overlay -->
    </div>
    <!-- travel tour con -->
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
  </body>

</html>