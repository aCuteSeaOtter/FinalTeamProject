<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>
<!--loginForm-->

<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Travel | Login </title> 
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
  <link rel="stylesheet" href="/assets/css/custom.css" type="text/css">
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
   
   <div class="clearfix"></div>
   <!-- HEADER SECTION -->
  <jsp:include page="/WEB-INF/views/header.jsp" />

       <!-- container -->
     </div>

     <!-- header-con -->
   </header>
    <!-- BANNER SECTION -->
    <section class="float-left w-100 banner-con sub-banner-con position-relative main-box" style=" background: linear-gradient(to bottom, #b2f3de 0%, #ffffff 100%); color:white;">
       <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="sub-banner-inner-con padding-bottom">
              <h2 class="flex-container">비밀번호찾기</h2>
			  
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
  <!-- TALK TO US SECTION -->

   <div class="container wow bounceInUp" ><!--data-wow-duration="2s"-->
     
 <div class="center-content"><!--row-->
      <!-- <div class="col-12">-->
          <div class="login-box">
            <form action="loginForm" method="POST">
				<div class="col-lg-10 col-md-10 col-sm-12 col-12">
					<!--col-lg-10 col-md-10 col-sm-12 col-12-->
                			
					<div class="col-12"><!--12-->
					<div class="login-group">
					 <p for="memberEmail">이메일</p>
					 <h6>가입시 등록하신 이메일주소로 인증번호 보내드립니다.</h6>
					 <br/>
				 <input type="email" style="width:240px; height:40px;" name="member_email" placeholder="Enter Your Email Address"
			id="emailText" required><span></span>
			<button onClick="conFirm()" type="button" name="submit"
				       id="emailCheckBtn" onclick="emailSned()" class="btn btn-outline-dark mb-3 btn-sm">인증번호받기</button>
		 </div>
		 <div class="mt-1 form-text" id="emailCheckWarn" style="font-weight: bolder;"></div>
		 <br/>
	</div> <!--class="col-12" -->
	 <div class="mb-5">
	<p>인증번호 입력</p>
	 <div class="d-flex align-items-right"><!--border-bottom d-flex justify-content-between-->
		<input type="password" style="width:240px; height:40px;" name="enteredCode" id="injeungbunho"required>
		<button type="button" id="injeungCheckBtn" class="btn btn-outline-dark mb-3 btn-sm">인증하기</button>
		<input type="hidden" id="certificationYN" value="false">
	</div>
	<div class="mt-1 form-text" id="injeungCheckWarn" style="font-weight: bolder;"></div>
	 </div>
		  <div class="col-8">
		   <div class="checkbtn">
		     <button onClick="check()" type="submit" name="submit"
		     class="check_now text-white text-decoration-none w-100">확인</button>
		    </div>
		   </div>
  </div><!-- row -->
                  </div>
                 </div>
			  <p>${error}</p>
			  </form>
        <!-- </div>-->
        </div>
  
    <!--</section>-->
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
	
	function check(){
		alert('성공');
		window.location.href = '/login/loginForm';
	}
	
  </script>

  <script>
  function emailSend(){ //이메일 보냄
	let clientEmail = document.getElementById('emailText').value;
	console.log('입력한 메일'+clientEmail);
	
	$.ajax({
		type:"POST",
		url:"/Checkmail",
		data:{member_email:clientEmail},
		success:function(data){
			alert("인증번호 발송O");
			console.log('성공'+data);
		},error:function(e){
			alert("인증번호 발송X")
			console.log('실패'+e);
		}
	}) 
}</script>
 
<script>
//이메일 인증
function injeungCheckBtn(){
	let clientEmail=document.getElementById('emailText').value;
	let inputCode = document.getElementById('injeungbunho').value;
	
	console.log('이메일'+clientEmail);
	console.log('인증코드'+inputCode);
	
	$.ajax({
		type="POST",
		data:{member_email:clientEmail,inputCode:inputCode},
		success:function(data){
			console.log(data);
			if(data==true){
				alert('완료')
				documnet.getElementById('certificationYN').value="true";
				clientEmail.onchange=function(){
					document.getElementById('certificationYN').value="false";				}//onchange,function
			}else{
				alert('재시도');
			}
		},error:function(e){
			alert('오류')
			console.log('에러' + e)
		}
	})
} 	
	</script>

</body>

</html>