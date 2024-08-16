<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>HOTSPOT | Home</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Favicon Links -->
  <link rel="apple-touch-icon" sizes="57x57" href="${path}/assets/images/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="${path}/assets/images/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="${path}/assets/images/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/images/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="${path}/assets/images/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="${path}/assets/images/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="${path}/assets/images/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="${path}/assets/images/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="${path}/assets/images/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="${path}/assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${path}/assets/images/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="${path}/assets/images/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${path}/assets/images/favicon/favicon-16x16.png">
  <link rel="manifest" href="${path}/assets/images/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="${path}/assets/images/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <!-- Font Awesome 링크 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

  <!-- 스타일 시트 -->
  <link rel="stylesheet" href="${path}/assets/css/animate.css">
  <link rel="stylesheet" href="${path}/assets/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${path}/assets/css/superclasses.css">
  <link rel="stylesheet" href="${path}/css/realLogin.css">
  <link rel="stylesheet" href="${path}/css/login.css">
  <link rel="stylesheet" href="${path}/css/main.css">
  <link rel="stylesheet" href="${path}/assets/css/responsive.css">
  <link rel="stylesheet" href="${path}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${path}/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
  <link rel="stylesheet" href="${path}/css/index.css">

  <!-- 스크립트 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="${path}/assets/js/owl.carousel.js"></script>
  <script src="${path}/assets/js/contact-form.js"></script>
  <script src="${path}/assets/js/video-popup.js"></script>
  <script src="${path}/assets/js/video-section.js"></script>
  <script src="${path}/assets/js/jquery.validate.js"></script>
  <script src="${path}/assets/js/wow.js"></script>
  <script src="${path}/assets/js/custom.js"></script>
  <script src="${path}/assets/js/search.js"></script>
  <script src="${path}/js/scripts.js" defer></script>

  <!-- 인라인 스크립트 -->
  <script>
    function filterImages() {
      const searchInput = document.getElementById('searchInput').value.toLowerCase();
      const images = document.querySelectorAll('#image .col-lg-4, #image .col-md-4, #image .col-sm-6');
     
      images.forEach(image => {
        const name = image.getAttribute('data-name').toLowerCase();
        image.style.display = name.includes(searchInput) ? '' : 'none';
      });
    }

    window.onload = function() {
      const modal = document.getElementById("myModal");
      const modalImg = document.getElementById("modalImage");
      const modalNameEng = document.getElementById("modalNameEng");
      const modalNameKor = document.getElementById("modalNameKor");
      const modalContent = document.getElementById("modalContent");
      const span = document.getElementsByClassName("close")[0];
      var buttonCal = document.getElementById("buttonCal");
     
      document.querySelectorAll("#image .cursor-pointer").forEach(box => {
        box.onclick = function() {
          const nameEng = this.getAttribute("data-name-eng");
          const nameKor = this.getAttribute("data-name-kor");
          const imageUrl = this.getAttribute("data-image");
          const content = this.getAttribute("data-content");

          modalNameEng.textContent = nameEng;
          modalNameKor.textContent = nameKor;
          modalImg.src = imageUrl;
          modalContent.textContent = content || '내용이 없습니다.';
          
		  // 링크에 local_name_kor 쿼리 파라미터 추가
          buttonCal.href = "/calendar/calendar?local=" + encodeURIComponent(nameKor);
       		
          modal.style.display = "block";
        }
      });

      span.onclick = () => modal.style.display = "none";
     
      window.onclick = event => {
        if (event.target === modal) {
          modal.style.display = "none";
        }
      };

      document.addEventListener('keydown', event => {
        if (event.key === 'Escape') {
          modal.style.display = 'none';
        }
      });
    }
  </script>
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
    <div class="clearfix"></div>
    <jsp:include page="/WEB-INF/views/header.jsp" />
  </div>

  <!-- 뉴스 및 아티클 섹션 -->
  <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
        <h3 style="font-weight: bold; color:black;">어디로 여행을 떠나시나요?</h3>
        <input type="text" class="input-field" id="searchInput" placeholder="검색어를 입력하세요" oninput="filterImages()">
        <i class="icon fas fa-search" onclick="filterImages()"></i>
      </div>
      <div class="row" id="image">
        <c:forEach var="location" items="${localList}">
          <div class="cursor-pointer col-lg-4 col-md-4 col-sm-6"
               data-name="${location.local_name_kor}"
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
                <h6 class="text-white">${location.local_name_eng}</h6>
                <h6 class="text-white">${location.local_name_kor}</h6>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </section>

  <!-- 모달 구조 -->
  <div id="myModal" class="modal">
    <div class="modal-content fixed top-0 bottom-0 left-0 right-0 flex items-center justify-center bg-black bg-opacity-25 focus:outline-none z-50" tabindex="-1">
      <div class="modal-inner bg-white p-4 rounded shadow-lg">
        <div class="relative m-4 md:m-8 bg-white rounded-lg shadow max-h-[82vh] w-full md:w-auto">
          <span class="close">&times;</span>
          <div class="flex flex-row flex-wrap px-8 py-8 bg-white rounded-lg md:flex-nowrap md:flex-inherit md:px-16 md:py-16">
            <div>
              <h2 id="modalNameEng" class="text-sm text-gray-500 md:text-xl font-Montserrat"></h2>
              <h3 id="modalNameKor" class="mb-4 text-xl font-bold leading-none md:mb-2 md:text-4xl"></h3>
            </div>
          </div>
          <div class="pt-4 text-xs text-justify lg:text-sm line-clamp-3 md:line-clamp-none">
            <p id="modalContent"></p>
          </div>
        </div>
        <div class="relative hidden md:flex items-center justify-center">
          <div class="relative w-full h-[300px]">
            <img id="modalImage" class="img-fluid relative object-cover w-full h-full shadow-sm brightness-95" style="width: 100%; height: auto;">
          </div>
        </div>
        <div class="plan items-center justify-center mt-4">
          <div class="w-full">
            <a id="buttonCal" href="calendar/calendar" class="buttonCal">
              <div class="font-bold">일정만들기</div>
              <i class="ml-2 text-lg fa-solid fa-chevron-right md:block"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- TOP 버튼 -->
  <button id="back-to-top-btn" title="Back to Top"></button>

</body>

</html>