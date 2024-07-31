<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>Travel | ReviewList</title>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- Favicon links -->
    <link rel="icon" type="image/png" sizes="192x192" href="/assets/images/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon-32x32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="/assets/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet" href="/assets/css/superclasses.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    <link rel="stylesheet" href="/assets/css/responsive.css">
    <link rel="stylesheet" href="/assets/css/blog.css">
    <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
	<link rel="stylesheet" href="/css/reviewList.css">
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
                            <h1>리뷰 목록</h1>
                            <p class="font-size-20">모두 함께 상세보기를 보아요🥵</p>
                            <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="/index">Home</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- MAIN SECTION -->
    <section class="blog-posts blogpage-section three-column-con w-100 float-left">
        <div class="container">
            <div class="row wow fadeInUp">
                <div id="blog" class="col-xl-12">
                    <!-- 버튼을 우측 정렬하고 스타일링하기 위한 새로운 div 추가 -->
                    <div class="button-container text-right mb-3">
                        <a href="insertReview" class="btn btn-primary">새글 등록</a>
                    </div>

                    <div class="row">
                        <!-- 게시물 목록 -->
                        <div class="col-xl-9 col-lg-9">
                            <div class="three-column col-xl-12">
                                <div class="row">
                                    <c:forEach items="${reviewList}" var="review">
                                        <div class="col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-duration="700">
                                            <div class="blog-box blog-box1">
                                                <!-- 리뷰 링크 -->
                                                <div class="review-container">
                                                    <!-- 파일 이름 배열 설정 -->
                                                    <c:set var="fileNamesArray" value="${fn:split(review.FILE_NAMES, ',')}"/>
                                                    
                                                    <!-- 슬라이더 -->
                                                    <div class="slider-wrapper">
                                                        <div class="slider" id="slider-${review.REVIEW_ID}">
                                                            <c:forEach items="${fileNamesArray}" var="fileName">
                                                                <c:if test="${not empty fileName}">
                                                                    <div>
                                                                        <!-- 이미지 클릭 시 페이지 이동 -->
                                                                        <img src="/files/${fileName}" alt="Image" onclick="window.location.href='selectReview?review_id=${review.REVIEW_ID}'">
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                        <!-- 사용자 정의 화살표 버튼 -->
                                                        <button class="slider-button prev" onclick="moveSlide(-1, 'slider-${review.REVIEW_ID}'); event.stopPropagation();">❮</button>
                                                        <button class="slider-button next" onclick="moveSlide(1, 'slider-${review.REVIEW_ID}'); event.stopPropagation();">❯</button>
                                                    </div>
                                                </div>

                                                <!-- 리뷰 제목과 작성자 -->
                                                <div class="lower-portion">
                                                    <div class="span-i-con">
                                                        <div>${review.REVIEW_TITLE}</div>
                                                        <i class="fa-solid fa-user"></i>
                                                        <span class="text-size-14 text-mr">${review.MEMBER_NICKNAME}</span>
                                                    </div>
                                                </div>

                                                <!-- 리뷰 등록 날짜 -->
                                                <div class="button-portion">
                                                    <div class="date">
                                                        <i class="mb-0 calendar-ml fa-solid fa-calendar-days"></i>
                                                        <span class="mb-0 text-size-14">${review.REVIEW_REGDATE}</span>
                                                    </div>
                                                    <div class="button">
                                                        <a class="mb-0 read_more text-decoration-none small-read-more" href="selectReview?review_id=${review.REVIEW_ID}">
                                                            리뷰 보기
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <!-- 사이드바 -->
                        <div class="sidebar sticky-sidebar col-lg-3">
                            <div class="theiaStickySidebar">
                                <div class="widget widget-newsletter" data-aos="fade-up" data-aos-duration="700">
                                    <form id="widget-search-form-sidebar" class="form-inline" method="get" action="reviewList">
                                        <div class="input-group">
                                            <select name="searchCondition" class="form-control">
                                                <option value="review_title">제목</option>
                                                <option value="review_content">내용</option>
                                                <option value="member_nickname">작성자</option>
                                            </select>
                                            <input type="text" aria-required="true" name="searchKeyword" class="form-control widget-search-form" placeholder="Search for reviews...">
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
                                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#popular" role="tab" aria-controls="popular" aria-selected="true">조회수</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#featured" role="tab" aria-controls="featured" aria-selected="false">좋아</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#recent" role="tab" aria-controls="recent" aria-selected="false">Recent</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="tabs-posts-content" data-aos="fade-up" data-aos-duration="700">
                                            <div class="tab-pane fade show active" id="popular" role="tabpanel">
                                                <div class="post-thumbnail-list">
                                                    <div class="post-thumbnail-entry">
                                                        <img data-aos="fade-up" alt="image" src="/assets/images/side_post_img01.jpg" loading="lazy">
                                                        <div class="post-thumbnail-content">
                                                            <a href="/single-blog">A true story, that never been told!</a>
                                                            <span class="post-date"><i class="far fa-clock"></i> 6m ago</span>
                                                            <span class="post-category"><i class="fa fa-tag"></i> Technology</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="featured" role="tabpanel">
                                                <div class="post-thumbnail-list">
                                                    <div class="post-thumbnail-entry">
                                                        <img data-aos="fade-up" alt="image" src="/assets/images/side_post_img03.jpg" loading="lazy">
                                                        <div class="post-thumbnail-content">
                                                            <a href="single-blog">Beautiful nature, and rare feathers!</a>
                                                            <span class="post-date"><i class="far fa-clock"></i> 24h ago</span>
                                                            <span class="post-category"><i class="fa fa-tag"></i> Lifestyle</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="recent" role="tabpanel">
                                                <div class="post-thumbnail-list">
                                                    <div class="post-thumbnail-entry">
                                                        <img data-aos="fade-up" alt="image" src="/assets/images/side_post_img02.jpg" loading="lazy">
                                                        <div class="post-thumbnail-content">
                                                            <a href="single-blog">The most happiest time of the day!</a>
                                                            <span class="post-date"><i class="far fa-clock"></i> 11h ago</span>
                                                            <span class="post-category"><i class="fa fa-tag"></i> Lifestyle</span>
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
                </div>
            </div>
        </div>
    </section>

    <!-- 페이지네이션 링크 -->
    <div class="pagination">
        <c:if test="${currentPage > 1}">
            <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${currentPage - 1}">Previous</a>
        </c:if>

        <c:forEach var="i" begin="1" end="${totalPages}">
            <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${i}" 
               class="${i == currentPage ? 'active' : ''}">${i}</a>
        </c:forEach>

        <c:if test="${currentPage < totalPages}">
            <a href="?searchCondition=${searchCondition}&searchKeyword=${searchKeyword}&page=${currentPage + 1}">Next</a>
        </c:if>
    </div>
    
    <jsp:include page="/WEB-INF/views/footer.jsp" />

    <!-- BACK TO TOP BUTTON -->
    <button id="back-to-top-btn" title="Back to Top"></button>

    <!-- JavaScript files -->
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
    <script src="/js/reviewList.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
</body>

</html>
