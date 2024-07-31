<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html> 
<html lang="ko">
<head>
	<title>Travel | InsertReview </title>
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
	  <link rel="stylesheet" href="/css/insertReview.css" type="text/css">
	  <link rel="stylesheet" href="/css/star.css" type="text/css">
	  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	  <script src="/js/insertReview.js"></script>
	  
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
		<!-- HEADER SECTION -->
		  <jsp:include page="/WEB-INF/views/header.jsp" />
	    
	    <!-- bg outer wrapper -->
	  </div>
	  <!-- TOP DESTINATIONS SECTION -->
	  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
		    <div class="container">
		      <div class="row">
		        <div class="col-lg-12">
<form action="saveReview" name="myform" id="myform" method="post" enctype="multipart/form-data">
<table border="1">
   <tr>
      <th width="70">제목</th><td align="left">
      <input type="text" name="review_title"/></td>
   </tr>
   <tr>
      <th >작성자</th><td align="left">
      <input type="text" name="member_nickname" size="10" value="${nickname}" readonly/></td>
   </tr>
   <tr id="starRow">
   <th>별점</th>
   <td>
      <fieldset>
         <input type="radio" name="review_star" class="star" value="5" id="rate1"><label
            for="rate1">★</label>
         <input type="radio" name="review_star" class="star" value="4" id="rate2"><label
            for="rate2">★</label>
         <input type="radio" name="review_star" class="star" value="3" id="rate3"><label
            for="rate3">★</label>
         <input type="radio" name="review_star" class="star" value="2" id="rate4"><label
            for="rate4">★</label>
         <input type="radio" name="review_star" class="star" value="1" id="rate5"><label
            for="rate5">★</label>
      </fieldset>
   </td>
   </tr>
   <tr>
      <th>내용</th><td align="left">
      <textarea name="review_content" cols="40" rows="10"></textarea></td>
   </tr>
   <tr>
      <th>파일추가</th>
      <td align="left">
         <input type="file" name="review_file" accept="image/*, video/*" multiple="multiple" id="fileInput">
		 <div id="filePreviewContainer"></div> <!-- 미리보기 컨테이너 추가 -->
      </td>
   </tr>
   <tr>
      <th colspan="2" align="center">
      <input type="submit" value=" 새글 등록 "/></th>
   </tr>
</table>
</form>
<hr>
<a href="reviewList" class="reviewList-btn">글목록</a>
 <!-- row -->
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
  <script src="/js/plan.js"></script>

  
</body>

</html>