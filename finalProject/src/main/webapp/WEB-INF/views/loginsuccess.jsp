<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | Home </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="apple-touch-icon" sizes="57x57" href="assets/images/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="assets/images/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="assets/images/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/images/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="assets/images/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="assets/images/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="assets/images/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="assets/images/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="assets/images/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/images/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <!-- Font Awesome link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- StyleSheet link CSS -->
  <link rel="stylesheet" href="assets/css/animate.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="assets/bootstrap/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/superclasses.css" type="text/css">
  <link rel="stylesheet" href="assets/css/custom.css" type="text/css">
  <link rel="stylesheet" href="assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" type="text/css">
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
  <div class="bg-outer-wrapper float-left w-100">
    <!-- TOP BAR SECTION -->
    <div class="w-100 float-left top-bar-con main-box">
      <div class="container">
        <div class="top-bar-inner-con d-flex align-items-center justify-content-between">
          <!--<div class="left-con">
            <a href="mailto:help@traveltrek.com"><i class="fa-solid fa-envelope"></i> help@traveltrek.com</a>
             left con 
          </div>-->

          <!-- top bar inner con -->
        </div>
        <!-- container -->
      </div>
      <!-- top bar con -->
    </div>
    <div class="clearfix"></div>
    <!-- HEADER SECTION -->
    <header class="w-100 flaot-left header-con main-box position-relative">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="index">
            <figure class="mb-0">
              <img src="assets/images/logo-icon.png" alt="logo-icon">
            </figure>
          </a>
          <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link p-0" href="index">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="destinations">Destination</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdown3" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                  <a class="dropdown-item" href="booking">Booking</a>
                  <a class="dropdown-item" href="faq">Faq</a>
                  <a class="dropdown-item" href="contact">Contact</a>
                  <a class="dropdown-item" href="team">Team</a>
                  <a class="dropdown-item" href="service">Service</a>
                  <a class="dropdown-item" href="testimonial">Testimonial</a>

                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle p-0" href="blog" id="navbarDropdown4" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown4">
                  <a class="dropdown-item" href="blog">Blog</a>
                  <a class="dropdown-item" href="load-more">Load More</a>
                  <a class="dropdown-item" href="single-blog">Single Blog</a>
                  <a class="dropdown-item" href="one-column">One Column</a>
                  <a class="dropdown-item" href="two-column">Two Column</a>
                  <a class="dropdown-item" href="three-column">Three Column</a>
                  <a class="dropdown-item" href="three-colum-sidbar">Three Column Sidbar</a>
                  <a class="dropdown-item" href="four-column">Four Column</a>
                  <a class="dropdown-item" href="six-colum-full-wide">Six Column</a>
                </div>
              </li>
            </ul>
            <div class="header-contact">
              <ul class="list-unstyled mb-0">
                 <!-- list unstyled -->
              </ul>
              <!-- header contact -->
            </div>
            <!--  -->
          </div>
        </nav>
        <!-- container -->
      </div>
      <!-- header-con -->
    </header>
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con position-relative main-box">
      <img alt="vector" class="vector1  img-fluid position-absolute" src="assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="assets/images/vector2.png">
      <img alt="vector" class="vector3 img-fluid position-absolute" src="assets/images/vector3.png">
      <div class="container">
        <!-- Carousel -->
        <div class="owl-carousel">
          <div class="item">
            <div class="row align-items-center">
              <div class="col-lg-6  order-xl-0 order-lg-0 order-1">
                <div class="banner-inner-content">
                  <h4>Explore the World! <i class="fa-solid fa-earth-americas"></i></h4>
                  <h1>Let's Make Your
                    best trip Ever!</h1>
                  <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed
                    doeiusm tempor incididunt ut labore et dolore.</p>
                  <div class="green-btn d-inline-block">
                    <a href="about" class="d-inline-block">Explore Now</a>
                  </div>
                  <!-- banner inner content -->
                </div>
                <!--  -->
              </div>
              <div class="col-lg-6">
                <figure class="banner-image-con">
                  <img src="assets/images/home-banner-image.png" alt="image" class="">
                </figure>
                <!--  -->
              </div>
              <!-- row -->
            </div>
            <!-- item -->
          </div>
          <div class="item">
            <div class="row align-items-center">
              <div class="col-lg-6  order-xl-0 order-lg-0 order-1">
                <div class="banner-inner-content">
                  <h4>Explore the World! <i class="fa-solid fa-earth-americas"></i></h4>
                  <h1>Let's Make Your
                    best trip Ever!</h1>
                  <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed
                    doeiusm tempor incididunt ut labore et dolore.</p>
                  <div class="green-btn d-inline-block">
                    <a href="about" class="d-inline-block">Explore Now</a>
                  </div>
                  <!-- banner inner content -->
                </div>
                <!--  -->
              </div>
              <div class="col-lg-6">
                <figure class="banner-image-con">
                  <img src="assets/images/home-banner-image.png" alt="image" class="">
                </figure>
                <!--  -->
              </div>
              <!-- row -->
            </div>
            <!-- item -->
          </div>
          <div class="item">
            <div class="row align-items-center">
              <div class="col-lg-6  order-xl-0 order-lg-0 order-1">
                <div class="banner-inner-content">
                  <h4>Explore the World! <i class="fa-solid fa-earth-americas"></i></h4>
                  <h1>Let's Make Your
                    best trip Ever!</h1>
                  <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed
                    doeiusm tempor incididunt ut labore et dolore.</p>
                  <div class="green-btn d-inline-block">
                    <a href="about" class="d-inline-block">Explore Now</a>
                  </div>
                  <!-- banner inner content -->
                </div>
                <!--  -->
              </div>
              <div class="col-lg-6">
                <figure class="banner-image-con">
                  <img src="assets/images/home-banner-image.png" alt="image" class="">
                </figure>
                <!--  -->
              </div>
              <!-- row -->
            </div>
            <!-- item -->
          </div>
          <!-- owl carousel -->
        </div>
        <!-- container -->
      </div>

      <!-- banner con -->
    </section>
    <!-- SEARCH BOOKING TAB SECTION -->
    <div class="float-left w-100 search-booking-tab-con position-relative main-box">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <ul class="nav nav-tabs text-center align-items-center justify-content-between" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="hotel-tab" data-toggle="tab" data-target="#hotel" type="button"
              role="tab" aria-controls="hotel" aria-selected="true"> <img class="img-fluid d-block"
                src="assets/images/hotel-icon.png" alt="icon"> Hotels</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="car-tab" data-toggle="tab" data-target="#car" type="button" role="tab"
              aria-controls="car" aria-selected="false"><img class="img-fluid d-block"
                src="assets/images/car-rental-icon.png" alt="icon"> Car
              Rentals</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="flight-tab" data-toggle="tab" data-target="#flight" type="button" role="tab"
              aria-controls="flight" aria-selected="false"><img class="img-fluid d-block"
                src="assets/images/flight-icon.png" alt="icon"> Flights</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="trip-tab" data-toggle="tab" data-target="#trip" type="button" role="tab"
              aria-controls="trip" aria-selected="false"><img class="img-fluid d-block"
                src="assets/images/trip-icon.png" alt="icon"> Trips</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="cruise-tab" data-toggle="tab" data-target="#cruise" type="button" role="tab"
              aria-controls="cruise" aria-selected="false"><img class="img-fluid d-block"
                src="assets/images/cruise-icon.png" alt="icon"> Cruises</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="activity-tab" data-toggle="tab" data-target="#activity" type="button"
              role="tab" aria-controls="activity" aria-selected="false"><img class="img-fluid d-block"
                src="assets/images/activity-icon.png" alt="icon"> Activities</button>
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
            <div class="tab-inner-con text-left">

              <div class="destination-con">
                <label for="destination">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin">Check in</label>
                <input type="date" class="form-control" id="checkin" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout">Check Out</label>
                <input type="date" class="form-control" id="checkout" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults">Adults </label>
                <select class="form-select" id="adults"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children">Children </label>
                <select class="form-select" id="children">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
          </div>
          <div class="tab-pane fade" id="car" role="tabpanel" aria-labelledby="car-tab">
            <div class="tab-inner-con text-left">
              <div class="destination-con">
                <label for="destination2">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination2">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin2">Check in</label>
                <input type="date" class="form-control" id="checkin2" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout2">Check Out</label>
                <input type="date" class="form-control" id="checkout2" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults2">Adults </label>
                <select class="form-select" id="adults2"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children2">Children </label>
                <select class="form-select" id="children2">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
            <!-- car tab -->
          </div>
          <div class="tab-pane fade" id="flight" role="tabpanel" aria-labelledby="flight-tab">
            <div class="tab-inner-con text-left">

              <div class="destination-con">
                <label for="destination3">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination3">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin3">Check in</label>
                <input type="date" class="form-control" id="checkin3" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout3">Check Out</label>
                <input type="date" class="form-control" id="checkout3" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults3">Adults </label>
                <select class="form-select" id="adults3"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children3">Children </label>
                <select class="form-select" id="children3">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
            <!-- flight tab -->
          </div>
          <div class="tab-pane fade" id="trip" role="tabpanel" aria-labelledby="trip-tab">
            <div class="tab-inner-con text-left">

              <div class="destination-con">
                <label for="destination4">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination4">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin4">Check in</label>
                <input type="date" class="form-control" id="checkin4" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout4">Check Out</label>
                <input type="date" class="form-control" id="checkout4" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults4">Adults </label>
                <select class="form-select" id="adults4"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children4">Children </label>
                <select class="form-select" id="children4">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
            <!-- trip tab -->
          </div>
          <div class="tab-pane fade" id="cruise" role="tabpanel" aria-labelledby="cruise-tab">
            <div class="tab-inner-con text-left">

              <div class="destination-con">
                <label for="destination5">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination5">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin5">Check in</label>
                <input type="date" class="form-control" id="checkin5" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout5">Check Out</label>
                <input type="date" class="form-control" id="checkout5" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults5">Adults </label>
                <select class="form-select" id="adults5"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children5">Children </label>
                <select class="form-select" id="children5">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
            <!-- cruise tab -->
          </div>
          <div class="tab-pane fade" id="activity" role="tabpanel" aria-labelledby="activity-tab">
            <div class="tab-inner-con text-left">

              <div class="destination-con">
                <label for="destination6">Destination</label>
                <input type="text" class="form-control" placeholder="" id="destination6">
                <!-- col -->
              </div>
              <div class="checkin-con">
                <label for="checkin6">Check in</label>
                <input type="date" class="form-control" id="checkin6" name="checkin" required="">
                <!-- col -->
              </div>
              <div class="checkout-con">
                <label for="checkout6">Check Out</label>
                <input type="date" class="form-control" id="checkout6" name="checkout" required="">
                <!-- col -->
              </div>
              <div class="adults-con">
                <label for="adults6">Adults </label>
                <select class="form-select" id="adults6"
                  onchange="javascript: dynamicDropDown(this.options[this.selectedIndex].value);">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                <!-- col -->
              </div>
              <div class="children-con">
                <label for="children6">Children </label>
                <select class="form-select" id="children6">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                </select>
                <!-- col -->
              </div>
              <!-- tab-inner-con -->
            </div>
            <div class="green-btn d-inline-block">
              <a href="booking" class="d-inline-block">Search Now</a>
            </div>
            <!-- activity tab -->
          </div>
        </div>
        <!-- container -->
      </div>
      <!-- search booking tab con -->
    </div>
    <!-- WHAT WE SERVE SECTION -->
    <section class="float-left w-100 what-we-serve-con position-relative main-box padding-top padding-bottom">
      <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
        src="assets/images/vector4.png">
      <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
        src="assets/images/vector5.png">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <div class="row">
          <div class="col-lg-5">
            <h4 class="mustard-text text-uppercase">What We Serve</h4>
            <h2 class="text-uppercase text-right">Top Values <br>
              For You!</h2>
          </div>
          <div class="col-xl-10 col-12 mr-auto ml-auto serve-outer text-center">
            <div class="server-box var1">
              <img class="img-fluid" src="assets/images/serve-icon1.png" alt="icon">
              <h4>Lot of Choices</h4>
              <p class="mb-0">Lorem ipsum dolor sit ametc onsectetur adipiscing elit sed do eiusmod tempor incididun tut
                labore et
                dolore.</p>
              <!-- server box -->
            </div>
            <div class="server-box var2">
              <img class="img-fluid" src="assets/images/serve-icon2.png" alt="icon">
              <h4>Best Tour Guide</h4>
              <p class="mb-0">Lorem ipsum dolor sit ametc onsectetur adipiscing elit sed do eiusmod tempor incididun tut
                labore et
                dolore.</p>
              <!-- server box -->
            </div>
            <div class="server-box var3">
              <img class="img-fluid" src="assets/images/serve-icon3.png" alt="icon">
              <h4>Easy Booking </h4>
              <p class="mb-0">Lorem ipsum dolor sit ametc onsectetur adipiscing elit sed do eiusmod tempor incididun tut
                labore et
                dolore.</p>
              <!-- server box -->
            </div>
            <!-- server outer -->
          </div>
          <!-- row -->
        </div>
        <!-- container -->
      </div>
      <!-- what we serve con -->
    </section>
    <!-- bg outer wrapper -->
  </div>
  <!-- TRAVEL TOUR AND PACKAGES -->
  <section class="float-left w-100 travel-tour-con position-relative">
    <div class="color-overlay position-relative padding-top padding-bottom main-box">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <img alt="vector" class="vector7 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
          src="assets/images/vector7.png">
        <div class="heading-content text-center position-relative">
          <h4 class="text-uppercase">Explore wonderful experience</h4>
          <h2 class="text-white">Visit Popular Destinations <br>
            in the World</h2>
        </div>
        <ul class="nav nav-tabs text-center align-items-center justify-content-center" id="myTab1" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="deal-tab" data-toggle="tab" data-target="#tab1" type="button" role="tab"
              aria-controls="tab1" aria-selected="true"> Special Deals</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="popular-tab" data-toggle="tab" data-target="#tab2" type="button" role="tab"
              aria-controls="tab2" aria-selected="false"> Popular</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="recommend-tab" data-toggle="tab" data-target="#tab3" type="button" role="tab"
              aria-controls="tab3" aria-selected="false"> Recommendation</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="price-tab" data-toggle="tab" data-target="#tab4" type="button" role="tab"
              aria-controls="tab4" aria-selected="false"> Best Price</button>
          </li>

        </ul>
        <div class="tab-content" id="myTabContent1">
          <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="deal-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="popular-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="recommend-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
          <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="price-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        $545
                      </span>
                      /Person
                    </span>
                    <div class="grey-btn d-inline-block">
                      <a href="booking" class="d-inline-block">View Availability</a>
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <!-- owl carousel -->
            </div>
            <!-- tab pane -->
          </div>
        </div>
        <!-- container -->
      </div>
      <!-- color overlay -->
    </div>
    <!-- travel tour con -->
  </section>
  <!-- ABOUT US SECTION -->
  <section class="float-left w-100 about-travel-con position-relative main-box padding-top padding-bottom">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="assets/images/vector5.png">
    <img alt="vector" class="vector6 img-fluid position-absolute" src="assets/images/vector6.png">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="row">
        <div class="col-lg-6">
          <div class="about-travel-img-con position-relative">
            <figure class="about-img"><img class="img-fluid" alt="image" src="assets/images/about-travel-img1.jpg">
            </figure>
            <figure class="about-img2"><img class="img-fluid" alt="image" src="assets/images/about-travel-img2.jpg">
            </figure>
            <div class="best-destination position-absolute"><a href="https://www.youtube.com/"><i
                  class="fa-brands fa-youtube d-block"></i>Find
                Your Best
                <br>
                Destination</a>
            </div>
            <!-- about travel img con -->
          </div>
          <!-- col -->
        </div>
        <div class="col-lg-6">
          <div class="about-travel-content">
            <h4 class="text-uppercase">About TrevelTrek</h4>
            <h2>World Best Travel
              Agency Company
              Since 2015.</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et
              dolore magna aliquaquis</p>
            <ul class="list-unstyled p-0 listing">
              <li class="position-relative"><i class="fa-solid fa-check mr-3"></i>Forem commodo dolor sit amet
                consectetur adipis.</li>
              <li class="position-relative"><i class="fa-solid fa-check mr-3"></i>Sed do eiusmod tempor incididunt ut
                labore et dolore magna. </li>
              <li class="position-relative mb-0"><i class="fa-solid fa-check mr-3"></i>Ipsum suspen disse ultrices
                gravida
                risus commodo viverra. </li>
              <!-- list unstyled -->
            </ul>
            <ul class="list-unstyled p-0 m-0 d-flex align-items-center about-count">
              <li><span class="d-inline-block counter">13 </span><span class="mb-0 plus1 d-inline-block">+</span> <br>
                Year
                <br>
                Experience</li>
              <li><span class="d-inline-block counter">355 </span><span class="mb-0 plus1 d-inline-block">+</span> <br>
                Destination
                <br>
                Collaboration</li>
              <li><span class="d-inline-block counter">17k</span><span class="mb-0 plus1 d-inline-block">+</span>
                <br>Happy
                <br>
                Customers</li>
            </ul>
            <div class="green-btn d-inline-block">
              <a href="destinations" class="d-inline-block">Find Tours</a>
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
  <!-- TOP DESTINATIONS SECTION -->
  <section class="float-left w-100 top-destinations-con position-relative padding-top padding-bottom main-box">
    <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="assets/images/vector4.png">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="assets/images/vector5.png">
    <div class="container top-destination-con1 wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
        <h4 class="text-uppercase">Top Destinations</h4>
        <h2 class="">Explore the Beauty of <br>
          The World</h2>
        <!-- heading title -->
      </div>
      <div class="owl-carousel">
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img1.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Venezia, Itlay
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Rialto Bridge</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img2.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Skye, scotland
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Floating City</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img3.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Rio de Janeiro, Brazil
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Brazil City</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <!--  -->
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img1.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Venezia, Itlay
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Rialto Bridge</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img2.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Skye, scotland
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Floating City</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <div class="item">
          <div class="destination-box position-relative">
            <div class="orange-tag position-absolute">$299</div>
            <figure><img src="assets/images/destination-img3.jpg" alt="image" class="img-fluid"></figure>
            <div class="bottom-con">
              <span class="d-block text-uppercase">
                Rio de Janeiro, Brazil
              </span>
              <a href="destinations">
                <h4>Enjoy the beauty of the
                  Brazil City</h4>
              </a>
              <span class="d-inline-block star-con"><i class="fa-solid fa-star"></i> 4.9 <span
                  class="d-inline-block review-span">(1.7k Review)</span></span>
              <!-- bottom con -->
            </div>
            <!-- destination-box -->
          </div>
          <!-- item -->
        </div>
        <!-- owl carousel -->
      </div>
      <!-- container -->
    </div>
    <!-- top destinations con -->
  </section>
  <!-- REVIEW AND TESTIMONIALS SECTION -->
  <section class="float-left w-100 review-testimonial-con position-relative">
    <div class="color-overlay position-relative padding-top padding-bottom main-box">
      <div class="container wow bounceInUp" data-wow-duration="2s">
        <img alt="vector" class="vector7 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
          src="assets/images/vector7.png">
        <div class="heading-content text-center position-relative">
          <h4 class="text-uppercase">Review & Testimonials</h4>
          <h2 class="text-white">What Our Customers Are <br>
            Saying About Us</h2>
          <!-- heading content -->
        </div>
        <div class="owl-carousel">
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person1.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Kieran Wallace</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person2.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Zachary Chapman</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person3.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Abigail Dawson</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person1.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Kieran Wallace</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person2.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Zachary Chapman</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <div class="item">
            <div class="review-box position-relative">
              <div class="quote-tag position-absolute"><i class="fa-solid fa-quote-right"></i></div>
              <figure class="">
                <img src="assets/images/review-person3.png" alt="icon" class="img-fluid">
              </figure>
              <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempori ncididunt ut labore et
                dolore magna ali quaquis ipsum suspendisse ultrices gra vida risus commodo viverra maecenasa ccumsan
                lacus vel facilisis. </p>
              <h4 class="reviewer">Abigail Dawson</h4>
              <span class="d-block">company.com</span>
              <!-- review box -->
            </div>

            <!-- item -->
          </div>
          <!-- owl carousel -->
        </div>
        <!-- container -->
      </div>
      <!-- color overlay -->
    </div>
    <!-- review and testimonials con -->
  </section>
  <!-- NEWS AND ARTICLES SECTION -->
  <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
    <img alt="vector" class="vector4 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="assets/images/vector4.png">
    <img alt="vector" class="vector5 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="assets/images/vector5.png">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
        <h4 class="text-uppercase">News & Articles</h4>
        <h2 class="">Stay Update with <br>
          Traveltrek</h2>
        <!-- heading title -->
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-6">
          <div class="article-box position-relative">
            <figure><img class="img-fluid" src="assets/images/article-img1.jpg" alt="img"></figure>
            <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
              <a href="single-blog">
                <h6 class="text-white">Change your place and <br>
                  get the fresh air</h6>
              </a>
              <!-- bottom left -->
            </div>
            <!-- article box -->
          </div>
          <!-- col -->
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6">
          <div class="article-box position-relative">
            <figure><img class="img-fluid" src="assets/images/article-img2.jpg" alt="img"></figure>
            <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
              <a href="single-blog">
                <h6 class="text-white">Change your place and <br>
                  get the fresh air</h6>
              </a>
              <!-- bottom left -->
            </div>
            <!-- article box -->
          </div>
          <!-- col -->
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 last-con">
          <div class="article-box position-relative">
            <figure><img class="img-fluid" src="assets/images/article-img3.jpg" alt="img"></figure>
            <div class="bottom-left"><span class="d-block text-white">June 6, 2016 • John Smith</span>
              <a href="single-blog">
                <h6 class="text-white">Change your place and <br>
                  get the fresh air</h6>
              </a>
              <!-- bottom left -->
            </div>
            <!-- article box -->
          </div>
          <!-- col -->
        </div>
        <!-- row -->
      </div>
      <!-- container -->
    </div>
    <!-- news and article con -->
  </section>
  <!-- FOOTER SECTION -->
  <section class="float-left w-100 position-relative main-box footer-con">
    <img alt="vector" class="vector8 img-fluid position-absolute" src="assets/images/vector8.png">
    <div class="container">
      <div class="partner-con">
        <ul class="mb-0 list-unstyled d-flex align-items-center justify-content-between">
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-1.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-2.png" alt="icon">
            </figure>
          </li>
          <li class="img-mb">
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-3.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-4.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-5.png" alt="icon">
            </figure>
          </li>
          <li>
            <figure class="mb-0">
              <img class="img-fluid" src="assets/images/partner-logo-6.png" alt="icon">
            </figure>
          </li>
        </ul>
        <!-- partner con -->
      </div>
      <div class="middle-portion">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 footer-logo-con">
            <a href="index">
              <figure class="footer-logo">
                <img src="assets/images/footer-logo.png" class="img-fluid" alt="">
              </figure>
            </a>
            <p class="text-size-16 footer-text">Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod
              tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.</p>
            <figure class="mb-0 payment-icon">
              <img src="assets/images/payment-card.png" class="img-fluid" alt="">
            </figure>
          </div>
          <div class="col-lg-1 col-md-1 col-sm-6 col-12 d-lg-block d-none">

          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links">
              <h4 class="heading">Quick Links</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="index" class="text-size-16 text text-decoration-none">Home</a></li>
                <li><a href="service" class="text-size-16 text text-decoration-none">Services</a></li>
                <li><a href="about" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="blog" class="text-size-16 text text-decoration-none">Latest News</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none">Terms & Conditions</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none mb-0">Privacy Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links var1">
              <h4 class="heading">Support</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="#" class="text-size-16 text text-decoration-none">Support</a></li>
                <li><a href="contact" class="text-size-16 text text-decoration-none">Contact Us</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none">Knowledge Base</a></li>
                <li><a href="about" class="text-size-16 text text-decoration-none">About Us</a></li>
                <li><a href="faq" class="text-size-16 text text-decoration-none">FAQ</a></li>
                <li><a href="#" class="text-size-16 text text-decoration-none mb-0">Partnerships</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 col-12 d-sm-block">
            <div class="icon">
              <h4 class="heading">Get in Touch</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li class="text-size-16 text"><span class="d-inline-block">Email:</span> <a
                    href="mailto:info@traveltrek.com"
                    class="mb-0 text text-decoration-nonetext-size-16">info@traveltrek.com</a></li>
                <li class="text-size-16 text"><span class="d-inline-block">Phone:</span> <a href="tel:+12345678900"
                    class="mb-0 text text-decoration-nonetext-size-16">+1 234 567 89 0 0</a></li>
                <li class="text-size-16 text1"><span class="d-inline-block">Fax:</span> <a href="tel:+1(987)65432199"
                    class="mb-0 text text-decoration-nonetext-size-16">+1 ( 987 ) 654 321 9 9</a></li>
                <li class="social-icons">
                  <div class="circle"><a href="https://www.facebook.com/login/"><i
                        class="fa-brands fa-square-facebook"></i></a></div>
                  <div class="circle"><a href="https://twitter.com/i/flow/login"><i
                        class="fa-brands fa-square-x-twitter"></i></a></div>
                  <div class="circle"><a href="https://www.linkedin.com/login"><i class="fa-brands fa-linkedin"></i></a>
                  </div>
                  <div class="circle"><a href="https://www.pinterest.com/"><i
                        class="fa-brands fa-square-pinterest"></i></a></div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright-con">
        <div class="row">
          <div class="col-12">
            <p class="text-size-16">Copyright ©2024 TravelTrek.com All Rights Reserved
            </p>
          </div>
        </div>
        <!-- copyright con -->
      </div>
      <!-- container -->
    </div>
    <!-- footer con -->
  </section>

  <!-- BACK TO TOP BUTTON -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/owl.carousel.js"></script>
  <script src="assets/js/contact-form.js"></script>
  <script src="assets/js/video-popup.js"></script>
  <script src="assets/js/video-section.js"></script>
  <script src="assets/js/jquery.validate.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/counter.js"></script>
  <script src="assets/js/custom.js"></script>
  <script src="assets/js/search.js"></script>
</body>

</html>