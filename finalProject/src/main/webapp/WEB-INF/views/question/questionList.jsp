<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | QuestionList </title>
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
  <link rel="stylesheet" href="/css/questionList.css" type="text/css">
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
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>문의사항</h1>
              <p class="font-size-20">화끈한 문의를 작성해 보아요 🥵🥵<br>
									  ⬇️ 아래 링크 클릭</p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/question/questionWrite">⭐문의 작성하러 가기⭐</a></li>
                </ol>
              </div>
			  <div class="table-container">
				<table>
				      <tr>
				        <th>번호</th>
						<th>제목</th>
				        <th>작성자</th>
						<th>작성일</th>
						<th>답변 유무</th>
				      </tr>
					  <c:forEach var="question" items="${question}">
					  <tr>
			        	<td>${question.QUE_ID}</td>
						<td>
							<c:choose>
								<c:when test="${not empty question.QUE_SECRET}">
									<a href="checkSecretPassword?que_id=${question.QUE_ID}">비밀글입니다.</a>
								</c:when>
								<c:otherwise>
									<a href="selectQuestion?que_id=${question.QUE_ID}">${question.QUE_TITLE}</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td>${question.MEMBER_NICKNAME}</td>
			        	<td>${question.QUE_REGDATE}</td>
						<td>${question.QUE_STATE}</td>
			      	  </tr>
	      	 		  </c:forEach>
	    		</table>
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
  <!-- CONTACT FORM SECTION  -->
  </section>
  
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
</body>

</html>
