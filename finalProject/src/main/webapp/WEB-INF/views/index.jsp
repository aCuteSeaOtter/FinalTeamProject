<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
 
<head>
  <title> HOTSPOT | Home </title>
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
<!-- <link rel="stylesheet" href="/css/custom.css" type="text/css">-->
<link rel="stylesheet" href="css/realLogin.css" type="text/css">
  <link rel="stylesheet" href="css/login.css" type="text/css">
  <link rel="stylesheet" href="css/main.css" type="text/css">
  <link rel="stylesheet" href="assets/css/responsive.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />"> <!--추가한거-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </head>

<body>

  <!-- LOADER -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>
  
  <jsp:include page="/WEB-INF/views/header.jsp" />
  <!-- OUTER BG WRAPPER -->
  <div class="bg-outer-wrapper float-left w-100">
      </div>
    <div class="clearfix"></div> 
    
    <!-- bg outer wrapper -->
  </div>
   <!-- NEWS AND ARTICLES SECTION -->
  <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
      <h3 style="font-weight: bold; color:black;">어디로 여행을 떠나시나요?</h3>
      <br/>
      <input type="text" class="input-field" id="searchInput" placeholder="검색어를 입력하세요" 
	  oninput="filterImages()">
      <i class="icon fas fa-search" onClick="filterImages()"></i>
     </div>
     <br/>
     <br/>
     <br/>
     <br/>
      <!--////////이미지///////////-->
      <div class="row" id="image">
         <c:forEach var="location" items="${localList}">
             <div class="cursor-pointer col-lg-4 col-md-4 col-sm-6" data-name="${location.local_name_kor}"
			 data-image="${location.local_image}"
			 data-name-eng="${location.local_name_eng}"
			 data-name-kor="${location.local_name_kor}"
			 data-content="${location.local_content}">
                 <div class="article-box position-relative">
                     <figure class="image-container">
					    <a href="#" class="image-link">
						<img class="img-fluid" src="${location.local_image}" alt="이미지" style="width:400px; height:300px;">
						</a>
					</figure>
                     <div class="bottom-left">
                         <span class="d-block text-white"></span>
                           <h6 class="text-white">
                                ${location.local_name_eng}
                          </h6>
                         <h6 class="text-white">
                             ${location.local_name_kor}
                          </h6>
                     </div> <!-- bottom left -->
                 </div> <!-- article box -->
             </div><!-- col -->
         </c:forEach>

      </div><!--row-->
      
   </section> <!-- news and article con -->

   <!--Modal Structure-->
   <div id="myModal" class="modal">
   	<div class="modal-content fixed top-0 bottom-0 left-0 right-0 flex items-center justify-center 
   	bg-black bg-opacity-25 focus:outline-none z-50" tabindex="-1">
   	<div class="modal-inner bg-white p-4 rounded shadow-lg">
   		<div class="relative m-4 md:m-8 bg-white rounded-lg shadow max-h-[82vh] overflow-y-auto w-full md:w-auto">
   		<span class="close">&times;</span>
	<!--<div class="flex flex-col justify-center max-w-screen-lg">-->
   		<div class="flex flex-row flex-wrap px-8 py-8 bg-white rounded-lg md:flex-nowrap md:flex-inherit md:px-16 md:py-16">
   		<div>
		<h2	id="modalNameEng" class="text-sm text-gray-500 md:text-xl font-Montserrat"></h2>
   		<h3	id="modalNameKor" class="mb-4 text-xl font-bold leading-none md:mb-2 md:text-4xl"></h3>
		</div>
		</div><!--flex flex-row flex-wrap-->
   		<!--<div class="relative mt-2 md:hidden h-[180px] w-full">-->
