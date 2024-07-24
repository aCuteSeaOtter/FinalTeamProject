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
          <!--<div class="left-con">
            <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i> help@traveltrek.com</a>
            
          </div>-->		<!-- left con -->
        <!--  <div class="right-con"><a href="loginForm">로그인</a>-->
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
		<!-- <li class="nav-item">
			 	<a class="nav-link p-0" href="#"> ${sessionScope.mem.member_email}님 로그인중</a>
		 </li>-->
		
	 <li class="nav-item dropdown">
		               <a class="nav-link dropdown-toggle p-0" href="#" id="navbarDropdown4" role="button"
		                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${sessionScope.mem.member_nickname}님 로그인중</a>
		               <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
		                 <a class="dropdown-item" href="mypage">마이페이지</a>
		                 <a class="dropdown-item" href="reservation">예약내역</a>
		                 <a class="dropdown-item" href="index">로그아웃</a>
		     <!--       <a class="dropdown-item" href="one-column">One Column</a>
		                 <a class="dropdown-item" href="two-column">Two Column</a>
		                 <a class="dropdown-item" href="three-column">Three Column</a>
		                 <a class="dropdown-item" href="three-colum-sidbar">Three Column Sidbar</a>
		                 <a class="dropdown-item" href="four-column">Four Column</a>
		                 <a class="dropdown-item" href="six-colum-full-wide">Six Column</a>-->
		               </div>
		             </li> 
		<!--			 <div class="header-contact">
					   <ul class="list-unstyled mb-0">
					     <li><a href="#" class="nav-link dropdown-toggle p-0" id="navbarDropdown4"
							role="button" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">${sessionScope.mem.member_nickname}님 로그인중
					        </a></li>
					    list unstyled 
					   </ul>
					    header contact 
					 </div> -->
<!--					 <li class="nav-item dropdown">
					 <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
					   <a class="dropdown-item" href="mypage">마이페이지</a>
					   <a class="dropdown-item" href="reservation">예약내역</a>
					   <a class="dropdown-item" href="index">로그아웃</a>
					 </div>
					 </li>-->
     <!--          <li class="nav-item dropdown">
				<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
			   <a class="dropdown-item" href="mypage">마이페이지</a>
                  <a class="dropdown-item" href="reservation">예약내역</a>
                  <a class="dropdown-item" href="index">로그아웃</a>
              <a class="dropdown-item" href="one-column">One Column</a>
                  <a class="dropdown-item" href="two-column">Two Column</a>
                  <a class="dropdown-item" href="three-column">Three Column</a>
                  <a class="dropdown-item" href="three-colum-sidbar">Three Column Sidbar</a>
                  <a class="dropdown-item" href="four-column">Four Column</a>
                  <a class="dropdown-item" href="six-colum-full-wide">Six Column</a>-->
                </div>	
              </li>
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
	
	
		
		<!--<div class="tab">
			<ul class="inline-flex text-center">
				    <button class="tablinks" onclick="openTab(event, 'tab1')" id="defaultOpen">지역</button>

			<button class="tablinks" onclick="openTab(event, 'tab2')">명소</button>
		    

		
			</ul>
		</div>--><!--tab-->
	<span></span>s
		
	     <div class="tab-content" id="myTabContent1">
          <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="deal-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>
                    JEJU,KOREA</span>
                  <h6><a href="destinations">JejuIsland</a></h6>
                  <img class="img-fluid" alt="image" src="https://cdn.myro.co.kr/prod/image/city/Jeju.jpg">
                   <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"> </span>
                   
                  </div>
				  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        </span>
                   </span>
              <!--      <div class="grey-btn d-inline-block">
                      <a href="reservation" class="d-inline-block">View Availability</a>
                    </div>-->

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>SEOUL,KOREA</span>
                  <h6><a href="destinations">Seoul–LTower</a></h6>
                  <img class="img-fluid" alt="image" src="https://cdn.myro.co.kr/prod/image/city/Seoul.jpg">
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
					BUSAN,KOREA</span>
                  <h6><a href="destinations">Busan,Haeundae</a></h6>
                  <img class="img-fluid" alt="image" src="https://cdn.myro.co.kr/prod/image/city/Busan.jpg">
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
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="popular-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="recommend-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="price-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
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
	
	
	document.addEventListener("DOMContentLoaded", function() {
	       // JavaScript에서 세션에서 사용자 이름 가져오기
	       let memberVO = '<%= session.getAttribute("mem")%>';
		   
	       // 사용자 이름이 존재할 경우 링크에 텍스트 채워넣기
	       if (username) {
			// let username=mem.memberName; // MemberVO 객체에서 이름 필드 가져오기
	           let loginStatusElement = document.getElementById("loginStatus");
	           loginStatusElement.textContent = memberVO.member_email + "님 로그인 중";
	           loginStatusElement.setAttribute("data-toggle", "dropdown"); // 드롭다운 토글 설정
	           loginStatusElement.setAttribute("aria-haspopup", "true"); // 드롭다운 메뉴로 인식하도록 설정
	           loginStatusElement.setAttribute("aria-expanded", "false"); // 드롭다운 메뉴가 닫혀있음을 설정
	       } else {
	           // 사용자 이름이 없을 경우 로그인 링크를 설정
	           loginStatusElement.textContent = "로그인";
	           loginStatusElement.setAttribute("href", "loginForm"); // 로그인 폼 페이지로 이동하는 링크 설정
	       }
	   });
	
  </script>
  
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
	
  </body>

</html>