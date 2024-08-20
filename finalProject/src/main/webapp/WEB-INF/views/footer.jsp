<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
	
<!-- FOOTER SECTION --> 
  <section class="float-left w-100 position-relative main-box footer-con">
    <img alt="vector" class="vector8 img-fluid position-absolute" src="/assets/images/vector8.png">
    <div class="container">
      
      <div class="middle-portion">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 footer-logo-con">
            <a href="/">
              <figure class="footer-logo">
                <img src="/assets/images/logo-icon.png" class="img-fluid" alt="">
              </figure>
            </a>
          </div>
          <div class="col-lg-1 col-md-1 col-sm-6 col-12 d-lg-block d-none">

          </div>
          <div class="col-lg-2 col-md-6 col-sm-6 col-12">
            <div class="links">
              <h4 class="heading">Quick Links</h4>
              <hr class="line">
              <ul class="list-unstyled mb-0">
                <li><a href="/login/loginForm" class="text-size-16 text text-decoration-none">로그인</a></li>
                <li><a href="/login/registForm" class="text-size-16 text text-decoration-none">회원가입</a></li>
                <li><a href="/" class="text-size-16 text text-decoration-none">홈</a></li>
                <li><a href="/plan/planList" class="text-size-16 text text-decoration-none">일정</a></li>
                <li><a href="/review/reviewList" class="text-size-16 text text-decoration-none">여행후기</a></li>
                <li><a href="/magazine/magazineList" class="text-size-16 text text-decoration-none mb-0">매거진</a></li>
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
                    class="mb-0 text text-decoration-nonetext-size-16">sedr8456@naver.com</a></li>
                <li class="text-size-16 text"><span class="d-inline-block">Phone:</span> <a href="tel:+12345678900"
                    class="mb-0 text text-decoration-nonetext-size-16">+1 234 567 89 0 0</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright-con">
        <div class="row">
          <div class="col-12">
            <p class="text-size-16">Copyright ©2024 All Rights Reserved
            </p>
          </div>
        </div>
        <!-- copyright con -->
      </div>
      <!-- container -->
    </div>
    <!-- footer con -->
  </section>