<!-- <div class="grid w-full grid-cols-2 gap-2 mt-4 md:hidden"></div>-->
   		<div class="pt-4 text-xs text-justify lg:text-sm line-clamp-3 md:line-clamp-none">
   		<p id="modalContent"></p>
   		</div><!--relative flex flex-col justify-between p-6"-->
     
   		</div><!--relative m-4 md:m-8 bg-white rounded-lg shadow max-h-[82vh] overflow-y-auto w-full md:w-auto-->
  <!-- 	</div>-->
   	
	</div><!--relative flex flex-col-->		
  		
   		<div class="relative hidden md:flex items-center justify-center">
   			<div class="relative w-full h-[300px]">
   			<img id="modalImage" class="img-fluid relative object-cover w-full h-full shadow-sm brightness-95" style="width: 100%; height: auto;">	
   		</div><!--relative w-full h-[340px]-->
   		</div><!--relative flex-col items-center -->		
		<div class="plan items-center justify-center mt-4">
		  <div class="w-full">
			 <a href="#" class="button">
			<div class="font-bold">일정만들기</div>
		  	<i class="ml-2 text-lg fa-solid fa-chevron-right md:block"></i>
		   </a>
	 	</div><!-- w-full -->
		</div><!-- flex items-center -->
   	</div><!--fixed top-0 bottom-0 left-0 right-0 flex items-center-->	
   </div>
   </div>
     <!-- BACK TO TOP BUTTON -->
  <button id="back-to-top-btn" title="Back to Top"></button>
  <script src="assets/js/owl.carousel.js"></script>
  <script src="assets/js/contact-form.js"></script>
  <script src="assets/js/video-popup.js"></script>
  <script src="assets/js/video-section.js"></script>
  <script src="assets/js/jquery.validate.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/custom.js"></script> 
  <script src="assets/js/search.js"></script>
  <script src="<c:url value='/js/scripts.js' />" defer></script>
<!--  <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/popper.min.js"></script>
   <script src="assets/js/bootstrap.min.js"></script>-->
  
    <script>
	
	function filterImages() {
	    const searchInput = document.getElementById('searchInput').value.toLowerCase();
	    const images = document.querySelectorAll('#image .col-lg-4, #image .col-md-4, #image .col-sm-6');
	    
	    images.forEach(image => {
	        const name = image.getAttribute('data-name').toLowerCase();
	        if (name.includes(searchInput)) {
	            image.style.display = '';
	        } else {
	            image.style.display = 'none';
	        }
	    });
	} 
	
</script>

<script>
	// 페이지가 로드된 후 실행
	window.onload = function() {
	    var modal = document.getElementById("myModal");
	    var modalImg = document.getElementById("modalImage");
		var modalNameEng=document.getElementById("modalNameEng");
		var modalNameKor=document.getElementById("modalNameKor");
		var modalContent=document.getElementById("modalContent");
	    var span = document.getElementsByClassName("close")[0];
	    
	    // 모든 이미지 박스에 클릭 이벤트 추가
	    var imageBoxes = document.querySelectorAll("#image .cursor-pointer");
	    imageBoxes.forEach(function(box) {
	        box.onclick = function() {
				var nameEng = this.getAttribute("data-name-eng");
				var nameKor = this.getAttribute("data-name-kor");
				var imageUrl = this.getAttribute("data-image");
				var content = this.getAttribute("data-content");
	            
	            //콘솔에 content 값 출력
				console.log("Content: ",content);
	        	
			//모달 창 내용 업데이트
			modalNameEng.textContent=nameEng;
			modalNameKor.textContent=nameKor;
			modalImg.src=imageUrl;
			modalContent.textContent=content || '내용이 없습니다.';
		
			modal.style.display = "block";
		}
	    });

	    // 모달 창 닫기 버튼 클릭 시
	    span.onclick = function() {
	        modal.style.display = "none";
	    }

	    // 모달 창 바깥 부분 클릭 시
	    window.onclick = function(event) {
	        if (event.target == modal) {
	            modal.style.display = "none";
	        }
	    }
	}
</script>
</body>
</html>