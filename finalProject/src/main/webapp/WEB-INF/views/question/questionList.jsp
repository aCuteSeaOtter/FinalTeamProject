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
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>문의사항</h1>
              <p class="font-size-20">화끈한 문의를 작성해 보아요 🥵🥵<br>
									  ⬇️ 아래 링크 클릭
              </p>
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="/question/questionWrite">Home</a></li>
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
  <!-- TALK TO US SECTION -->
  <section
    class="float-left w-100 about-travel-con talk-to-us-con position-relative main-box padding-top padding-bottom">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector5.png">
    <img alt="vector" class="vector6 img-fluid position-absolute" src="/assets/images/vector6.png">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="row">
        <div class="col-lg-6">
          <div class="about-travel-img-con position-relative">
            <figure class="about-img"><img class="img-fluid" alt="image" src="/assets/images/talk-to-us-img1.jpg">
            </figure>
            <figure class="about-img2"><img class="img-fluid" alt="image" src="/assets/images/talk-to-us-img2.jpg">
            </figure>
            <!-- about travel img con -->
          </div>
          <!-- col -->
        </div>
        <div class="col-lg-6">
          <div class="about-travel-content">
            <h4 class="text-uppercase">Talk to us</h4>
            <h2>Get in Touch <br>
              With Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et
              dolore magna aliquaquis</p>
            <div class="contact-info">
              <h4 class="text-uppercase sub-heading">Contact Info</h4>
              <ul class="list-unstyled p-0 m-0 contact-info-inner-wrapper">
                <li><a href="mailto:support@traveltek.com"><i class="fa-solid fa-envelope"></i>
                    support@traveltek.com</a></li>
                <li><a href="tel:+1(0800)123456"><i class="fa-solid fa-square-phone"></i> +1 (0800) 123
                    456</a></li>
                <li><i class="fa-solid fa-location-dot"></i> Envato, King Street, Melbourne VIC, Australia</li>
                <!-- contact info inner wrapper -->
              </ul>
              <div class="social-icons d-inline-block">
                <div class="circle d-inline-block"><a href="https://www.facebook.com/login/"><i
                      class="fa-brands fa-square-facebook"></i></a></div>
                <div class="circle d-inline-block"><a href="https://twitter.com/i/flow/login"><i
                      class="fa-brands fa-square-x-twitter"></i></a></div>
                <div class="circle d-inline-block"><a href="https://www.linkedin.com/login"><i
                      class="fa-brands fa-linkedin"></i></a>
                </div>
                <div class="circle d-inline-block"><a href="https://www.pinterest.com/"><i
                      class="fa-brands fa-square-pinterest"></i></a></div>
              </div>
            </div>
            <!-- about travel content -->
          </div>
          <!-- col -->
        </div>
        <!-- row -->
      </div>
      <!-- container -->
    </div>
    <!-- about travel con -->
  </section>
  <!-- CONTACT FORM SECTION  -->
  <section class="float-left w-100 talk-width-our-team-con position-relative main-box padding-top padding-bottom">
    <img alt="vector" class="vector11 img-fluid position-absolute wow bounceInUp" data-wow-duration="2s"
      src="/assets/images/vector11.png">
    <img alt="vector" class="vector9 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector9.png">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
        <h4 class="text-uppercase">Talk with our team</h4>
        <h2 class="">Any Question? Feel Free <br>
          to Contact
        </h2>
        <!-- heading title -->
      </div>
      <div class="row">
        <div class="col-12">
          <div class="register-box">
            <form id="contactpage" method="POST">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                  <div class="row">
                    <div class="col-12">
                      <div class="form-group">
                        <label>Your Name:</label>
                        <input type="text" class="form_style" placeholder="Enter Your Full Name:" name="fname"
                          id="fname">
                      </div>
                    </div>
                    <div class="col-12">
                      <div class="form-group">
                        <label>Your Email:</label>
                        <input type="email" class="form_style" placeholder="Enter Your Email Address" name="email"
                          id="email">
                      </div>
                    </div>
                    <div class="col-12">
                      <div class="form-group fon-con">
                        <label>Your Phone:</label>
                        <input type="tel" class="mb-md-0 form_style" placeholder="Enter Your Contact Number:"
                          name="phone" id="phone">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                  <div class="row">
                    <div class="col-12">
                      <div class="form-group mb-0">
                        <label>Your Message:</label>
                        <textarea class="form_style" placeholder="Add your Comments:" rows="5" name="msg"></textarea>
                      </div>
                    </div>
                    <div class="col-12">
                      <div class="manage-button">
                        <button type="submit" id="submit"
                          class="register_now text-white text-decoration-none w-100">Send
                          Now</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- container -->
    </div>
    <!-- talk with our team con -->
  </section>
  <!-- MAP SECTION -->
  <div class="float-left w-100 contact-map-con position-relative main-box">
    <div class="container-fluid p-0 wow bounceInUp" data-wow-duration="2s">
      <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.367176743588!2d144.95736461590413!3d-37.81813957974638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65cbce858f6d7%3A0x9cc486b305ba3fb1!2s21%20King%20St%2C%20Melbourne%20VIC%203000%2C%20Australia!5e0!3m2!1sen!2s!4v1669200882885!5m2!1sen!2s"
        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
      </iframe>
      <!-- container fluid -->
    </div>
    <!-- contact map con -->
  </div>
  <jsp:include page="/WEB-INF/views/footer.jsp" />
  </section>

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