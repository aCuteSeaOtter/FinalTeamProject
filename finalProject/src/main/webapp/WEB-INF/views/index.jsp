<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      </div>
    <div class="clearfix"></div>
    <jsp:include page="/WEB-INF/views/header.jsp" />
    <!-- bg outer wrapper -->
  </div>
   <!-- NEWS AND ARTICLES SECTION -->
  <section class="float-left w-100 news-articles-con position-relative padding-top padding-bottom main-box">
    <div class="container wow bounceInUp" data-wow-duration="2s">
      <div class="heading-title text-center">
		<h3 style="font-weight: bold; color:black;">어디로 여행을 떠나시나요?</h3>
		<br/>
		<input type="text" class="input-field" placeholder="검색어를 입력하세요" onkeypress="handleKeyPress(event)">
		<i class="icon fas fa-search" onClick="goToNextPage()"></i>
	  </div>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	  <div class="flex item-center" id="wrapper-filter">
		
		<ul class="flex justify-center">
		<li>
			<a href="#" id="navbarDropdownAll" role="button">전체</a>
	
		<li class="nav-item dropdown">	
			 <a class="nav-link p-0 dropdown-toggle" href="#" id="navbarDropdownPlaces" role="button"
			  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">명소</a>
			  
			  <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		             <a class="dropdown-item" href="/plan/plan">명소</a>
		      </div>
		</li>
		</li>
		</ul>
		</div><!--id=wrapper filter-->
		
		
		<!--////////이미지///////////-->
		
		<div class="row">
		    <div class="col-lg-4 col-md-4 col-sm-6">
		     <div class="article-box position-relative">
		      <figure><img class="img-fluid" src="https://cdn.myro.co.kr/prod/image/city/Jeju.jpg" alt="img"></figure>
		       <div class="bottom-left"><span class="d-block text-white"></span>
		        <a href="#">
		         <h6 class="text-white"><br>
		           </h6>
		        </a>
		            <!-- bottom left -->
		       </div>
		         <!-- article box -->
		    </div>
		        <!-- col -->
		  </div>

       <div class="col-lg-4 col-md-4 col-sm-6">
     <div class="article-box position-relative">
        <figure><img class="img-fluid" src="https://cdn.myro.co.kr/prod/image/city/Seoul.jpg" alt="img"style="cursor:pointer" ></figure>
         <div class="bottom-left"><span class="d-block text-white"></span>
            <a href="#" >
              <h6 class="text-white"><br>
			                  </h6>
			              </a>
			              <!-- bottom left -->
			            </div>
			            <!-- article box -->
			          </div>
			          <!-- col -->
			        </div> 
			  	  <div class="col-lg-4 col-md-4 col-sm-6">
					<div class="article-box position-relative" stylw="height:100px;">
					   <figure><img class="img-fluid" src="https://cdn.myro.co.kr/prod/image/city/Seoul.jpg" alt="img"></figure>
					    <div class="bottom-left"><span class="d-block text-white"></span>
					       <a href="#">
					         <h6 class="text-white"><br>
						                  </h6>
						              </a>
						              <!-- bottom left -->
					            </div>
						            <!-- article box -->
						          </div>
						          <!-- col -->
						        </div> 		
					
					
								<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="article-box position-relative" stylw="height:100px;">
								   <figure><img class="img-fluid" src="data:image/jpeg;base64,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" alt="img" stylw="height:100px;"></figure>
									    <div class="bottom-left"><span class="d-block text-white"></span>
								       <a href="#">
								         <h6 class="text-white"><br>
						                  </h6>
							              </a>
							              <!-- bottom left -->
						            		</div>
													</div><!-- article box -->
														          
														        </div><!-- col --> 	

															
															
															
						  <div class="col-lg-4 col-md-4 col-sm-6">
							<div class="article-box position-relative">
						  <figure><img class="img-fluid" src="https://cdn.myro.co.kr/prod/image/city/Seoul.jpg" alt="img" ></figure>
						   <div class="bottom-left"><span class="d-block text-white"></span>
						   <a href="#">
						    <h6 class="text-white"><br>
						     </h6>
						       </a>
						       <!-- bottom left -->
					        </div>
				           <!-- article box -->
				    </div>
				       <!-- col -->
						        </div> 
				  <div class="col-lg-4 col-md-4 col-sm-6">
					<div class="article-box position-relative" stylw="height:100px;">
				   <figure><img class="img-fluid" src="https://cdn.myro.co.kr/prod/image/city/Busan.jpg" alt="img"></figure>
				 <div class="bottom-left"><span class="d-block text-white"></span>
				     <a href="#">
				      <h6 class="text-white"><br>
				          </h6>
				     </a>
				   <!-- bottom left -->
				       </div>
				       <!-- article box -->
				      </div>
				     <!-- col -->
				    </div>												
															
			</div><!--row-->
		
		
		
		<!--/		
		<div class="container relative mx-auto">
		<div class="p-50 xl:p-4 md:w-1/2 lg:w-1/4">
		<div class="grid grid-cols-1 gap-4">	
		<div class="h-auto overflow-hidden rounded-lg hover:scale-105 duration-200 mr-2 md:m-4 cursor-pointer">
		<div class="p-0 xl:p-4 md:w-1/2 lg:w-1/4">pt-2 md:pt-2 md:p-2
		<div class="relative w-full h-auto shadow-md md:shadow-lg rounded-lg">
		<span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
		<img alt="JEJU" src="https://cdn.myro.co.kr/prod/image/city/Jeju.jpg" decoding="async" data-nimg="fill" class="object-cover rounded-lg w-full h-full"
		 style="position: relative; inset: 0px; box-sizing: border-box; padding: 50px; border-radius: 10px; width: 200px; height: 200px; 
		 min-width: 150%; max-width: 150%; min-height: 100%; max-height: 100%;">
		</span>	
		</div> relative w
		</div>pt-2 md:pt-2 md:p-2
		</div>--auto-		
		</div>w-full-
		</div>class="p-0 xl:p-4 md:w-1/2 lg:w-1/4"~
		</div>container relative mx-auto		-->
	
		
		
	</section> <!-- news and article con -->
				
		<!--
		<div class="row">
			<c:forEach var="local" items="${localList}">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="article-box position-relative">
					<figure>
						<img class="img-fulid" src="${local.local_image}" alt="${local.local_name}">
					</figure>
			<div class="text-center mt-2">
					<h3>${local.local_name}</h3>
			</div>	text-center mt-2 
				</div>article-box
		</div>col-lg-4
		</c:forEach>-->
		<!--</div> row-->
	<!--/////////////////////////-->	
	<!--	<div class="flex flex-row flex-wrap px-8 py-8 overflow-hidden bg-white rounded-lg md:flex-nowrap md:flex-inherit md:px-16 md:py-16">
			
			<div class="relative flex flex-col justify-between w-full md:w-1/2 md:p-6">
				<div>
					<h1 class="text-sm text-gray-500 md:text-xl font-Montserrat">${local.local_name}</h1>
					<h2	class="mb-4 text-xl font-bold leading-none md:mb-2 md:text-4xl"></h2>
					
					<div class="relative mt-2 md:hidden h-[180px] w-full">
		
						<img class="object-cover w-full h-full rounded-md shadow-sm brightness-95" alt="image"
						src="${local.local_image}">
					<div class="absolute z-10 right-1 bottom-1">
						<div class="text-[8px] text-white opacity-50">	
						</div>
						</div> mabsolute z-10 right-1 bottom-1
					
					
					</div>relative hidden
					<div class="relative w-full h-[340px]">
						<img class="relative object-cover w-full h-full shadow-sm brightness-95" alt="image"
							src="${local.local_image}">
						
					</div>
				</div>
				
			
				</div>relative flex
			
			
			</div> --> <!--~flex-->
		

  
  
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
  <script src="assets/js/custom.js"></script>
  <script src="assets/js/search.js"></script>



</body>
</html>
