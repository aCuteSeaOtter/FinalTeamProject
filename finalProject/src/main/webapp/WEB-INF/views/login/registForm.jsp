<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>

<!-- registForm-->
<!DOCTYPE html>
<html lang="zxx">

<head> 
  <title>Travel | 회원가입</title>
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
  <link rel="stylesheet" href="/css/login.css" type="text/css">
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
  
    <div class="clearfix"></div>
    <!-- HEADER SECTION -->
	<jsp:include page="/WEB-INF/views/header.jsp" />
   
        <!-- container -->
      </div>

      <!-- header-con -->
    </header>
	
	
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box">
        <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h1>회원가입</h1>
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
  
     
 <div class="row">
        <div class="col-12">
          <div class="join-box">
            <form action="regist" method="POST" onsubmit="return validatePassword()">
                <div class="col-lg-15 col-md-15 col-sm-20 col-20">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
				<div class="col-12"><!--12-->
					  <div class="form-email">
					    <label>이메일</label>
						<input type="email" style="width:200px; height:30px;"name="member_email" placeholder="Enter Your Email Address"
					      id="email"required>
					  </div>
					</div>
					<br/>
					<div class="col-12">
					    <div class="form-pass">
						<label>비밀번호</label>
					   <input type="password" style="width:190px; height:30px;"class="form_style" placeholder="Enter Your passwords" name="member_pass"
					   id="fname" minlength="6" required>
					<span	id="password-error" class="error"></span>  
					
				       </div>
					  </div>
					  <br/>
					    <div class="col-12"><!--6--><!--12-->
					    <div class="form-birth">
					  <label>생년월일</label>
					  						
					  	<select name="year" id="year1" style="width:49px; height:30px;" required></select>년
					  	<select name="month"id="month1"style="width:35px; height:30px;"required></select>월
					  	<select name="day"	id="day1"  style="width:30px; height:30px;"required></select>일
					  	</div>
					  	</div>
						<br/>
						<div class="col-12"><!--12-->
					 <div class="form-nickname">
					<label>닉네임</label>
					<input type="text" style="width:200px; height:30px;"class="mb-md-0 form_style" placeholder="Enter Your nickname"
					 name="member_nickname"required>
					 </div>
					 </div>
					 <br/>
					 <div class="col-12"><!--12-->
					<div class="form-gender">
					<label>성별</label>
						<label for="male">남</label>
					<input type="radio" style="width:20px; height:20px;"id="male" name="member_gender" value="M" required>
				<label for="female">여</label>
				<input type="radio" style="width:20px; height:20px;" id="female" name="member_gender" value="F"required>
				</div>
			</div>
					
														
														<!--<div class="col-lg-6 col-md-6 col-sm-12 col-12">-->
															<br/>											        
														             <div class="col-12"><!--12-->
														                    <div class="form-agree">
															<!--				  <textarea class="form_style" style="margin:10px; padding:10px;"placeholder="이용약관" rows="5" name="msg">
																				이 서비스는 개인정보 보호를 위해 최선을 다하겠습니다. 사용자는 자신의 개인정보를
																			  안전하게 보호하기 위해 필요한 조치를 취해야 합니다.
																			  </textarea>-->
																			  <br/>
																			  <label for="agree_terms">
																			<a	href="agreeForm" target="_blank">이용약관</a></label>
																			<input type="checkbox"id="agree_terms" name="agree_terms" required> 
														                    </div> 
														                  </div>
				
																	  
																		  <div class="col-12"><!--12-->
																		                      <div class="join">
																		  						  <div class="join-button">
																		                          <button type="submit" name="submit"
																		                            class="join_now text-white text-decoration-none w-100">
																		                           가입하기</button>
																		  						 </div>
																		                        </div>
																		                      </div>
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
  
  <script>
  	$(document).ready(function () {
  	let today = new Date();
  	let year = today.getFullYear();
  	console.log(year);

  	 //년도 selectbox 만들기
  	  for (i = 1940; i <= year; i++) {
  	    $('#year1').append('<option value="' + i + '">' + i + '</option>');
  	  }

  	  //월 selectbox 만들기
  	  for (i = 1; i <= 12; i++) {
  	    $('#month1').append('<option value="' + i + '">' + i + '</option>');
  	  }


  		  //일 selectbox 만들기
  		  for (i = 1; i <= 31; i++) {
  		    $('#day1').append('<option value="' + i + '">' + i + '</option>');
  		  }
 
}); // end of ready function

		 
</script>

<script>
	
	document.addEventListener('DOMContentLoaded', function() {
	    document.querySelector('form').addEventListener('submit', function(event) {
	        // 비밀번호 입력란
	        var passwordInput = document.getElementById('fname');
	        var password = passwordInput.value;
	        
	        // 비밀번호의 길이 확인 (6자리 이상인지)
	        if (password.length < 6) {
	            alert('비밀번호는 최소 6자리 이상이어야 합니다.');
	            event.preventDefault(); // 폼 제출 막기
	        }
	    });
	});

	</script>
 
	<script>
function validatePassword()	{
	const password = document.getElementById('fname').value;
	const errorSpan = document.getElementById('password-error');
	const specialChar= /[!@#$%^&*(),.?":{}|<>]/;

	if(!specialChar.test(password)){
		errorSpan.textContent='비밀번호에는 특수문자가 포함되어야합니다';
		return false;
	}
	errorSpan.textContent=''; // 오류메시지 지움
	return true; // 폼 제출 막음

}// end of function
		
</script>

	
	</body>

</html>