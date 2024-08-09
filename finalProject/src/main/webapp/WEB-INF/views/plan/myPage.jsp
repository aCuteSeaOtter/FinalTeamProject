<%@page import="com.fasterxml.jackson.databind.ser.std.DateSerializer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html> 
<html lang="zxx">
<head> 
  <title>Travel | Destinations </title>
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
  <!-- Font Awesome 링크 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- 스타일시트 링크 CSS -->
  <link rel="stylesheet" href="/assets/css/animate.css">
  <!-- 최신 컴파일된 CSS -->
  <link rel="stylesheet" href="/assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="/css/myPage.css" type="text/css">
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
  
  <div class="bg-outer-wrapper float-left w-100">
    <div class="clearfix"></div> 
    <!-- HEADER SECTION -->

	<jsp:include page="/WEB-INF/views/header.jsp" />


    </div>
  
  <!-- 주요 목적지 섹션 -->
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
	    <div class="container full-height-container myPage-container">
	      <div id="tab" class="row">
	      
	        <div id="total" class="tab-content">
	        
	        	<!-- 내 정보 -->
	        	<div class="content-1">
			    	<div class="t-left">
			    		<c:forEach items="${myInfo}" var="info">
				    		<h2 class="profile-title">사용자 프로필</h2>
				            <div class="profile-item">
				                <span class="profile-label">이메일:</span>
				                <input type="email" class="form-control profile-value" value="${info.MEMBER_EMAIL}" readonly>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">비밀번호:</span>
				                <input type="password" class="form-control profile-value changeable pass" value="${info.MEMBER_PASS}" readonly></input>
				                <i class="secret fas fa-eye"></i>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">성별:</span>
				                <input type="text" class="form-control profile-value" value="${info.MEMBER_GENDER}" readonly>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">닉네임:</span>
				                <input type="text" class="form-control profile-value changeable nickname" value="${info.MEMBER_NICKNAME}" readonly>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">생년월일:</span>
				                <input type="text" class="form-control profile-value changeable birth" value="${info.MEMBER_BIRTH}" readonly>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">등록일:</span>
				                <input type="text" class="form-control profile-value" value="${info.MEMBER_REGDATE}" readonly>
				            </div>
				            <div class="profile-item">
				                <span class="profile-label">작성한 리뷰:</span>
				                <input type="number" class="profile-value profile-review-count" value="${info.MEMBER_REVIEW}" readonly>
				            </div>
			            </c:forEach>
			            <button class="edit-button">수정하기</button>
			    	</div>
			    </div>
	        
	        	<!-- 나의 일정 -->
	        	<div class="content-2">
				    <div class="t-left">
			            <c:forEach items="${planList}" var="list">
			                <div class="myPlan-wrapper wrap">
			                <form action="/selectMyPlan" method="post" id="myPlanForm">
			                    <div class="block">
			                        <div class="left">
			                            <div><i class="fas fa-calendar-alt"></i><strong>일정명:</strong> ${list.INFO_NAME}</div>
			                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${list.MEMBER_EMAIL}</div>
			                            <div><i class="fas fa-map-marker-alt"></i><strong>지역:</strong> ${list.TRIP_PLACE}</div>
			                        </div>
			                        <div class="right">
			                            <div><i class="fas fa-plane-departure"></i><strong>시작일:</strong> ${list.START_DATE}</div>
			                            <div><i class="fas fa-plane-arrival"></i><strong>종료일:</strong> ${list.END_DATE}</div>
			                            <div><input type="hidden" name="info_id" class="info_id fas fa-plane-arrival" value="${list.INFO_ID}"></div>
			                        </div>
			                    </div>
			                </form>
			                </div>
			            </c:forEach>
				    </div>
				    <c:if test="${not empty planList}"> 
				    <div class="pagination-container">
				        <input type="button" value="prevPage" class="planPrevPage prevPage btn"/>
				        <input type="button" value="nextPage" class="planNextPage nextPage btn"/>
				    </div>
				    </c:if>
			    </div>
			    
			    <!-- 나의 후기 -->
	        	<div class="content-3">
			    	<div class="t-left">
				    	<c:forEach items="${reviewList}" var="list">
				    		<div class="review-wrapper wrap">
				                <form action="/selectMyReview" method="post" id="myReviewForm">
				                    <div class="block">
				                        <div class="left">
				                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${list.MEMBER_EMAIL}</div>
				                            <div><i class="fas fa-magnifying-glass"></i><strong>제목:</strong> ${list.REVIEW_TITLE}</div>
				                            <div><i class="fas fa-calendar-alt"></i><strong>등록일:</strong> ${list.REVIEW_REGDATE}</div>
				                            <div><i class="fas fa-eye"></i><strong>조회수:</strong> ${list.REVIEW_CNT}</div>
				                        </div>
				                        <div class="right">
				                            <div><i class="fas fa-star"></i><strong>별점:</strong> ${list.REVIEW_STAR}</div>
				                            <div><i class="fas fa-thumbs-up"></i><strong>좋아요:</strong> ${list.REVIEW_LIKE}</div>
				                            <div><i class="fas fa-thumbs-down"></i><strong>싫어요:</strong> ${list.REVIEW_HATE}</div>
				                            <div><input type="hidden" name="review_id" class="review_id" value="${list.REVIEW_ID}"></div>
				                        </div>
				                    </div>
				                </form>
			                </div>
		                </c:forEach>
			    	</div>
			    	<c:if test="${not empty reviewList}">
			    	<div class="pagination-container">
				        <input type="button" value="prevPage" class="reviewPrevPage prevPage btn"/>
				        <input type="button" value="nextPage" class="reviewNextPage nextPage btn"/>
				    </div>
				    </c:if>
			    </div>
			    
			    <!-- 나의 신고 -->
	        	<div class="content-4">
			    	<div class="t-left">
			    		<c:forEach items="${reportList}" var="list">
				    		<div class="report-wrapper wrap">
				                <form action="/selectReport" method="post" id="reportForm">
				                    <div class="block">
				                    	<c:choose>
				                    		
				                    		<c:when test="${list.CATEGORY eq '게시글'}">
				                    			<div class="left">
						                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${list.RV_MEMBER_EMAIL}</div>
						                            <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${list.REVIEW_TITLE}</div>
						                        	<div><i class="fas fa-book"></i><strong>게시글 내용:</strong> 
						                            	<c:choose>
										                    <c:when test="${fn:length(list.REVIEW_CONTENT) > 8}">
										                        ${fn:substring(list.REVIEW_CONTENT, 0, 8)}...
										                    </c:when>
										                    <c:otherwise>
										                        ${list.REVIEW_CONTENT}
										                    </c:otherwise>
										                </c:choose>
									                </div>
						                        </div>
						                        <div class="right">
						                            <div><i class="fas fa-magnifying-glass"></i><strong>신고 유형:</strong> ${list.REPORT_TYPE}</div>
						                            <div><i class="fas fa-calendar-alt"></i><strong>신고일:</strong> ${list.REPORT_REGDATE}</div>
						                            <div><input type="hidden" name="report_id" class="report_id" value="${list.REPORT_ID}"></div>
						                        </div>
				                    		</c:when>
				                    		
				                    		<c:when test="${list.CATEGORY eq '댓글'}">
				                    			<div class="left">
						                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${list.C_MEMBER_EMAIL}</div>
						                            <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${list.REVIEW_TITLE}</div>
						                        	<div><i class="fas fa-comment"></i><strong>댓글 내용:</strong>
						                            	<c:choose>
										                    <c:when test="${fn:length(list.COMMENT_CONTENT) > 8}">
										                        ${fn:substring(list.COMMENT_CONTENT, 0, 8)}...
										                    </c:when>
										                    <c:otherwise>
										                        ${list.COMMENT_CONTENT}
										                    </c:otherwise>
										                </c:choose>
						                            </div>
						                        </div>
						                        <div class="right">
						                            <div><i class="fas fa-magnifying-glass"></i><strong>신고 유형:</strong> ${list.REPORT_TYPE}</div>
						                            <div><i class="fas fa-calendar-alt"></i><strong>신고일:</strong> ${list.REPORT_REGDATE}</div>
						                            <div><input type="hidden" name="report_id" class="report_id" value="${list.REPORT_ID}"></div>
						                        </div>
				                    		</c:when>
				                    		
				                    		<c:when test="${list.CATEGORY eq '대댓글'}">
				                    			<div class="left">
						                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${list.RP_MEMBER_EMAIL}</div>
						                            <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${list.REVIEW_TITLE}</div>
						                        	<div><i class="fas fa-reply"></i><strong>대댓글 내용:</strong>
						                            	<c:choose>
										                    <c:when test="${fn:length(list.REPLY_CONTENT) > 8}">
										                        ${fn:substring(list.REPLY_CONTENT, 0, 8)}...
										                    </c:when>
										                    <c:otherwise>
										                        ${list.REPLY_CONTENT}
										                    </c:otherwise>
										                </c:choose>
						                            </div>
						                        </div>
						                        <div class="right">
						                            <div><i class="fas fa-magnifying-glass"></i><strong>신고 유형:</strong> ${list.REPORT_TYPE}</div>
						                            <div><i class="fas fa-calendar-alt"></i><strong>신고일:</strong> ${list.REPORT_REGDATE}</div>
						                            <div><input type="hidden" name="report_id" class="report_id" value="${list.REPORT_ID}"></div>
						                        </div>
				                    		</c:when>
				                        	
			                        	</c:choose>
				                    </div>
				                </form>
			                </div>
		                </c:forEach>
			    	</div>
			    	<c:if test="${not empty reportList}">
			    	<div class="pagination-container">
				        <input type="button" value="prevPage" class="reportPrevPage prevPage btn"/>
				        <input type="button" value="nextPage" class="reportNextPage nextPage btn"/>
				    </div>
				    </c:if>
			    </div>
			    
			</div>
			
			<div id="menutab" >
			
				<div class="t-right">
		                <div class="tab-wrapper">
		                    <div class="tab-block">
		                    	<div class="menu selected">내 정보<input type="hidden" class="tabId" value="1"/></div>
		                    	<div class="menu">나의 일정<input type="hidden" class="tabId" value="2"/></div>
		                    	<div class="menu">나의 후기<input type="hidden" class="tabId" value="3"/></div>
		                    	<div class="menu">나의 신고<input type="hidden" class="tabId" value="4"/></div>
		                    </div>
		                </div>
			    </div>
	          
	        <!-- col -->
	        </div>
	        
	  <!-- row -->
      </div>
      <!-- 컨테이너 -->
    </div>
    <!-- 여행 정보 -->
  </section>
  <jsp:include page="/WEB-INF/views/footer.jsp" />
  <!-- 상단으로 이동 버튼 -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=HfsADugOlL7V9xem6QOFx5WtuGp7oNzpa9QxyY7Y"></script>

  
  <script src="/assets/js/jquery.min.js"></script>
  <script src="/assets/js/popper.min.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  <script src="/assets/js/owl.carousel.js"></script>
  <script src="/assets/js/contact-form.js"></script>
  <script src="/assets/js/video-popup.js"></script>
  <script src="/assets/js/video-section.js"></script>
  <script src="/assets/js/jquery.validate.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/wow.js"></script>
  <script src="/assets/js/search.js"></script>
  <script src="/js/myPage.js"></script>
  <!-- <script src="/js/tmap.js"></script> -->
  
  
  
  
</body>
</html>
