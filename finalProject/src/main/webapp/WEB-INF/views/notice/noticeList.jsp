<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>Travel | noticeList </title>
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
  <link rel="stylesheet" href="/css/noticeList.css" type="text/css">
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
      <div class="clearfix"></div>
        <jsp:include page="/WEB-INF/views/header.jsp" />

        <!-- BANNER SECTION -->
        <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
          <img alt="vector" class="vector1 img-fluid position-absolute" src="/assets/images/vector1.png">
          <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
            <div class="container">
              <div class="row">
                <div class="col-lg-7">
                  <div class="sub-banner-inner-con padding-bottom">
                    <h1>공지사항</h1>
                      <p class="font-size-20">여기는 공지사항</p>
                      <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                        <ol class="breadcrumb mb-0">
                          <li class="breadcrumb-item">
						    <a href="/index">Home</a>
						  </li>
                        </ol>
                      </div>
                  <!-- sub banner inner con -->
                  </div>
                <!-- col-lg-7 -->
                </div>
              <!-- row -->
              </div>
            <!-- container -->
            </div>
        <!-- banner con -->
        </section>
 	              
        <!-- NOTICE LIST SECTION -->
        <section class="float-left w-100 faq-con position-relative main-box padding-bottom">
          <div class="container wow bounceInUp" data-wow-duration="2s">
            <div class="heading-title text-center">
              <h2>공지사항</h2>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-12 col-sm-12 col-12 notice-column">
                <div class="accordian-section-inner position-relative">
                  <div class="accordian-inner">
                    <div id="secure_accordion1">
                      <c:forEach var="notice" items="${noticeList}" varStatus="status">
                        <c:if test="${status.index lt 5}">
                          <div class="accordion-card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                              <a href="#" class="btn btn-link toggle-content">
                                <h4>${notice.notice_title}</h4>
                              </a>
                              <div class="notice-date">
                                <i class="mb-0 calendar-ml fa-solid fa-calendar-days"></i>
                                   ${notice.notice_regdate}
                              </div>
                            </div>
                            <div class="card-body content-body" style="display: none;">
                              <p class="text-size-16 text-left mb-0">${notice.notice_content}</p>
                            </div>
                          </div>
                        </c:if>
                      </c:forEach>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-12 col-sm-12 col-12 notice-column">
                <div class="accordian-section-inner position-relative">
                  <div class="accordian-inner">
                    <div id="secure_accordion2">
                      <c:forEach var="notice" items="${noticeList}" varStatus="status">
                        <c:if test="${status.index ge 5}">
                          <div class="accordion-card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                              <a href="#" class="btn btn-link toggle-content">
                                <h4>${notice.notice_title}</h4>
                                <i class="fa-solid fa-angle-down"></i>
                              </a>
                              <div class="notice-date">
                                <i class="mb-0 calendar-ml fa-solid fa-calendar-days"></i>
                                   ${notice.notice_regdate}
                              </div>
                            </div>
                            <div class="card-body content-body" style="display: none;">
                              <p class="text-size-16 text-left mb-0">${notice.notice_content}</p>
                            </div>
                          </div>
                        </c:if>
                      </c:forEach>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <!-- row -->
          </div>
        <!-- container -->
        </section>
      </div>

	  <!-- 페이지네이션 링크 -->
	  	   <div class="pagination">
	  	       <!-- 이전 페이지 링크 -->
	  	       <c:if test="${currentPage > 1}">
	  	           <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${currentPage - 1}" class="pagination-button">Previous</a>
	  	       </c:if>

	  	       <!-- 페이지 번호 링크 -->
	  	       <c:choose>
	  	           <c:when test="${totalPages <= 10}">
	  	               <!-- 페이지가 10페이지 이하인 경우 모두 표시 -->
	  	               <c:forEach var="i" begin="1" end="${totalPages}">
	  	                   <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${i}" 
	  	                      class="${i == currentPage ? 'active' : ''}">${i}</a>
	  	               </c:forEach>
	  	           </c:when>
	  	           <c:otherwise>
	  	               <!-- 페이지가 10페이지 초과인 경우 -->
	  	               <c:if test="${currentPage > 4}">
	  	                   <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=1">1</a>
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
	  	                       <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${i}" 
	  	                          class="${i == currentPage ? 'active' : ''}">${i}</a>
	  	                   </c:if>
	  	               </c:forEach>

	  	               <c:if test="${currentPage < totalPages - 3}">
	  	                   <span>...</span>
	  	                   <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${totalPages}">${totalPages}</a>
	  	               </c:if>
	  	           </c:otherwise>
	  	       </c:choose>

	  	       <!-- 다음 페이지 링크 -->
	  	       <c:if test="${currentPage < totalPages}">
	  	           <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${currentPage + 1}" class="pagination-button">Next</a>
	  	       </c:if>
	  	   </div>
    <!-- FOOTER SECTION -->
    <jsp:include page="/WEB-INF/views/footer.jsp" />
    <!-- BACK TO TOP BUTTON -->
    <button id="back-to-top-btn" title="Back to Top"></button>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/popper.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
	<script src="/js/noticeList.js"></script>
</body>

</html>
