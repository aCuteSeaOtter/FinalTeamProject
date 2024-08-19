import {planLoad, reviewLoad, reportLoad} from './myPage_module.js';
import {planP, reviewP, reportP} from './myPage_module.js';

$(function() {
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
	
	const { planInitializePagination, planGoToPage } = planP();
	const { reviewInitializePagination, reviewGoToPage } = reviewP();
	const { reportInitializePagination, reportGoToPage } = reportP();
	
	// 탭 메뉴
	$('#menutab .menu').on('click', function() {
		let tabId = $(this).find('.tabId').val();
		
		$(this).addClass('selected');
		$(this).siblings().removeClass('selected');
		
		$('.content-' + tabId).css({'display' : 'inline'});
		$('.content-' + tabId).siblings().css({'display' : 'none'});
		
		// 나의 일정 내용 출력
		if(tabId == 2) {
			planLoad();
		} //end if
		
		// 나의 후기 내용 출력
		if(tabId == 3) {
			reviewLoad();
		} //end if
		
		// 나의 신고 내용 출력
		if(tabId == 4) {
			reportLoad();
		} //end if
	});
	
	// 내 정보
	$('.edit-button').on('click', function() {
		const inputs = $('.changeable');
	    const button = $('.edit-button');
		
		let pass 	 = $('.pass').val();
		let nickname = $('.nickname').val();
		let birth 	 = $('.birth').val();
		
        if (button.text() === '수정하기') {
            inputs.prop('readonly', false);
			inputs.css({'background' : '#e9ecef'});
            button.text('저장하기');
        } else {
            inputs.prop('readonly', true);
            button.text('수정하기');
			inputs.css({'background' : 'white'});
			
            // 여기에 저장 로직을 추가할 수 있습니다.
			$.ajax({
				url: '/modifyMyInfo',
				type: 'POST',
				data: {pass: pass, nickname: nickname, birth: birth},
				success: function(response) {
	                console.log('/modifyMyInfo Success : ', response);

					location.href = '/plan/myPage';
	            },
	            error: function(error) {
	                console.log('/modifyMyInfo Error : ', error);
	            }
			});
			
            alert('프로필이 업데이트되었습니다!');
        }
	});
	
	$('.secret').on('click', function() {
		let input = $(this).siblings('input');
		        
        // 현재 input type이 password인지 text인지 확인
        if (input.attr('type') === 'password') {
            // type을 text로 변경
            input.attr('type', 'text');
            // 아이콘을 눈이 열린 아이콘으로 변경 (클릭 시 변경됨)
            $(this).removeClass('fa-eye').addClass('fa-eye-slash');
        } else {
            // type을 password로 변경
            input.attr('type', 'password');
            // 아이콘을 눈이 감긴 아이콘으로 변경 (클릭 시 변경됨)
            $(this).removeClass('fa-eye-slash').addClass('fa-eye');
        }
	});
	
	// 나의 일정
	$(document).on('click', '.myPlan-wrapper', function() {
		var planId = $(this).find('.info_id').val();
		$(this).find('.myPlanForm'+planId).submit();
	});
	
	$(document).on('click', '.trash', function(e) {
		e.stopPropagation();
		let info_id = $(this).closest('.right').find('.info_id').val();
		
		var choice = confirm('삭제할래요?');
		
		if(choice) {
			alert('삭제되었습니다.');
			$.ajax({
				url: '/deletePlan',
				type: 'POST',
				data: { info_id: info_id },
				success: function(response) {
	                console.log('/deletePlan Success : ', response);
					
					$(e.target).closest('.myPlan-wrapper').remove();
					planLoad();
	            },
	            error: function(error) {
	                console.log('/deletePlan Error : ', error);
	            }
			});
			//e.stopPropagation();
		} else {
			alert('취소되었습니다.');
			//e.stopPropagation();
		}
		
	});
	
	// 나의 후기
	$(document).on('click', '.review-wrapper', function() {
		var reviewId = $(this).find('.review_id').val();
		$(this).find('.myReviewForm'+reviewId).submit();
	});
	
	// 나의 신고
	$('.report-wrapper').on('click', function() {
		$(this).find('#reportForm').submit();
	});
})