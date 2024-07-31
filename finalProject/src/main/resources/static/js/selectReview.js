function confirmUpdate() {
	          if (confirm("수정 하시겠습니까?")) {
	              return true; // '예'를 클릭하면 form이 제출됩니다.
	          } else {
	              return false;
	          }
	      }

	      function confirmDelete() {
	          if (confirm("삭제 하시겠습니까?")) {
	              return true; // '예'를 클릭하면 삭제 링크로 이동합니다.
	          } else {
	              return false;
	          }
	      } 
		  
		  $(document).ready(function(){
		    $('.slick-slider').slick({
				dots: true,
                arrows: false,
                infinite: true,
                speed: 500,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 3000,
                adaptiveHeight: true
		    });
		  });
		  
		  