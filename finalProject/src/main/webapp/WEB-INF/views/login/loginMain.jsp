<!-- src/main/webapp/WEB-INF/views/registForm.jsp -->
<%@page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="zxx">

<head> 
  <title>Travel | 메인화면 </title>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
  
  </head>

<body onload="displayUserInfo()">
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
          <div class="left-con">
			HOTSPOT
            
          </div>	<!-- left con -->
       <div class="right-con">070-0000-0000
            <!-- right con -->
          <!--</div>-->
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
            <!--<img src="/assets/images/logo-icon.png" alt="logo-icon">-->  
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
                <a class="nav-link p-0" href="index">홈</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="reservForm">예약</a>
              </li>
              <li class="nav-item">
                <a class="nav-link p-0" href="megazineForm">매거진</a>
              </li>
			  <li class="nav-item">
			    <a class="nav-link p-0" href="reviewForm">리뷰</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link p-0" href="csForm">고객센터</a>
			  </li>
			  
			  	 <li class="nav-item">
			 	<a class="nav-link p-0" href="#"> ${sessionScope.mem.member_nickname}님 로그인중</a>
				<div class="dropdown-menu" id="dropdownMenu" aria-labelledby="navbarDropdown4">
									<a class="dropdown-item" href="/mypage">마이페이지</a>
					                 <a class="dropdown-item" href="/reservation">예약내역</a>
					                 <a class="dropdown-item" href="/main">로그아웃</a>
				</div>	
			</li>		
	            
            
		            </div>	
              </li>
            </ul>
          
          </div>
        </nav>
        <!-- container -->
      </div> 
      <!-- header-con -->
    </header>
    <!-- BANNER SECTION -->

  <!-- TRAVEL TOUR AND PACKAGES -->
  <section class="float-left w-100 travel-tour-con position-relative">
    <div class="color-overlay position-relative padding-top padding-bottom main-box">
      <div class="container wow bounceInUp" data-wow-duration="2s">
         <div class="heading-content text-center position-relative">
         
          <h3 class="animated-text">어디로 여행을 떠나시나요?</h3>
		  <br/>
		  <input type="text" class="input-field" placeholder="검색어를 입력하세요" onkeypress="handleKeyPress(event)">
		  <i class="icon fas fa-search" onClick="goToNextPage()"></i>
        </div>
	<span></span>
		
	     <div class="tab-content" id="myTabContent1">
          <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="deal-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>
                    JEJU</span>
                  <h6><a href="destinations">JejuIsland</a></h6>
                  <img class="img-fluid" alt="image" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/
				  2wCEAAkGBxMQERUQEhIVFRUVFhUXFxgWFRcVFRYXFhUWFxcYFRcZHSggGB8lHRUXITEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0fHx8rLS0tKy0rLS0tKy0tLS0tLS0tLS0tLS0rLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS8tLf/
				  AABEIAL4BCQMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EAEcQAAEDAgMDCAcFBQcDBQAAAAEAAhEDIQQSMQVBUQYTImFxgZGhFDJSkrHB0RUjQlPwM0NicuEWY4KDotLxc5PyBxdEVNP/
				  xAAaAQADAAMBAAAAAAAAAAAAAAAAAQIDBAUG/8QAMhEAAgIBAgMGBAUFAQAAAAAAAAECEQMEEhMhUQUUMUFSoUJxkfAyYYGx4RVDkqLxIv/
				  aAAwDAQACEQMRAD8A5+EoU4TwvenirIQnhShPCBWQhPCnCfKgVg8qfKpwnhArBwnhThPlQKwcJ8qnlT5UBYPKlCJlT5UCsFCUIsJZUBYLKllRcqWVAWCypQiZUsqAsFlShEypZUDsHCaESEoQFg8qbKiQlCB2DhNCLCaEDsHCaESEoQFg4TQiQmhA7IQmhEhKEDsJCUKcJ4UmKyEJ4U4ThqLFZCEoRMqnSpFxgBTKairk6Q4pydRVsDlT5VoHZ8CS4dw0VZ9ODGq18euwZJbYy5mxl0Woxx3SjyAwllRMqfKtqzTsHlTwp5U+VFi3A8qWVEypZUWG4HCUIuVLKlYtwKEoRYShFhuBZU2VFypZUWPcCypZUXKmyp2G4FlTQjZU2VFj3AsqbKi5UoRY9wLKmyouVNlRY9wKEoRC1NlRY7BwmIRIShFjsFlShEhKEBYTKnyqYapBqmzFuIBqUIkJQlZNlfE1m02l7yGtGpKz8NyldUthsO6pG/Qd5Nt41Vjb2zjiKDqYMHVvCRcSiYPCuo020qb6DA0AAPpmoXG0kjMIJM8V57tnJPeo+VHp+w4Y3jcvisG7bGMbd2CcR/DUaT4AlVxyqoudkqsfSfwe0jzHzWxtBr4YPudJcX0paNNIdIuVTxGDZXpmjUFJwg5SyWkEXkAzFuBXEUqdndavkHo12u0O6e0cRxRsq4zkxhq1LFOpXNNskmLQR0T1TPku2AXr9BnllwqU/H9zxPaeCGDO4w8PH5EMqeFOEoW7ZzrIQlCJCUIsLBwnhTypZUWFg4ShEypQiwsHCUKcJQiwshCaESEoRYWDypsqJCUIsdg8qaESEoRYWChNCLCaEWOweVNlRITQnY7B5U2VFhNCLHYLKmyouVNlRZVhQE8KcJ4WOzDZCE8KeVLKixWV8U7K0mY0+I/471Tr1gSalOnSFQaPfbMd9xpberO1XltJ2VocYNiYtF4sb7+5YGzeUNPLzdYGm8a6tg8ZFwvM9rZFPNUfJUew7Exyhp7l8TtGkzaFd7g17aDWmM01c2Yb8rYkz1qyHMpgkUmsJES0C4O/MN1lSbtnCtuapd1Fznd9ysvbXKdtQZaYPaVzKbZ2LSRr7PqPL2QW5HmoCJ6WYAEQPFbWVcRsXaNI1KFJrH85mGZ53yS477CwAtMLuaTSZHD5rvdl6lp8F/NHm+29ImuPH5NEYTwjCkVIUF29yPN7JdAEJZVZ5hOKCW9D4UyrlSyq36Ol6Ojeg4UyplSyq16OlzCN6DhTKuVNlVvmExoI3oOFMq5UoVnmUxolG5C2S6FbKllVg0SomkU9yFtl0AQmhHNMpixG4OYHKmhFypi1FhYKE0IsJoTsdgoTQiwmhFjsHCaESEoRY7LgoKQoK4KacMWpxDf7uiqKCkKKtBiar0Wl3AE+AUvIUtOnyoxqzJcRaDIVPaPJ+jiTmqME2GYWdF941VnBNcQC7WJ8VeaYsRa3BeVyScpuXU9ligowUeiOTPICjP7WpH+E+cK1huR9Cl0i0vj2zI8AB5ro6mJyjXLwOUub/iI070NuIzC+UjixwIj4qOZdI5/GYFjMTTrZbjSLbo79V0mDbLj1tHkT9VnYrCOzZ7ERa8X8bLVwI6YuLsOhHFv9Vu6OVZos0ddBSwSRYFJSFNWAxSDF3955xYitzafm1ZyJ8iN4+GVubS5tWciWRLeHDKvNpc2rWRLIjeHCKvNpubVrImyJ7w4RV5tNzatZExYjeLhFU00xpq1kSyJ7xcIpmmmNNXMiiWI3i4SKfNKJoq7kTFie8l4EUTQUDQV8sTFifEIenRnmgoGgtAsUTTT4hL0yM80So80VoFibInxCO7FsKQCCHqQetSmdikGAQcdUystckgDv18pUg9ZXKLHtpNY55hsm+6bQPMrDnbWNtGbBCLyRQU1ATJu61swbNtwUu5ze2CO0ELKOKDm5s7Cx1/vGE0z2PFgpbOcJcWtYBAu2qagPUB+FcE7pbxrAAHDPMgA03hvkbO7FBlSSTAnfmpGk/wAdHIlWkHAtcMw3g3B7QVkYvYLXCG1q1Mey2q7L4GY7kAaFepLQBvPfqgbFrRiGN/mHaMpPyC5zGbJqUmB9HEPLmiYe6ZO+OHYjciTia2IbUe05GFxLiCBOUthvE37oWxp096rqYNQ1w3fQ9MDVMNQmvUw9drmcXaieVLKo50syVsNqJQlCjmSzothtRKE0Js6bMnzDaiUJiFA1Asvam2W0x0C1zusmI3xGpUymo+LDaaxCiQuYpcqCZJpgCCRJykxuDbz3KtV5T1dMrWk8WuMd8qHqILzJkqOvKay4aptqq83qOHDIWgHyV7Z/KKoZzMDwN7bO/wBp8ko6mD8eQqt0jq4TFU8Ljm1BLT3Gzh2hGLlnTsVILCiUMOUXOT5hSCEqBKG5ygXKqZLoKXBRLkElMCqonkEc9RzhCeVGSnRLMtlLGX6bPFp+SKKOL9tnkfkujGBp9Sf0Jki61e9V/wANnuuR9F+pzwp4v22eX0UMVSxJY4PNMti4LQfKLrp/RW+15qrtSi0UnEGTbzcApnqntfL2CGlnuSb9zj6exnsj0eq6iyBLYzNPWBuJ38VrYTDGm2HEOcTd2UAnwVsCyG4SVwj0QhOkWgXlROkkfrRTPamekBkYupAcDYS74T8Sjcn61VtKG5IzHUEm4aT5me9U8TDnPnQHzgLd5HU2mi/MYIquH+hi3NHk2Ts5/aUJSw1F07CDF4jgz3T9U/puI4U/dP1W2KDPaTHDs9orp95XQ4LwZ/WYvp9fhT8HfVL7Sr8Kfg76ra5in7SY0KafeF0FwtR60Y32lW9mn/q+qi/aGIOgpi3We/VbPo1NN6PT60PPF+ROzUr4kYJxeIylstvv3jsQ218QIl2aP4iPhAPetyqyiNXeJUMtDj5o3xfl+5LlqV8SMGtzrzLmgmImbxw7FXdgZM82Jvo6PkujPM9fiok0eDvP6LHsx+n7+od41Pqic+/CFwymmMvAPynuMKs7Y4OrX/8AdB+LF1LqFPUB/l8whnDgaNqH/E1EYYl4R+/qOWo1MvFp/oc2NjtAsx8zM86NN4jJ5pM2VBJHOiT+Yw24GW3PWt91H+7f74CC7KNaVT35+SrZjfkJZ9R+X0Mr7PuDNa0QBUYPMNstOlj6jQBkcYH4ntMntDQUVmzWVB6r2/5hHyUX7EpjQVD/AJp+oSWyPKK9zMsmVq219P5A1NpVzMNa3hobdd7+SiNrVWkl7GZY9oNM9ZJhO7YFEmYeD/1HfVVKvJyj/F75VcR+S9x8Rr8T/wBf5Lp2zxpj/uNQ/t0aZRP/AFGfVZdTYFEfgf70oR2JR4VB2G3wVcTJ6V9Q4uLzk/8AH+TXbt1p0aD2VGlP9sj8s+81Ybth0Nc1Qdv/AIpxsWnHRrvHe36I4uX0r6lcTD6n/j/JtfbAP7s+8z6pfa3927xb9ViVdhB4yms9wEwCAddd6H/Zdvtv9wfVLj5fT7j34PX/AKs9CDOtItaNXAdphc67EUnb3n/Md9UMsoHWmSf5yVj4bK7zDodG6tTH42z/ADBUcVi2uGRpbqNCSePCN3FZY5gD9mR2u8NCj0abXadGOEBa+pnGC287Zu6KDzPeqSTLM/oqIqg6XPw8UF7GNtmI8IQKmOpMEc4LdQJnxXMO2Xc0XjzVXG4wMBdE2sL370Jm1GH99c29UD4qtjHYep61R5/lgb/NKgK1Jxy5jvk+N7o+wm1Xc4KTZ6d4dFyxm4lFpsw5ENzOHAvI8gn5ynQDjSptY4xmdEnqkkyVn0+XhSurNbV6dZ4bG6L4GLH7t3kVOn6WTGUjrtCBgeUGZjTIu3Wd+iL9s/xDx+a7SlJq9qPKThCMnHnyDjDYqbvt1ZfmFbpYOp+Ks7uDVknlC3TOwd6Zm1ZvIM75nySam+gXGPimbjMN/evPe36Jeif3tQ+79FiN2k4SZJnrmOwIrNoOOg/XcpcJAskOhstw8XzOPaR8gpGgDqXeMfBYw2mRqPMlTp7XB7tbSpcJmRSh0NMYRnF3vu+qY4NnF/vOPzWT/aLK6DkiJ1g+CHU5TtsWta4/rfu81O2fX3MqhB+XsbTcOwfiJ7XFEys4jxWDT5SA/wDx2k9Th9EahtWk90HCkHqteewBS1Lz/dFcNLwXszWhnHzTZW6T5qWGqB2lAiN5DfIyiObTdYZZ6jPkCoc6Mq09qypUNPQvA71QxjKQaXmuQBrF+zS61HYIVAS1zHRI7CNQeCxNubLqChUswOIIac4kEm2rRvjemstLkwWluSuPIpY3BYimdWZd0uIcVSmpvgecdvSV7ab6wqYdvNS+sPvHhudoJgA2uIJJudwutN2z2c66nlDZaDmLm83aLZQ7ODfsseCyLUJ/idfIrubX4Ypr8znSKmpbbcQ8T3iEmR+JjyNLOJ+S6WpsMPbla+iewTfquVi8o+Thp0HEPbmBYRYiDnAnNqsjzxrk+ZMdI93OPIBVNNou1/YHOHxYqVTEU97KrZ4uEeYC6FlHDkZXY5trRzjBB4STKI3ZuGDcxxQLTaS5keJ3pPPGuUvYqOlknzj7nOspEzka+2pzNjuh0oHPO4P97+q6V2x8DMmu2ep7BPdvRfsXC/n/AOqn9Fheqmny5/fyNhaPG1z5ffzOWwmOq1j93Skb3T9YCtDD1+AHY5h+YV+lScBAbA3ACFJuHIEu6I7fitfvmRG1/TsHQya9GqIDjIPCPkVdO0C1lmG0K4aAIEm/WREcOoo32U55EOpxwz2C1s2VzlcjawYI4o7YHKYrEuf62YDhBCoFwO9de/YtW5hpv7YMjjqpU9glxh4aBu6TT/wsO5GbazjebPd1KVNhB0K7R/JanrzrRvN4THk1TP75o7DbwlG9D2M5bDiHbzC1cWXOpkQL6nWRpHatF2w2MP7Rro/iIP6lFrYZgAzVJFgRB7TBPYqRLMTZuEe5sU3tbkcWkOkcDYxwPj2I2I2PUcYc9nfcdwDbrXpVKLLNAAkmDJudSetGbXYdHDwW29RkaSs1FpMSbdc2ZWE5LCx5wE/ydHs1+KjV5P4hhIbSeLfhMgzw03ytoVmxGfzXZ8msZTxFKLF1OGnrH4T+uCl5pJeJXAi34HnNDA4qnZ2HLptLhJ8Q5NiqdemSBhniw/ivIHRIFvNetmgzSBPmo1cOwAnJMA2AueoIWrmvNkPQYn8KPJMUWMYTWpYsOi2XLlkwJkXI8VnV8ayOiK4iGk86Wu01ENAHbdek7Y2ps6mA2vkzGDzeXnHtOsODJgz1rldubfwLm5KWDLp9o80NLGATN481U9XOX4fAmGhxxXM46tQg3kT7Tg9x74CmxwiHADr+qDimPkuLHNH8IOQHgCZjslBpU3NnNLgdCbgdR4H6LBuNnZRdplhAktF+J33008EajRpCoJqFpBEOGY9x106lm1nnRoB0sbWPYiMcBBDd/wCEkG/VvRuYbUd5g9lPrtmhjTU4tZWhw7QQ22qEcPi6dQ0G4oc40B0Vi0NIN+g5xMkAGeE9q5Km02Lc1M3uHEOBPskXBudOKFiaMODru3uvLtddb96Vy6j2x6HXtq4uq7IzFU3i4PMPpkgRrudrbTvVSpyarNOfmqpMyZa50mf5eE3CyMC7CnMK4dFyHMA6J/jbOnZwRtm8pcThWNYzEBzSA4Qc+W4kDM0x+uKVyGoxRKrgoDszntJmwa4nUWd0uiOtKryfMDJVpu4AvaSYjQa/8FW63LXFOiKsdESQxh01OmpTUeUWKpPzc8agMEtqgPbbgN2u6EXIdIoswNZogQ8Agw4Q4b4bwPCfFTayvScOjUAHTlzA5oOkySA0gTv+a6I8osLXH3mHeHxLjTcGidLX0iPFU8DygNSq6iMHLDENbVcakQBcmQbk7kbpD2oxqWyy4h8A0xJL4ph0ug65rgRaQIvorT9jUqlKlUpkGoJbUbnzc6C6zmkkweI0t47eK2WHgClSxNFrgc7XF1HL/JkouYQY3karIqcn6gyejhzHEwWurNz7oLQQyb6gjfZCyMWwsbP5LUKrZ5w0nAxlfk47nOOt4iyuf+2jP/t/D/crexOSFV18Q97Dvg0yHHS4yndvmbLU/sWz8+p7tP8A2rG5svauhwlLCOkjnhaPwHf3ohwz/wAwduX+qrivUYXOLJmIgi0DeoUdoPeLNGp36eSdsXIs0qTsx+90t6vUDxRnh35nl/VUcM1/SJj1vkEcP3JgO1z3S3M7XcCSdDxVyhs2q/8ADWPY1y6vkWDzdQZjbmyIJGpq9fUPBdfsklrwTftusTyU6LUOVnmB5OVyP2daI9h3hcXQsbsx9CC5jxuOYxaN3fC9r2hhWm5suB5ZU2ueGEw1tKRHXVefim5U6FtVWca1rCbjzU8RSbIF+q5/W5UMVVhwhxiDw6kz6xIF9NNN6yEl6lhaRBlskEj1nd29TZh6bCMrdZ1Lju33VXZ2Dc+nUqzZjmAgb803nu81ZpUAYuQR1m0/oIEadGi0tnKJ7+7fwVzZnKKjgWEPY4ueZ6AaLNtFyN5WTTGW0kd5PxKx9sUXVHAgEwDPUJ1QlYHW4r/1EZrSoSbl2dwaYEaEA+ei5rlDyor43KLU6UkhoJPADO/fF90XWMcKSA64/wCevXuR6eFc8QIkDpS7LHXcqlFILZTBaPWaD3keEJESIBI4XBA8R2q+zD1JOUG0gxfqNxruVujsWq9vOBjgGkNd0SXCb2G/uT5Cpmcw1HF33puL5i/paWtPnay0qeyalOnztKqDxDKokSQBImCdLa200RxsFzHgOZUcIEhrSDe43FdVgtktp5JoPaW5hma5lWWvF87SACPMSpbQ0mcZhOSdV9N5qB+ZuoLekZkgiNdCq+0MD6M1peCC64a4QSAQCdSRE7wNOtes0Htploa0CmW3OZ2YHhzcZQOwrjuXGwamJrNq0SH9GIe7KG3EgW0i/apU+ZThyOGqVs1og9RPx/WqCQ94llNxA1seO/dE710dHkZiGnO11IGT+OYzAgx0Laq9h+SOIYzK3EBvFsvO7eQAFe5EbWc3SpkNzVW5GmwJYSCSJt3b0xwTXerlgzocuh9kietdM/kdVcRnrtMcWuNu86LQo8kmARzjdL/d6ndcnd1JOcepWxnDHZhObK0uOUxEzYKWCbUp5SxzmkzYEuNoJt8oXdUuS2GALXkumJhzmadTdVaq7HwzgGuY50aS5xOmWe2PgoeaHUfDkcxsuq/FtNN2Ka1rgS4Gn0gABJMM6IOkzxTY7kbXgVsM9tdurSwgHwJgxEayujw+xsJRc1zaRa5pBDs1QkEcDmWoNr5pguPiD4RKxvUwvk0ZFifmefvw206LudyV802dqew3M966/kvtjFFpGJpvJJ6OZhDjIJ1a3KRMC8K/9pni7xKg/Hnr8CsEtdh85L6lrBPowuO5SNojpsbMgFgqszgkTGV2XiD3qH9q2flVPGl/+iB6edA3r/qpemP9keSxPtDTr4kXwJ9DzjE7UJBa2mZ693gquAZVA9W0nfxKlTrdJxcDrwOgV4YoZZAJG6AuhZq0FosIBB4/IKFJnSvfgmw9Yukkanqtp19Ssmo0EdKNfh/WE0I1dl7UqUG1KooucyjQqVMxswuaxzgHHW+ncvVNkXc0kax4wvKdm1HVnNwodDHBj6uU9I02snJ1AlzQe1em7IxEvaJ/Wi1pcnz6ma7RpbZxQHRntXm/Let61v3TBaxk1XE/BdZtivLyJ0sTxI3rjuVGRxdnLgMlK7Yn16nFTGTeQbSUDIxeyqfMUnjMS/NJzQQRqIjSVm4rZ7WhtyJnfOkfVdzQ2azEUaAYTlaY4GCASSbydPFc1QayrmbVYIYHGQ4zMQBbdJv2bluGA6vkvs6kcP0mANqQ9wk3yxG+15Kx9rU6NGhUe1oJPTaYOZjC7M1sEkA5bLd5NYwVIY2AxksI6mhkCddCuW2jtFr8LiXZGGarabLAQB6g13SPFJAUoJGaTcDeuj5LvYQ+m4dIZTofVcCNR/L8Fy9YBjB0r23jhfRdPyLgsqmx9QHj+K/mlLwGvEvN2VSoudUYMzSDmY4Zhcg5m5h1aKWGrtuGsY0wSLBsx2Qp4vGNpHmzJzA3AgRvBPGOHks1jQX5sxiABJnU6kbjeFy9dreDHk//AEbeHDvf5Gq3FuFpb2DW/eims6xL9SALAXg27VnsaMxKLTYRSAqGeJMzd1pjeuPHtXLJO2bL08USbjXm+YESRI0sYSfUd7SHUrguc2D0TF9DIDuj1XUgwnd8VgfaOok6TfMtYYJEHunUqI0m6aux4GbISN+5EwNJz5zQywPStY9quMtdPw3CrEiDI/UIZoDnGuzE7gxzuj1kDefHVW6jGNcQTOkOBEEEbjxRMRSw5/C53Ccp4dS2cWk1yd3X6kSyYehTwzwW6sDhIc1pkBwMGL6dyK95mBEQpRSBByCxJvqCbEjTVJ9VpOgHZHzVy7O1Ene9ErPBeQFjjvjqgJ3ZtxVg4tkQKbWkDcL9/FNTxloys7YE+al9k53/AHP3K7zDoU2gmZMpVIiDmvOm/v3Qr/phItA/lA+Si+s/ifOyyR7Gd3KfsS9UvBIpUQ6oLUarQN7mwDfUeCnzc8O8tHzV/B7UdS0cCPZcZ8OCK8Yevoeaed34T8vgs77FxPnuZHe5LyMylhJJDcs77gaKf2e7iPfH1T4vZdWnfLmHFtx371Tko/o2FeLf1H3uX5HqvodP8tnuj6Jeh0/y2e6PojpLvHOAeiU/y2e6Pol6JT/LZ7o+iOkgALcKwXDGjsaPopik0aNHgFNJAAzRb7I8AonDMOrG+6EZJFADbQaNGgdgCj6Kz2G+6PojJigDIdtTDNe1nQhxeM0ANDmOY0iY4v10sVHFbUwlMCQ0hzS/o081gwvkwLSGmEQ7CpEvJLznzzcCzywkAAQPUF9dZlRZyepCbvuMsFw9TK9mTTSHnr0ugBzj8JvNMWaYLIPSygCI16bba9IcUvtTCtIALRmFQ5gyGgUsueXRFswSp7ApBxf0iS6m4k5ZLqZYQ4kNm/NtkTGtrpO2BSOaS/pGoT0gLVA0EWFvUYZF5bMmTIA2I2rhgARkcZbYASMz8kukdGDNjHqngrLq9ABhOSKnqdEdLfItp1qqeTlE5gS9wqEGqCQRVIcXAvERvIgQIgRYRYOyWEMGZ/3YLW9IE5HABzCSLg5RM3tqk4phYL7WwlvvKd9La+rujfnbHHMI1CuUalJ4aWlhztzNiOk21wN4uPEKjR5PUWkOl5IyAFzpMU30nsGmgNFnnMkytDCYRtJrWNHqDK0m5jffuHglsj0HbM6ptSkGl/MvIa8td92BljLLiCQY6QjeZsFGrtzDhr3hudrKnNuLAww4WP4va6MakiwNkWpsUEzz1X9pzv7uM0ACxZBgAROhAOt1A8nKUObNQBwDCA6AaYzRTNvV6br+tfVG1dAsBiOUeHa1znMJa2o6l+6PSbmm2eR6h6JhxtAKJi9t4emXNLC7JrDWwejUc4guInKKT562wJNkXE7Ap1CXudULnAtzZgDkIcDTED1Ye6+t9Ujycw1wKQDTzctAGU805z227XmeKqhFbF8oMLTa90BwpvDHZebs4sL4OZwiA06xJsJNltMpMIBDRcT6seRFll1eTlFxzS8GX5SHDoCoXl7W20dzjtZN7RAWvSphrQ0aAADfYCBqgCPMN9lvgEuYb7LfAIqSABejs9lvuhL0dnst90IqSABigz2W+AS5hvst8AiJIAF6Oz2G+AS9HZ7DfAIqSAICmOA8AlzY4DwCmkgD/9k=">
                   <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"> </span>
                   
                  </div>
				  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        </span>
                   </span>
                      </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>SEOUL</span>
                  <h6><a href="destinations">Seoul–LTower</a></h6>
                  <img class="img-fluid" alt="image" src="https://cdn.myro.co.kr/prod/image/city/Seoul.jpg">
            <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> 
					  <span class="d-inline-block"> </span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                       </span>
                      </span>
                 </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i>
					BUSAN</span>
                  <h6><a href="destinations">Busan</a></h6>
                  <img class="img-fluid" alt="image" src="data:image/jpeg;base64,/9j/
				  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">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"></span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                       </span>
                   </span>
                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>
                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> 
					SOKCHO,Gangwon-do
					</span>
                  <h6><a href="destinations">SOKCHO</a></h6>
                  <img class="img-fluid" alt="image" src="https://i.pinimg.com/originals/24/12/8e/24128ec8b24cac59982c6e2d4d258381.png">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"> </span> <span
                      class="d-inline-block"></span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                        </span>
            </span>
                    <div >
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>

                <!-- item -->
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Gyeongju</span>
                  <h6><a href="destinations">Gyeongju,Gyeongsangbuk-do</a></h6>
                  <img class="img-fluid" alt="image" src="https://www.gyeongju.go.kr/upload/content/thumb/1105/1105_Woljeonggyo01_2019spring(42).JPG">
                  <div class="spans-wrapper"><span class="d-inline-block"></span> <span
                      class="d-inline-block"></span> <span
                      class="d-inline-block"> </span>
                    <!-- spans wrapper -->
                  </div>
                  <div class="pkg-btn-con d-flex align-items-center justify-content-between">
                    <span class="person d-inline-block p-0 m-0">
                      <span class="price d-inline-block p-0 m-0">
                  
                      </span>
                   
                    </span>
                    <div>
                   
                    </div>

                    <!-- package btn con -->
                  </div>
                  <!-- package box -->
                </div>
