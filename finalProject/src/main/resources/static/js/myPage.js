$(function() {
	// 탭 메뉴
	$('#menutab .menu').on('click', function() {
		let tabId = $(this).find('.tabId').val();
		
		$(this).addClass('selected');
		$(this).siblings().removeClass('selected');
		
		$('.content-' + tabId).css({'display' : 'inline'});
		$('.content-' + tabId).siblings().css({'display' : 'none'});
		
		// 나의 일정 내용 출력
		if(tabId == 2) {
			$.ajax({
				url: '/myPlan',
				type: 'POST',
				success: function(response) {
	                console.log('/myPlan Success : ', response);
					
					$('.content-2 > .t-left').empty(); // 기존 내용 제거

					response.forEach(function(response) {
						let inputData = `
							<div class="myPlan-wrapper wrap">
					            <form action="/selectMyPlan" method="post" class="myPlanForm${response.INFO_ID}">
					                <div class="block">
					                    <div class="left">
					                        <div><i class="fas fa-calendar-alt"></i><strong>일정명:</strong> ${response.INFO_NAME}</div>
					                        <div><i class="fas fa-user"></i><strong>작성자:</strong> ${response.MEMBER_EMAIL}</div>
					                        <div><i class="fas fa-map-marker-alt"></i><strong>지역:</strong> ${response.TRIP_PLACE}</div>
					                    </div>
					                    <div class="right">
					                        <div><i class="fas fa-plane-departure"></i><strong>시작일:</strong> ${response.START_DATE}</div>
					                        <div><i class="fas fa-plane-arrival"></i><strong>종료일:</strong> ${response.END_DATE}</div>
					                        <div><img class="trash" src="/images/plan/trash.png"></div>
					                        <div><input type="hidden" name="info_id" class="info_id fas fa-plane-arrival" value="${response.INFO_ID}"></div>
					                    </div>
					                </div>
					            </form>
				            </div>
						`;
						$('.content-2 > .t-left').append(inputData);
					});
					
					// 페이지네이션 초기화 호출
                    planInitializePagination();
	            },
	            error: function(error) {
	                console.log('/myPlan Error : ', error);
	            }
			});
		} //end if
		
		
		// 나의 후기 내용 출력
		if(tabId == 3) {
			$.ajax({
				url: '/myReview',
				type: 'POST',
				success: function(response) {
	                console.log('/myReview Success : ', response);
					
					$('.content-3 > .t-left').empty(); // 기존 내용 제거

					response.forEach(function(response) {
						let inputData = `
						<div class="review-wrapper wrap">
			                <form action="/selectMyReview" method="post" class="myReviewForm${response.REVIEW_ID}">
			                    <div class="block">
			                        <div class="left">
			                            <div><i class="fas fa-user"></i><strong>작성자:</strong> ${response.MEMBER_EMAIL}</div>
			                            <div><i class="fas fa-magnifying-glass"></i><strong>제목:</strong> ${response.REVIEW_TITLE}</div>
			                            <div><i class="fas fa-calendar-alt"></i><strong>등록일:</strong> ${response.REVIEW_REGDATE}</div>
			                            <div><i class="fas fa-eye"></i><strong>조회수:</strong> ${response.REVIEW_CNT}</div>
			                        </div>
			                        <div class="right">
			                            <div><i class="fas fa-star"></i><strong>별점:</strong> ${response.REVIEW_STAR}</div>
			                            <div><i class="fas fa-thumbs-up"></i><strong>좋아요:</strong>
			                            	<c:choose>
										        <c:when test="${response.LIKE_STATE != null}">
										            ${response.LIKE_STATE}
										        </c:when>
										        <c:otherwise>
										            0
										        </c:otherwise>
										    </c:choose>
			                            </div>
			                            <div><i class="fas fa-thumbs-down"></i><strong>싫어요:</strong> 
			                            	<c:choose>
										        <c:when test="${response.HATE_STATE != null}">
										            ${response.HATE_STATE}
										        </c:when>
										        <c:otherwise>
										            0
										        </c:otherwise>
										    </c:choose>
			                            </div>
			                            <div><input type="hidden" name="review_id" class="review_id" value="${response.REVIEW_ID}"></div>
			                        </div>
			                    </div>
			                </form>
		                </div>
						`;
						$('.content-3 > .t-left').append(inputData);
					});
					
					// 페이지네이션 초기화 호출
                    reviewInitializePagination();
	            },
	            error: function(error) {
	                console.log('/myReview Error : ', error);
	            }
			});
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