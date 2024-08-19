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
			// 채팅 열기 버튼 클릭 시 팝업 창 열기
		    $('#chat-toggle').click(function () {
				// #small-chat-box의 현재 상태를 확인하여 show() 또는 hide()를 호출
			    $('#small-chat-box').toggle();  // 현재 상태에 따라 보이거나 숨김
			    if ($('#small-chat-box').is(':visible')) {
			        $('#chat-iframe').attr('src', '/chat');  // 열고 싶은 JSP 파일의 경로 설정
			    }
		    });

		    // 닫기 버튼 클릭 시 팝업 창 닫기
		    $('#close-chat').click(function () {
		        $('#small-chat-box').hide();
		    });
			
			// ESC 키를 눌렀을 때 팝업 창 닫기
		    $(document).keydown(function(e) {
		        if (e.key === "Escape") {  // ESC 키가 눌렸을 때
		            $('#small-chat-box').hide();  // #small-chat-box를 숨김
		        }
		    });
			
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
		  
		  