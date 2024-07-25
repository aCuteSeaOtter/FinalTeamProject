<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Travel | Team</title>
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
      <link rel="stylesheet" href="/assets/css/blog.css" type="text/css">
      <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
      <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
	  <link rel="stylesheet" href="/css/getReview.css" type="text/css">
	  <link rel="stylesheet" href="/css/getReviewStar.css" type="text/css">
	  <link rel="stylesheet" href="/css/comment.css" type="text/css">
	  <script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
	  <script src='/js/like.js' type="text/javascript"></script>
	  <script src='/js/hate.js' type="text/javascript"></script>
	  <script src='/js/comment.js' type="text/javascript"></script>
	  <link rel="stylesheet" href="/css/getReview.css" type="text/css">
	  <link rel="stylesheet" href="/css/getReviewStar.css" type="text/css">
	  <link rel="stylesheet" href="/css/comment.css" type="text/css">
  
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
	        <!-- TOP BAR SECTION -->
	        <div class="w-100 float-left top-bar-con main-box">
	            <div class="container">
	                <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
	                    <div class="left-con">
	                        <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i>
	                            help@traveltrek.com</a>
	                        <!-- left con -->
	                    </div>
	                    <div class="right-con"><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1
	                            (0800) 123
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
	<!-- OUTER BG WRAPPER -->
	  <div class="bg-outer-wrapper sub-banner-outer-wrapper float-left w-100">
		
  <!-- HEADER SECTION -->
  <jsp:include page="/WEB-INF/views/header.jsp" />

  <!-- Review Details Section -->
  <div class="container mt-5">
    <h1>글 상세</h1>
    <hr>
    <form action="updateReview" name="myform" id="myform" method="post">
      <input name="review_id" type="hidden" value="${review.REVIEW_ID}" id="review_id"/>
      <table class="table table-striped">
        <tr>
          <th>제목</th>
          <td>
            <c:choose>
              <c:when test="${id == review.MEMBER_EMAIL}">
                <input name="review_title" type="text" value="${review.REVIEW_TITLE}" class="form-control"/>
              </c:when>
              <c:otherwise>
                <input name="review_title" type="text" value="${review.REVIEW_TITLE}" class="form-control" readonly/>
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
        <tr>
          <th>작성자</th>
          <td>${review.MEMBER_NICKNAME}</td>
        </tr>
        <tr id="starRow">
          <th>별점</th>
          <td>
            <fieldset>
              <div class="star-rating">
                <span class="star${review.REVIEW_STAR >= 5 ? ' filled' : ''}">★</span>
                <span class="star${review.REVIEW_STAR >= 4 ? ' filled' : ''}">★</span>
                <span class="star${review.REVIEW_STAR >= 3 ? ' filled' : ''}">★</span>
                <span class="star${review.REVIEW_STAR >= 2 ? ' filled' : ''}">★</span>
                <span class="star${review.REVIEW_STAR >= 1 ? ' filled' : ''}">★</span>
              </div>
            </fieldset>
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <c:choose>
              <c:when test="${id == review.MEMBER_EMAIL}">
                <textarea name="review_content" cols="40" rows="10" class="form-control">${review.REVIEW_CONTENT}</textarea>
              </c:when>
              <c:otherwise>
                <textarea name="review_content" cols="40" rows="10" class="form-control" readonly>${review.REVIEW_CONTENT}</textarea>
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
        <tr>
          <th>등록일</th>
          <td>${review.REVIEW_REGDATE}</td>
        </tr>
        <tr>
          <th>조회수</th>
          <td>👁️${review.REVIEW_CNT}</td>
        </tr>
        <tr>
          <th>이미지</th>
          <td>
            <img src="/files/${review.FILE_NAME}" alt="이미지" class="img-fluid"/>
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <c:if test="${id == review.MEMBER_EMAIL}">
              <button type="submit" class="btn btn-primary">글 수정</button>
              <a href="deleteReview?review_id=${review.REVIEW_ID}" class="btn btn-danger">글삭제</a>
            </c:if>
            <div class="post" data-post-id="${review.REVIEW_ID}">
              <span class="report-btn" style="cursor:pointer;">🚨</span>
            </div>
          </td>
        </tr>
      </table>
    </form>
    <hr>

    <c:if test="${not empty id}">
      <p>현재 사용자 닉네임: ${nickname}</p>
    </c:if>

    <c:if test="${not empty review_id}">
      <p>현재 게시물 번호: ${review.REVIEW_ID}</p>
    </c:if>

    <div id="post">
      <div id="like-button" data-review_id="${review.REVIEW_ID}" data-nickname="${id}" class="like-button">
        <img src="/images/review/unlike.jpg" alt="Like" class="img-fluid">
      </div>
      <span id="like-count">0</span>명이 좋아합니다.
    </div>

    <div id="post-${review.review_id}">
      <div id="hate-button-${review.review_id}" data-review_id="${review.REVIEW_ID}" data-nickname="${id}" class="hate-button">
        <img src="/images/review/unhate.jpg" alt="Hate" class="img-fluid">
      </div>
      <span id="hate-count-${review.REVIEW_ID}">0</span>명이 싫어합니다.
    </div>

    <!-- 댓글목록을 서버에서 가지고 와서 출력 -->
    <table id="commentList" class="table table-striped mt-3"></table>

    <!-- 댓글 입력 폼 -->
    <div class="comment-form mt-3">
      <form name="commentFrm" id="commentFrm">
        <input type="hidden" name="review_id" id="review_id" value="${review.REVIEW_ID}">
        <div class="form-group">
          <label for="member_nickname">작성자:</label>
          <input type="text" name="member_nickname" id="member_nickname" value="${nickname}" class="form-control" readonly>
          <input type="hidden" name="member_email" id="member_email" value="${id}" readonly>
        </div>
        <div class="form-group">
          <label for="comment_content">댓글 추가:</label>
          <textarea name="comment_content" id="comment_content" class="form-control comment-input"></textarea>
        </div>
        <div class="form-group">
          <input type="button" value="댓글 작성" id="commentConfirm" class="btn btn-primary">
        </div>
      </form>
    </div>

    <a href="insertReview" class="btn btn-secondary mt-3">글등록</a>
    <a href="reviewList" class="btn btn-secondary mt-3">글목록</a>
  </div>

  <!-- FOOTER SECTION -->
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
