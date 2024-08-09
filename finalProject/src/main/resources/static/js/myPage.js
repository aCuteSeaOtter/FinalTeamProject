$(function() {
	// 탭 메뉴
	$('#menutab .menu').on('click', function() {
		let tabId = $(this).find('.tabId').val();
		
		$(this).addClass('selected');
		$(this).siblings().removeClass('selected');
		
		$('.content-' + tabId).css({'display' : 'inline'});
		$('.content-' + tabId).siblings().css({'display' : 'none'});
	});
	
	// 내 정보
	$('.edit-button').on('click', function() {
		const inputs = $('.changeable');
	    const button = $('.edit-button');
		
        if (button.text() === '수정하기') {
            inputs.prop('readonly', false);
			inputs.css({'background' : '#e9ecef'});
            button.text('저장하기');
        } else {
            inputs.prop('readonly', true);
            button.text('수정하기');
			inputs.css({'background' : 'white'});
            // 여기에 저장 로직을 추가할 수 있습니다.
            alert('프로필이 업데이트되었습니다!');
        }
		
		let pass 	 = $('.pass').val();
		let nickname = $('.nickname').val();
		let birth 	 = $('.birth').val();
		
		$.ajax({
			url: '/modifyMyInfo',
			type: 'POST',
			data: {pass: pass, nickname: nickname, birth: birth},
			success: function(response) {
                console.log('/modifyMyInfo Success : ', response);
            },
            error: function(error) {
                console.log('/modifyMyInfo Error : ', error);
            }
		});
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
	$('.myPlan-wrapper').on('click', function() {
		$(this).find('#myPlanForm').submit();
	});

	$('.planPrevPage').on('click', function() {
        if (planCurrentPage > 1) {
            planGoToPage(planCurrentPage - 1);
        }
    });

    $('.planNextPage').on('click', function() {
        if (planCurrentPage < planTotalPages) {
            planGoToPage(planCurrentPage + 1);
        }
    });
	
	// 나의 후기
	$('.review-wrapper').on('click', function() {
		$(this).find('#myReviewForm').submit();
	});
	
	$('.reviewPrevPage').on('click', function() {
        if (reviewCurrentPage > 1) {
            reviewGoToPage(reviewCurrentPage - 1);
        }
    });

    $('.reviewNextPage').on('click', function() {
        if (reviewCurrentPage < reviewTotalPages) {
            reviewGoToPage(reviewCurrentPage + 1);
        }
    });
	
	// 나의 신고
	$('.report-wrapper').on('click', function() {
		$(this).find('#reportForm').submit();
	});
	
	$('.reportPrevPage').on('click', function() {
        if (reportCurrentPage > 1) {
            reportGoToPage(reportCurrentPage - 1);
        }
    });

    $('.reportNextPage').on('click', function() {
        if (reportCurrentPage < reportTotalPages) {
            reportGoToPage(reportCurrentPage + 1);
        }
    });
	
	
    planInitializePagination();
	reviewInitializePagination();
	reportInitializePagination();
})


/* 나의 일정 페이지네이션 */
let planCurrentPage = 1;
const planItemsPerPage = 3;
let planTotalPages = 1;

function planInitializePagination() {
    const wrapper = $('.myPlan-wrapper');
    planTotalPages = Math.ceil(wrapper.length / planItemsPerPage);
    planShowPage(planCurrentPage);
}

function planShowPage(page) {
    const wrapper = $('.myPlan-wrapper');
    wrapper.hide();
    const start = (page - 1) * planItemsPerPage;
    const end = start + planItemsPerPage;
    wrapper.slice(start, end).show();
    planUpdatePaginationButtons();
}

function planUpdatePaginationButtons() {
    $('.planPrevPage').prop('disabled', planCurrentPage === 1);
    $('.planNextPage').prop('disabled', planCurrentPage === planTotalPages);
}

function planGoToPage(page) {
    if (page < 1 || page > planTotalPages) return;
    planCurrentPage = page;
    planShowPage(planCurrentPage);
}

/* 나의 후기 페이지네이션 */
let reviewCurrentPage = 1;
const reviewItemsPerPage = 3;
let reviewTotalPages = 1;

function reviewInitializePagination() {
    const wrapper = $('.review-wrapper');
    reviewTotalPages = Math.ceil(wrapper.length / reviewItemsPerPage);
    reviewShowPage(reviewCurrentPage);
}

function reviewShowPage(page) {
    const wrapper = $('.review-wrapper');
    wrapper.hide();
    const start = (page - 1) * reviewItemsPerPage;
    const end = start + reviewItemsPerPage;
    wrapper.slice(start, end).show();
    reviewUpdatePaginationButtons();
}

function reviewUpdatePaginationButtons() {
    $('.reviewPrevPage').prop('disabled', reviewCurrentPage === 1);
    $('.reviewNextPage').prop('disabled', reviewCurrentPage === reviewTotalPages);
}

function reviewGoToPage(page) {
    if (page < 1 || page > reviewTotalPages) return;
    reviewCurrentPage = page;
    reviewShowPage(reviewCurrentPage);
}

/* 나의 신고 페이지네이션 */
let reportCurrentPage = 1;
const reportItemsPerPage = 3;
let reportTotalPages = 1;

function reportInitializePagination() {
    const wrapper = $('.report-wrapper');
    reportTotalPages = Math.ceil(wrapper.length / reportItemsPerPage);
    reportShowPage(reportCurrentPage);
}

function reportShowPage(page) {
    const wrapper = $('.report-wrapper');
    wrapper.hide();
    const start = (page - 1) * reportItemsPerPage;
    const end = start + reportItemsPerPage;
    wrapper.slice(start, end).show();
    reportUpdatePaginationButtons();
}

function reportUpdatePaginationButtons() {
    $('.reportPrevPage').prop('disabled', reportCurrentPage === 1);
    $('.reportNextPage').prop('disabled', reportCurrentPage === reportTotalPages);
}

function reportGoToPage(page) {
    if (page < 1 || page > reportTotalPages) return;
    reportCurrentPage = page;
    reportShowPage(reportCurrentPage);
}