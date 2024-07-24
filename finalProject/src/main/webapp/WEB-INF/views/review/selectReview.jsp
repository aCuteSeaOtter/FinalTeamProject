<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | Team </title>
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
  <script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
  <script src='/js/like.js' type="text/javascript"></script>
  <script src='/js/hate.js' type="text/javascript"></script>
  <script src='/js/comment.js' type="text/javascript"></script>
  <link rel="stylesheet" href="/css/getReview.css" type="text/css">
  <link rel="stylesheet" href="/css/getReviewStar.css" type="text/css">
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
          <div class="right-con"><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123 456</a>
            <!-- right con -->
          </div>
        </div>
      </div>
    </div>
    <div class="clearfix"></div>
    <!-- HEADER SECTION -->
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1 img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>Team</h1>
              <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed doeiusm tempor incididunt ut labore et dolore.</p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="index">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Team</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="float-left w-100 about-travel-con talk-to-us-con position-relative main-box padding-top padding-bottom">
      <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector5.png">
      <img alt="vector" class="vector6 img-fluid position-absolute" src="/assets/images/vector6.png">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <div class="row">
          <div class="col-lg-6">
            <div class="about-travel-img-con position-relative">
              <figure class="about-img"><img class="img-fluid" alt="image" src="/assets/images/talk-to-us-img1.jpg"></figure>
              <figure class="about-img2"><img class="img-fluid" alt="image" src="/assets/images/talk-to-us-img2.jpg"></figure>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- MEET OUR TEAM SECTION -->
    <section class="float-left w-100 what-we-serve-con meet-our-team-con team-con position-relative main-box padding-bottom">
      <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector4.png">
      <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector5.png">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <div class="row">
          <div class="col-lg-6">
          </div>
          <div class="col-xl-10 col-12 mr-auto ml-auto serve-outer text-center">
            <div class="server-box var1">
              <img class="img-fluid" src="/assets/images/team1-img.png" alt="icon">
              <h4>Jacob Knight</h4>
              <p class="">Lorem ipsum dolor sit ametc onsectetur adipiscing.</p>
              <ul class="d-inline-block list-unstyled p-0 m-0">
                <li class="d-inline-block"><a href="https://www.facebook.com/login/"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li class="d-inline-block"><a href="https://twitter.com/i/flow/login"><i class="fa-brands fa-x-twitter"></i></a></li>
                <li class="d-inline-block"><a href="https://www.instagram.com/" class="mr-0"><i class="fa-brands fa-instagram"></i></a></li>
              </ul>
            </div>
            <div class="server-box var2">
              <img class="img-fluid" src="/assets/images/team2-img.png" alt="icon">
              <h4>Alexandra Booth</h4>
              <p class="">Lorem ipsum dolor sit ametc onsectetur adipiscing.</p>
              <ul class="d-inline-block list-unstyled p-0 m-0">
                <li class="d-inline-block"><a href="https://www.facebook.com/login/"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li class="d-inline-block"><a href="https://twitter.com/i/flow/login"><i class="fa-brands fa-x-twitter"></i></a></li>
                <li class="d-inline-block"><a href="https://www.instagram.com/" class="mr-0"><i class="fa-brands fa-instagram"></i></a></li>
              </ul>
            </div>
            <div class="server-box var3">
              <img class="img-fluid" src="/assets/images/team3-img.png" alt="icon">
              <h4>Kian Wilkinson</h4>
              <p class="">Lorem ipsum dolor sit ametc onsectetur adipiscing.</p>
              <ul class="d-inline-block list-unstyled p-0 m-0">
                <li class="d-inline-block"><a href="https://www.facebook.com/login/"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li class="d-inline-block"><a href="https://twitter.com/i/flow/login"><i class="fa-brands fa-x-twitter"></i></a></li>
                <li class="d-inline-block"><a href="https://www.instagram.com/" class="mr-0"><i class="fa-brands fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- News and Articles Section -->
    <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
      <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector4.png">
      <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector5.png">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <div class="heading-title text-center">
          <h4 class="text-uppercase">News & Articles</h4>
          <h2 class="">Stay Update with <br>Traveltrek</h2>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="article-box position-relative">
              <figure><img class="img-fluid" src="/assets/images/article-img1.jpg" alt="img"></figure>
              <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
                <a href="single-blog">
                  <h6 class="text-white">Change your place and <br>get the fresh air</h6>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="article-box position-relative">
              <figure><img class="img-fluid" src="/assets/images/article-img2.jpg" alt="img"></figure>
              <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
                <a href="single-blog">
                  <h6 class="text-white">Change your place and <br>get the fresh air</h6>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-6 last-con">
            <div class="article-box position-relative">
              <figure><img class="img-fluid" src="/assets/images/article-img3.jpg" alt="img"></figure>
              <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
                <a href="single-blog">
                  <h6 class="text-white">Change your place and <br>get the fresh air</h6>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
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
  </div>

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
              <input type="submit" value="글 수정" class="btn btn-primary"/>
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
</body>
</html>
