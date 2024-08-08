<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>Travel | magazineList </title>
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
  <link rel="stylesheet" href="/css/magazineList.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/blog.css" type="text/css">
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
  <div class="bg-outer-wrapper booking-wrapper float-left w-100">
    <!-- TOP BAR SECTION -->
    <div class="w-100 float-left top-bar-con main-box">
      <div class="container">
        <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
          <div class="left-con">
            <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i> help@traveltrek.com</a>
            <!-- left con -->
          </div>
          <div class="right-con"><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123
              456</a>
            <!-- right con -->
          </div>
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
      <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>매거진 리스트</h1>
              <p class="font-size-20">이건 또 언제 다 하냐
              </p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/index">Home</a></li>
                </ol>
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
    <!-- WHAT WE SERVE SECTION -->
	<section class="float-left w-100 what-we-serve-con service-serve-con position-relative main-box padding-bottom">
		<div class="container">
			<div class="row MagazineCotents">
				<div class="col-xl-9 col-lg-9">
					<ul class="magazineUl">
					  <c:forEach items="${magazineList}" var="magazine">
						<li>
						  <div class="magazine-image">
						    <img src="${magazine.artl_img}" alt="${magazine.artl_name}"/>
						  </div>
						  <div class="magazine-info">
						    <a href="${magazine.artl_link}">${magazine.artl_name}</a>
						    <p>${magazine.artl_local}</p>
						    <c:set var="magazineTag" value="${fn:split(magazine.artl_pri_tag, '#')}"/>
						    <div class="magazine-tags">
						      <c:forEach items="${magazineTag}" var="tag">
						        <span>#${tag}</span>
						      </c:forEach>
						    </div>
						  </div>
						  <div class="magazine-hover-title">${magazine.artl_title}</div> <!-- 부제 표시 -->
						</li>
					  </c:forEach>
					</ul>
				</div>
				<div class="sidebar sticky-sidebar col-xl-3">
                    <div class="theiaStickySidebar">
                        <div class="widget widget-newsletter" data-aos="fade-up" data-aos-duration="700">
							<form id="widget-search-form-sidebar" class="form-inline" method="get" action="magazineList">
							    <div class="input-group">
							        <input type="text" aria-required="true" name="searchKeyword" class="form-control widget-search-form" placeholder="Search for magazines...">
							        <div class="input-group-append">
							            <span class="input-group-btn">
							                <button type="submit" id="widget-widget-search-form-button" class="btn">
							                    <i class="fa fa-search"></i>
							                </button>
							            </span>
							        </div>
							    </div>
							</form>
                        </div>
						<div class="widget">
						    <div class="tabs">
						        <ul class="nav nav-tabs" id="tabs-posts" role="tablist" data-aos="fade-up" data-aos-duration="700">
						            <li class="nav-item">
						                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#popular" role="tab" aria-controls="popular" aria-selected="true">지역</a>
						            </li>
						            <li class="nav-item">
						                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#featured" role="tab" aria-controls="featured" aria-selected="false">태그</a>
						            </li>
						        </ul>
						        <div class="tab-content" id="tabs-posts-content" data-aos="fade-up" data-aos-duration="700">
						            <div class="tab-pane fade show active" id="popular" role="tabpanel">
						                <div class="post-thumbnail-list">
											<ul class="tag_list area_list js_one" id="areaList">
												<li id="all_area"><button type="button" class="btn"><span>전체</span></button></li>
												<li id="area1"><button type="button" class="btn"><span>서울</span></button></li>
												<li id="area2"><button type="button" class="btn"><span>부산</span></button></li>
												<li id="area3"><button type="button" class="btn"><span>대구</span></button></li>
												<li id="area4"><button type="button" class="btn"><span>인천</span></button></li>
												<li id="area5"><button type="button" class="btn"><span>광주</span></button></li>
												<li id="area6"><button type="button" class="btn"><span>대전</span></button></li>
												<li id="area7"><button type="button" class="btn"><span>울산</span></button></li>
												<li id="area8"><button type="button" class="btn"><span>세종</span></button></li>
												<li id="area9"><button type="button" class="btn"><span>경기</span></button></li>
												<li id="area10"><button type="button" class="btn"><span>강원</span></button></li>
												<li id="area11"><button type="button" class="btn"><span>충북</span></button></li>
												<li id="area12"><button type="button" class="btn"><span>충남</span></button></li>
												<li id="area13"><button type="button" class="btn"><span>경북</span></button></li>
												<li id="area14"><button type="button" class="btn"><span>경남</span></button></li>
												<li id="area15"><button type="button" class="btn"><span>전북</span></button></li>
												<li id="area16"><button type="button" class="btn"><span>전남</span></button></li>
												<li id="area17"><button type="button" class="btn"><span>제주</span></button></li>
											</ul>
						                </div>
						            </div>
									<div class="tab-pane fade" id="featured" role="tabpanel">
                                        <div class="post-thumbnail-list">
											<div class="post-thumbnail-list">
												<ul class="tag_list js_one" id="tagList">
													<li id="all_tag"><button type="button" class="btn"><span>전체</span></button></li>
													<li id="tag1"><button type="button" class="btn"><span>자연</span></button></li>
													<li id="tag2"><button type="button" class="btn"><span>추천</span></button></li>
													<li id="tag3"><button type="button" class="btn"><span>여행</span></button></li>
													<li id="tag4"><button type="button" class="btn"><span>스파</span></button></li>
													<li id="tag5"><button type="button" class="btn"><span>건강</span></button></li>
													<li id="tag6"><button type="button" class="btn"><span>관광</span></button></li>
													<li id="tag7"><button type="button" class="btn"><span>풍경</span></button></li>
													<li id="tag8"><button type="button" class="btn"><span>바다</span></button></li>
													<li id="tag9"><button type="button" class="btn"><span>호수</span></button></li>
													<li id="tag10"><button type="button" class="btn"><span>감성</span></button></li>
												</ul>
							                </div>
                                        </div>
                                    </div>
						        </div>
						    </div>
						</div>
                    </div>
                </div>
			</div>
		</div>
	  <!-- what we serve con -->
	</section>
	
	<!-- 페이지네이션 링크 -->
	<div class="pagination">
	    <!-- 이전 페이지 링크 -->
	    <c:if test="${currentPage > 1}">
	        <a href="?searchKeyword=${searchKeyword}&page=${currentPage - 1}">Previous</a>
	    </c:if>

	    <!-- 페이지 번호 링크 -->
	    <c:choose>
	        <c:when test="${totalPages <= 10}">
	            <!-- 페이지가 10페이지 이하인 경우 모두 표시 -->
	            <c:forEach var="i" begin="1" end="${totalPages}">
	                <a href="?searchKeyword=${searchKeyword}&page=${i}" 
	                   class="${i == currentPage ? 'active' : ''}">${i}</a>
	            </c:forEach>
	        </c:when>
	        <c:otherwise>
	            <!-- 페이지가 10페이지 초과인 경우 -->
	            <c:if test="${currentPage > 4}">
	                <a href="?searchKeyword=${searchKeyword}&page=1">1</a>
	                <span>...</span>
	            </c:if>

	            <c:set var="startPage" value="${currentPage - 3}" />
	            <c:set var="endPage" value="${currentPage + 3}" />
	            
	            <!-- startPage가 1보다 작으면 1로 설정 -->
	            <c:if test="${startPage < 1}">
	                <c:set var="startPage" value="1" />
	            </c:if>
	            
	            <!-- endPage가 totalPages보다 크면 totalPages로 설정 -->
	            <c:if test="${endPage > totalPages}">
	                <c:set var="endPage" value="${totalPages}" />
	            </c:if>

	            <c:forEach var="i" begin="${startPage}" end="${endPage}">
	                <c:if test="${i > 0 && i <= totalPages}">
	                    <a href="?searchKeyword=${searchKeyword}&page=${i}" 
	                       class="${i == currentPage ? 'active' : ''}">${i}</a>
	                </c:if>
	            </c:forEach>

	            <c:if test="${currentPage < totalPages - 3}">
	                <span>...</span>
	                <a href="?searchKeyword=${searchKeyword}&page=${totalPages}">${totalPages}</a>
	            </c:if>
	        </c:otherwise>
	    </c:choose>

	    <!-- 다음 페이지 링크 -->
	    <c:if test="${currentPage < totalPages}">
	        <a href="?searchKeyword=${searchKeyword}&page=${currentPage + 1}">Next</a>
	    </c:if>
	</div>


  <jsp:include page="/WEB-INF/views/footer.jsp" />

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
  <script src="/js/magazine.js"></script>
  
</body>

</html>