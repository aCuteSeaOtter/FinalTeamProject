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
	
	$('.review-btn').on('click', function() {
		let info_id = $('.info_id').val();
		
		$.ajax({
			url: '/getPlan',
			type: 'POST',
			data: {info_id: info_id},
			susccess: function(response) {
				console.log(response);
			},
			error: function(error) {
				console.log('error: ' + error);	
			}
		});
	});
	
    var currentPage = 1; // 초기 페이지 번호
    var totalPages = 1; // 총 페이지 수 (초기값 설정)
    var currentFilterType = ''; // 현재 필터 타입
    var currentFilterValue = ''; // 현재 필터 값

    // 스타일 필터 클릭 시 AJAX 요청
    $('#styleList button').on('click', function() {
        currentFilterType = 'style';
        currentFilterValue = $(this).data('value');
        currentPage = 1; // 페이지 번호를 1로 초기화
        fetchFilteredData(currentFilterType, currentFilterValue, currentPage);
    });

    // 대상 필터 클릭 시 AJAX 요청
    $('#whoList button').on('click', function() {
        currentFilterType = 'who';
        currentFilterValue = $(this).data('value');
        currentPage = 1; // 페이지 번호를 1로 초기화
        fetchFilteredData(currentFilterType, currentFilterValue, currentPage);
    });

    function fetchFilteredData(filterType, value, page = 1) {
        $.ajax({
            url: '/plan/filterTravel',
            method: 'GET',
            data: {
                filterType: filterType,
                value: value,
                page: page // 현재 페이지 추가
            },
            success: function(data) {
                // 페이지 업데이트
                updateTravelInfoList(data.travelInfoList);
                totalPages = data.totalPages; // 총 페이지 수 업데이트
                updatePagination(data.currentPage, totalPages, filterType, value);
            },
            error: function() {
                alert('필터링 데이터 로딩에 실패했습니다.');
            }
        });
    }

    function updateTravelInfoList(travelInfoList) {
        var html = '';
        travelInfoList.forEach(function(info) {
            html += '<li class="travel-info-item" onclick="window.location.href=\'selectPlan?info_id=' + info.info_id + '\'">';
            html += '<div class="travel-info-details">';

            // 스타일 태그
            html += '<p><strong>스타일:</strong> ' + (info.style_tag ? info.style_tag : '없음') + '</p>';

            // 대상 태그
            html += '<p><strong>대상:</strong> ' + (info.who_tag ? info.who_tag : '없음') + '</p>';

            html += '</div>';
            html += '<div class="travel-info-hover">';
            html += '<p>' + info.info_name + '</p>';
            html += '</div>';
            html += '</li>';
        });
        $('.travel-info-list').html(html);
    }

    function updatePagination(currentPage, totalPages, filterType, filterValue) {
        var paginationHtml = '';

        // 이전 페이지 버튼
        if (currentPage > 1) {
            paginationHtml += '<a href="#" class="page-btn" data-page="' + (currentPage - 1) + '">Previous</a>';
        }

        // 페이지 번호 버튼
        if (totalPages <= 10) {
            // 총 페이지가 10페이지 이하인 경우
            for (var i = 1; i <= totalPages; i++) {
                paginationHtml += '<a href="#" class="page-btn' + (i === currentPage ? ' active' : '') + '" data-page="' + i + '">' + i + '</a>';
            }
        } else {
            // 총 페이지가 10페이지 초과인 경우
            if (currentPage > 4) {
                paginationHtml += '<a href="#" class="page-btn" data-page="1">1</a>';
                paginationHtml += '<span>...</span>';
            }

            var startPage = Math.max(1, currentPage - 3);
            var endPage = Math.min(totalPages, currentPage + 3);

            for (var i = startPage; i <= endPage; i++) {
                paginationHtml += '<a href="#" class="page-btn' + (i === currentPage ? ' active' : '') + '" data-page="' + i + '">' + i + '</a>';
            }

            if (currentPage < totalPages - 3) {
                paginationHtml += '<span>...</span>';
                paginationHtml += '<a href="#" class="page-btn" data-page="' + totalPages + '">' + totalPages + '</a>';
            }
        }

        // 다음 페이지 버튼
        if (currentPage < totalPages) {
            paginationHtml += '<a href="#" class="page-btn" data-page="' + (currentPage + 1) + '">Next</a>';
        }

        $('.pagination').html(paginationHtml); // 페이지 버튼을 HTML에 삽입

        // 페이지 버튼 클릭 이벤트 핸들러
        $('.page-btn').on('click', function(event) {
            event.preventDefault();
            var page = $(this).data('page');
            if (page && page !== currentPage) {
                currentPage = page;
                fetchFilteredData(filterType, filterValue, page); // 선택된 필터와 페이지 번호로 여행 정보 목록을 가져옴
            }
        });
    }
});
