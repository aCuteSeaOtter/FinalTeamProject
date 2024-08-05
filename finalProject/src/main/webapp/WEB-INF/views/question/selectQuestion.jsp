<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>Travel | selectQuestion </title>
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
  <link rel="stylesheet" href="/css/questionWrite.css" type="text/css">
  <link rel="stylesheet" href="/css/selectQuestion.css" type="text/css">
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
          </div>
          <div class="right-con">
            <a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123 456</a>
          </div>
        </div>
      </div>
    </div>
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
              <h1>문의사항</h1>
              <p class="font-size-20">내가 작성한 문의에요🥵💦💦<br>
                뒤로 가기는<br>
                ⬇️ 아래 링크 클릭
              </p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/question/questionList">뒤로가기</a></li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- CONTACT FORM SECTION  -->
  <section class="float-left w-100 talk-width-our-team-con about-travel-con position-relative main-box padding-top padding-bottom">
    <img alt="vector" class="vector11 img-fluid position-absolute wow bounceInUp" data-wow-duration="2s" src="/assets/images/vector11.png">
    <img alt="vector" class="vector9 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s" src="/assets/images/vector9.png">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
        <h2 class="">내가 얼마나 싸가지 없이<br>작성했는지 보아요.</h2>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="register-box">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div>
                  <div class="col-12">
                    <div class="form-group">
                      <form action="updateQuestion" method="post" onsubmit="return confirmUpdate()">
                        <label>작성자</label>
                        <input type="text" class="form_style" name="member_nickname" value="${question.MEMBER_NICKNAME}" readonly>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <label>제목</label>
                      <c:choose>
                        <c:when test="${id == question.MEMBER_EMAIL}">
                          <input type="text" class="form_style" placeholder="제목을 입력해주세요." name="que_title" id="que_title" value="${question.QUE_TITLE}">
                        </c:when>
                        <c:otherwise>
                          <input type="text" class="form_style" placeholder="제목을 입력해주세요." name="que_title" id="que_title" value="${question.QUE_TITLE}" readonly>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group fon-con">
                      <label>작성 날짜</label>
                      <input type="text" class="mb-md-0 form_style" name="que_regdate" id="que_regdate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()) %>" readonly>
                    </div>
                  </div>
                  <!-- 답변 확인-->
                  <div class="col-md-5 answer_check">
                    <input type="checkbox" id="answerCheckbox" name="answer" value="true"> 
                    <label for="answerCheckbox">답변 확인하기</label>
                  </div>
                  <div class="col-12 hidden-field" id="hidden_member_nickname_container" style="display:none;">
                    <div class="form-group">
                      <label>작성자</label>
                      <input type="text" id="hidden_member_nickname" class="form_style" name="member_nickname" value="강성욱 관리자" readonly>
                    </div>
                  </div>
                  <div class="col-12 hidden-field" id="hidden_que_title_container" style="display:none;">
                    <div class="form-group">
                      <label>제목</label>
                      <input type="text" id="hidden_que_title" class="form_style" name="" value="답변 제목" readonly>
                    </div>
                  </div>
                  <div class="col-12 hidden-field" id="hidden_que_regdate_container" style="display:none;">
                    <div class="form-group fon-con">
                      <label>답변 날짜</label>
                      <input type="text" id="hidden_que_regdate" class="mb-md-0 form_style" name="que_regdate" value="2012-01-23 01:23:45" readonly>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="row">
                  <div class="col-12 quesiton_content hidden-field" id="question_content">
                    <div class="form-group mb-0">
                      <label>문의 내용</label>
                      <c:choose>
                        <c:when test="${id == question.MEMBER_EMAIL}">
                          <textarea class="form_style" placeholder="문의 내용을 입력해주세요." rows="5" name="que_content">${question.QUE_CONTENT}</textarea>
                        </c:when>
                        <c:otherwise>
                          <textarea class="form_style" placeholder="문의 내용을 입력해주세요." rows="5" name="que_content" readonly>${question.QUE_CONTENT}</textarea>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </div> 
				  
                  <c:choose>
                    <c:when test="${id == question.MEMBER_EMAIL}">
                      <input type="hidden" name="que_id" value="${question.QUE_ID}">
                      <input type="hidden" name="originalTitle" value="${question.QUE_TITLE}">
                      <input type="hidden" name="originalContent" value="${question.QUE_CONTENT}">
					  <div class="button-container" id="button-container">
						<button type="button" class="form_style btn-delete" onclick="confirmDelete(${question.QUE_ID})">삭제</button>
		                <input type="submit" class="form_style btn-custom" value="수정">
					  </div>
                    </form>
                    </c:when>
                  </c:choose>
				  
                  <div class="col-12 hidden-field" id="hidden_que_content_container" style="display:none;">
                    <div class="form-group mb-0">
                      <label>답변 내용</label>
                      <textarea id="hidden_que_content" class="form_style" rows="5" name="" readonly>답변 내용</textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
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
  <script src="/js/questionWrite.js"></script>
  <script src="/js/selectQuestion.js"></script>