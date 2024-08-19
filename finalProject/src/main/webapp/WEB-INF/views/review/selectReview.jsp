<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Travel | SelectReview</title>
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
	  <link rel="stylesheet" href="/css/comment.css" type="text/css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
	  <script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
	  <script src='/js/like.js' type="text/javascript"></script>
	  <script src='/js/hate.js' type="text/javascript"></script>
	  <script src='/js/comment.js' type="text/javascript"></script>
	  <link rel="stylesheet" href="/css/selectReview.css" type="text/css">
	  <link rel="stylesheet" href="/css/selectReviewStar.css" type="text/css">
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
	        
		<div class="clearfix"></div>
	<!-- OUTER BG WRAPPER -->
	  <div class="bg-outer-wrapper sub-banner-outer-wrapper float-left w-100">
		
  <!-- HEADER SECTION -->
  <jsp:include page="/WEB-INF/views/header.jsp" />
  
  <!-- 채팅 열기 버튼 -->
  <div id="chat-toggle" class="chat-toggle">
      <i class="fa fa-comment"></i>
  </div>
  <!-- 숨겨진 팝업 창 -->
  <div id="small-chat-box" class="small-chat-box">
      <div class="chat-box-header">
          <span>채팅</span>
          <button id="close-chat" class="close-chat">&times;</button>
      </div>
      <div id="chat-box" class="chat-box">
          <!-- JSP 파일을 로드할 iframe -->
          <iframe id="chat-iframe" class="chat-iframe" src=""></iframe>
      </div>
  </div>

  <!-- Review Details Section -->
  <div class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
	
    <h1>글 상세</h1>
    <hr>
	<div class="container">
	  <div class="row">
		<div class="col-lg-12">
    <form action="updateReview" name="myform" id="myform" method="post">
		<c:forEach items="${myPlan}" var="dayPlan">
		     <div class="day-plan-item">
		         <h3 class="day-title">${dayPlan.plan_day}일차</h3>
		         <ul class="attraction-list">
		             <c:forEach items="${dayPlan.attr_name}" var="attr">
		                 <li class="attraction-item">
		                     <i class="fa fa-map-marker-alt"></i> ${attr.ATTR_NAME}
		                 </li>
		             </c:forEach>
		         </ul>
		     </div>
		 </c:forEach>
      <input name="review_id" type="hidden" value="${review.REVIEW_ID}" id="review_id"/>
	  <input type="hidden" name="originalTitle" value="${review.REVIEW_TITLE}">
	  <input type="hidden" name="originalContent" value="${review.REVIEW_CONTENT}">
      <table class="table table-striped">
        <tr>
          <th style="vertical-align: middle;">제목</th>
          <td>
            <c:choose>
              <c:when test="${member.member_email == review.MEMBER_EMAIL}">
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
          <th style="vertical-align: middle;">내용</th>
          <td>
            <c:choose>
              <c:when test="${member.member_email == review.MEMBER_EMAIL}">
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
		 <th style="vertical-align: middle;">이미지<br/>/<br/>영상</th>
		  <td>
		    <div class="slick-slider">
		      <!-- 이미지 출력 -->
		      <c:forEach items="${reviews}" var="review">
		        <div class="slick-slide">
		          <c:choose>
		            <c:when test="${review.FILE_NAME.endsWith('.mp4') or review.FILE_NAME.endsWith('.avi')}">
		              <video width="320" height="240" controls>
		                <source src="/files/${review.FILE_NAME}" type="video/mp4">
		                Your browser does not support the video tag.
		              </video>
		            </c:when>
		            <c:otherwise>
		              <img src="/files/${review.FILE_NAME}" alt="${review.ORIGIN_FILE_NAME}" />
		            </c:otherwise>
		          </c:choose>
		        </div>
		      </c:forEach>
		      <!-- 이미지 출력 -->
		    </div>
			
		  </td>
		</tr>
        <tr>
          <td colspan="2" align="center">
            
            <div class="post" data-post-id="${review.REVIEW_ID}">
              <span class="report-btn" style="cursor:pointer;">🚨</span>
            </div>
			<div id="post">
		      
		    </div>

			<div id="post-${review.review_id}">
			    <div class="reaction-buttons">
			        <div id="like-button" data-review_id="${review.REVIEW_ID}" data-nickname="${member_email}" class="like-button">
			            <i class="fa-regular fa-thumbs-up"></i>
			        </div>
			        <span class="count" id="like-count">0</span>

			        <div id="hate-button-${review.review_id}" data-review_id="${review.REVIEW_ID}" data-nickname="${member_email}" class="hate-button">
			            <i class="fa-regular fa-thumbs-down"></i>
			        </div>
			        <span class="count" id="hate-count-${review.REVIEW_ID}">0</span>
			        
			        <c:if test="${member.member_email == review.MEMBER_EMAIL}">
			            <button type="submit" class="btn btn-primary" onclick="return confirmUpdate()">글 수정</button>
			            <a href="deleteReview?review_id=${review.REVIEW_ID}" class="btn btn-danger" onclick="return confirmDelete()">글삭제</a>
			        </c:if>
			    </div>
			</div>

				
          </td>
        </tr>
      </table>
	      </div>
	    </div>
	  </div>
    </form>
    <hr>
	<!-- 댓글목록을 서버에서 가지고 와서 출력 -->
	<div class="container"> <!-- 추가된 컨테이너 -->
	  <table id="commentList" class="table table-striped mt-3"></table>

	  <!-- 댓글 입력 폼 -->
	  <div class="comment-form mt-3">
	    <form name="commentFrm" id="commentFrm">
	      <input type="hidden" name="review_id" id="review_id" value="${review.REVIEW_ID}">
	      <div class="form-group">
	        <label for="member_nickname">작성자:</label>
	        <input type="text" name="member_nickname" id="member_nickname" value="${nickname}" class="form-control" readonly>
	        <input type="hidden" name="member_email" id="member_email" value="${member_email}" readonly>
	      </div>
	      <div class="form-group">
	        <label for="comment_content">댓글 추가:</label>
	        <textarea name="comment_content" id="comment_content" class="form-control comment-input" maxlength="66"></textarea>
	      </div>
	      <div class="form-group text-center"> <!-- 중앙 정렬 -->
	        <input type="button" value="댓글 작성" id="commentConfirm" class="btn btn-primary">
	      </div>
	    </form>
	  </div>

	    <a href="insertReview" class="btn btn-secondary mt-3">글등록</a>
	    <a href="reviewList" class="btn btn-secondary mt-3">글목록</a>
	</div> <!-- 추가된 컨테이너 끝 -->

  <!-- FOOTER SECTION -->
  <jsp:include page="/WEB-INF/views/footer.jsp" />

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
  <script src="/js/selectReview.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
  <!--<script src="/js/commentCount.js"></script>-->
</body>
</html>
