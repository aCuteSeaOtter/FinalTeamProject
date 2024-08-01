<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>

<!-- registForm-->
<!DOCTYPE html>
<html lang="zxx"> 

<head> 
  <title>Travel | 이용약관</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-aweson/5.15.4/css/all.min.css">
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
 <!-- <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">-->
 <link rel="stylesheet" href="/css/login.css" type="text/css">
 <link rel="stylesheet" href="/css/realLogin.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
          </div>
        <!-- container -->
      </div>
      <!-- top bar con -->
    </div>
    <div class="clearfix"></div>
    <!-- HEADER SECTION -->
	
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
      <img alt="vector" class="vector1  img-fluid position-absolute" src="/assets/images/vector1.png">
      <img alt="vector" class="vector2 img-fluid position-absolute" src="/assets/images/vector2.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h2>다음 내용에 동의해주세요</h2>
         <!--     <p class="font-size-20">Lorem ipsum dolor sit amet consectetur adipiscing elit sed doeiusm tempor
                incididunt
                ut labore et dolore.
              </p>-->
              <div class="breadcrumb-con d-inline-block" data-aos="fade-up" data-aos-duration="600">
               <!-- <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="index">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol> -->
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
   <!-- CONTACT FORM SECTION  -->
  <section class="float-left w-100 talk-width-our-team-con position-relative main-box padding-top padding-bottom">
  <!--<img alt="vector" class="vector11 img-fluid position-absolute wow bounceInUp" data-wow-duration="2s"
      src="/assets/images/vector11.png">
    <img alt="vector" class="vector9 wow bounceInUp img-fluid position-absolute" data-wow-duration="2s"
      src="/assets/images/vector9.png">-->
    <div class="container wow bounceInUp" ><!--data-wow-duration="2s"-->
   <!--  <div class="heading-title text-center">
        <h4 class="text-uppercase">Talk with our team</h4>
        <h2 class="">Any Question? Feel Free <br>
          to Contact
        </h2>
         heading title 
      </div>-->
     
 <div class="row">
        <div class="col-12">
          <div class="agree-box">
            <form action="regist"method="POST">
              <div class="row">
                <div class="col-lg-15 col-md-15 col-sm-20 col-20">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
                
				  <div class="row">
				
					<div class="col-12"><!--12-->
										  <div class="agree_Form">
											<input type="checkbox"id="agree_terms0" required>
											<label>모두 동의합니다</label>
											<br/>
											이 서비스는 개인정보 보호를 위해 최선을 다하겠습니다. 사용자는 자신의 개인정보를
											안전하게 보호하기 위해 필요한 조치를 취해야 합니다.
											<!--<textarea class="form_style" style="margin:20px; padding:20px;"placeholder="이용약관" rows="5" name="msg">
											이 서비스는 개인정보 보호를 위해 최선을 다하겠습니다. 사용자는 자신의 개인정보를
											 안전하게 보호하기 위해 필요한 조치를 취해야 합니다.
											</textarea> -->
										  </div>
										</div>
					
					
					<div class="col-12"><!--12-->
					  <div class="agree_Form">
						<input type="checkbox"id="agree_terms" required>
						<label>[필수]이용약관</label>
					  	
						<br/>
						이 서비스는 개인정보 보호를 위해 최선을 다하겠습니다. 사용자는 자신의 개인정보를
						안전하게 보호하기 위해 필요한 조치를 취해야 합니다.
						<!--<textarea class="form_style" style="margin:20px; padding:20px;"placeholder="이용약관" rows="5" name="msg">
						</textarea>-->
					  </div>
					</div>
					<!--///////////////-->
					<div class="col-12"><!--12-->
					  <div class="agree_Form">
					   <input type="checkbox"id="agree_terms1"required>
					   <label>[필수]개인정보보호</label>
					   	<br/>
						당사는 이용자의 개인정보 수집 시 서비스 제공을 위해 필요한 범위에서 최소한의 개인정보를 수집합니다.
						당사는 이용자의 개인정보를 수집 이용하는 때에는 이용자에게 그 목적을 고지하고 동의받습니다.
						  </div>
							</div>
							
							<!--///////////////-->
						<div class="col-12"><!--12-->
				  <div class="agree_Form">
				  	<input type="checkbox"id="agree_terms2" name="agree_terms2" required>
					<label>[선택]제3자정보제공</label>
					<br/>
					당사에서 개인정보의 제3자 제공이 발생하는 경우는 주로 서비스 이용 도중 다른 회사에서 제공하는 부가 서비스를 이용할 경우입니다.
					<!--<textarea class="form_style" style="margin:20px; padding:20px;"placeholder="선택사항" rows="5" name="msg">
							
						</textarea> -->
						  </div>
						</div>
						<button	></button>
												
				
				
				</div><!-- row -->
		
				</div>
                
              </div>
            </form>
          </div>
        </div>
  
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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>>
  <script>
	$(document).ready(function() {
	    // '모두 동의합니다' 체크박스 선택 시
	    $('#agree_terms0').change(function() {
	        var isChecked = $(this).prop('checked');
	        
	        // 나머지 체크박스들의 상태 변경
	        $('#agree_terms').prop('checked', isChecked);
	        $('#agree_terms1').prop('checked', isChecked);
	        $('#agree_terms2').prop('checked', isChecked);
	    });

	    // 다른 체크박스들(change 이벤트 발생 시)에 대한 처리
	    $('#agree_terms, #agree_terms1, #agree_terms2').change(function() {
	        // 모든 체크박스 상태 확인
	        var allChecked = $('#agree_terms0').prop('checked') &&
	                         $('#agree_terms').prop('checked') &&
	                         $('#agree_terms1').prop('checked') &&
	                         $('#agree_terms2').prop('checked');

	        // '모두 동의합니다' 체크박스 상태 설정
	        $('#agree_terms0').prop('checked', allChecked);
	    });
	});	
	</script>

</body>

</html>