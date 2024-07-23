<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>Travel | reviewList </title>
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
        <!-- HEADER SECTION -->
			<jsp:include page="/WEB-INF/views/header.jsp" />
        <!-- BANNER SECTION -->
        <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
            <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
            <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="sub-banner-inner-con padding-bottom">
                            <h1>reviewList</h1>
                            <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed doeiusm
                                tempor
                                incididunt
                                ut labore et dolore.
                            </p>
                            <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="index">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">reviewList</li>
                                </ol>
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
    <!-- ======================================= -->
    <!-- ==========   {One Column*}   ========== -->
    <!-- ======================================= -->
    <div class="blog-posts blogpage-section background-gradient">
        <div class="container">
            <div class="row wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                <div id="blog" class="col-xl-12">
					<a href="insertReview">새글 등록</a> <br>
					<a href="/user/userLogin">로그인 창 이동</a>
					<c:forEach items="${reviewList }" var="review">
						<div class="blog-box onecolumn-blog float-left w-100 post-item mb-4">
	                        <div class="post-item-wrap position-relative">
	                            <div class="post-image">
	                                <a href="single-blog"><img alt="image" src="/assets/images/post-featured.jpg"
	                                        loading="lazy"></a>
	                            </div>
	                            <div class="lower-portion">
	                                <div class="span-i-con">
										<h3>${review.REVIEW_TITLE}</h3>
										<i class="fa-solid fa-user"></i>
	                                    <span class="text-size-50 text-mr">작성자 : ${review.MEMBER_NICKNAME} </span>
									</div>
	                            </div>
	                            <div class="button-portion loadone_twocol">
	                                <div class="date">
	                                    <i class="mb-0 calendar-ml fa-solid fa-calendar-days"></i>
	                                    <span class="mb-0 text-size-50">${review.REVIEW_REGDATE}</span>
	                                </div>
	                                <div class="button">
	                                    <a class="mb-0 read_more text-decoration-none" href="selectReview?review_id=${review.REVIEW_ID}">Read
	                                        More</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
					</c:forEach>						
                </div>
            </div>
        </div>
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