<!--
                 item 
              </div>
          <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
               owl carousel 
            </div>
             tab pane 
          </div>
          <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="popular-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
               owl carousel 
            </div>
             tab pane 
          </div>
          <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="recommend-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
               owl carousel 
            </div>
             tab pane 
          </div>
          <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="price-tab">
            <div class="owl-carousel">
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Johannesburg,
                    Africa</span>
                  <h6><a href="destinations">Africa – Amazing African Safari</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img1.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Hong Kong, China</span>
                  <h6><a href="destinations">China – Suzhou and Zhouzhuang</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img2.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item 
              </div>
              <div class="item">
                <div class="package-box">
                  <span class="d-block location-span"> <i class="fa-solid fa-location-dot"></i> Buenos Aires,
                    Argentina</span>
                  <h6><a href="destinations">Argentina – Great Diving Trip</a></h6>
                  <img class="img-fluid" alt="image" src="/assets/images/package-box-img3.jpg">
                  <div class="spans-wrapper"><span class="d-inline-block">10 Activities</span> <span
                      class="d-inline-block"><i class="fa-solid fa-map-location-dot"></i> 12 Places</span> <span
                      class="d-inline-block"> <i class="fas fa-calendar-alt"></i> 1 Week</span>
                     spans wrapper 
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

                     package btn con 
                  </div>
                   package box 
                </div>

                 item -->
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
 <!--Footer section-->


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
  <script src="/assets/js/counter.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/search.js"></script>
 <script src="https://kit.fontawesome.com/a076d05399.js"></script>

