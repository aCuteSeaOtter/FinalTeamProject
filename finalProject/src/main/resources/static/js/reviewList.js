$(document).ready(function() {
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
	
    // 모든 슬라이더를 slick으로 초기화
    function initializeSliders() {
        $('.slider').each(function() {
            // 이미 초기화된 슬라이더는 재초기화하지 않도록 설정
            if (!$(this).hasClass('slick-initialized')) {
                $(this).slick({
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
            }
        });
    }

    // 페이지 로드 시 초기화
    initializeSliders();
	
	// 탭 클릭 시 슬라이더 초기화
	    $('#tabs-posts a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	        // 활성화된 탭의 콘텐츠를 새로 고침
	        var target = $(e.target).attr("href");
	        $(target).find('.slider').slick('refresh');
	    });

    // 사용자 정의 화살표 버튼 클릭 이벤트
    window.moveSlide = function(direction, sliderId) {
        if (direction > 0) {
            $('#' + sliderId).slick('slickNext');
        } else {
            $('#' + sliderId).slick('slickPrev');
        }
    }
});