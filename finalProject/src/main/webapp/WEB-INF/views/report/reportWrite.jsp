<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Travel | ReportWrite</title>
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
		  <script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
		  <link rel="stylesheet" href="/css/report.css" type="text/css">
	  
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
  
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
  	    <div class="container">
  	      <div class="row">
  
  
  <table class="table table-striped">
    <tr>
        <th>항목</th>  
        <th>내용</th>
    </tr>
    <c:if test="${not empty review_id}">
        <tr>
            <td>게시물</td>
            <td>${review.review_content}</td>
        </tr>
    </c:if>
    <c:if test="${not empty comment_id}">
        <tr>
            <td>댓글</td>
            <td>${comments.comment_content}</td>
        </tr>
    </c:if>
    <c:if test="${not empty reply_id}">
        <tr>
            <td>대댓글</td>
            <td>${reply.reply_content}</td>
        </tr>
    </c:if>
</table>

<!-- 신고 처리 폼 -->
<form action="saveReport" method="post">
    <input type="hidden" name="review_id" value="${review_id}">
    <input type="hidden" name="comment_id" value="${comment_id}">
    <input type="hidden" name="reply_id" value="${reply_id}">
    <input type="hidden" name="member_email" value="${member_email}"> <!-- 여기도 필드명 변경 -->
    
    <label for="report_type">신고 유형:</label>
    <select name="report_type" id="report_type" required>
        <option value="스팸">스팸</option>
        <option value="욕설">욕설</option>
        <option value="부적절한 내용">부적절한 내용</option>
        <option value="기타">기타</option>
		<option value="허위 정보">허위 정보</option>
    </select>
    
    <label for="report_content">신고 사유:</label>
    <textarea name="report_content" id="report_content" rows="4" required></textarea>
    
    <input type="submit" value="신고 제출">
</form>


</div>
	      <!-- container -->
	    </div>
	    <!-- about travel con -->
	  </section>

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