<!--  <script>
	
	
	document.addEventListener("DOMContentLoaded", function() {
	       // JavaScript에서 세션에서 사용자 이름 가져오기
	       let memberVO = '<%= session.getAttribute("mem")%>';
		   
	       // 사용자 이름이 존재할 경우 링크에 텍스트 채워넣기
	       if (username) {
			// let username=mem.memberName; // MemberVO 객체에서 이름 필드 가져오기
	           let loginStatusElement = document.getElementById("loginStatus");
	           loginStatusElement.textContent = memberVO.member_email + "님 로그인 중";
	           loginStatusElement.setAttribute("data-toggle", "dropdown"); // 드롭다운 토글 설정
	           loginStatusElement.setAttribute("aria-haspopup", "true"); // 드롭다운 메뉴로 인식하도록 설정
	           loginStatusElement.setAttribute("aria-expanded", "false"); // 드롭다운 메뉴가 닫혀있음을 설정
	       } else {
	           // 사용자 이름이 없을 경우 로그인 링크를 설정
	           loginStatusElement.textContent = "로그인";
	           loginStatusElement.setAttribute("href", "loginForm"); // 로그인 폼 페이지로 이동하는 링크 설정
	       }
	   });
	
  </script>-->
  
 <script>
	//클릭 이벤트 핸들러 함수
	function goToNextPage(){
		window.location.href='reservation';
	}	
	
	// 엔터 키 이벤트 처리 함수
	  function handleKeyPress(event) {
	      // event.which와 event.keyCode는 오래된 브라우저에서 사용될 수 있습니다.
	      var keycode = event.keyCode || event.which;
	      if (keycode === 13) { // 엔터 키의 keycode는 13입니다.
	          goToNextPage(); // 엔터 키가 눌리면 goToNextPage 함수 호출
	      }
	  }
	
</script>
  

<script>
	// 기본 탭 열기
	  document.getElementById("defaultOpen").click();

	  function openTab(evt, tabName) {


	      // 탭 버튼 활성화 상태 해제
	      tablinks = document.getElementsByClassName("tablinks");
	      for (i = 0; i < tablinks.length; i++) {
	          tablinks[i].className = tablinks[i].className.replace(" active", "");
	      }

	     
	      // 선택된 탭 버튼을 활성화 상태로 설정
	      evt.currentTarget.className += " active";
	  }
	</script>
	
  </body>

</html>