export function planLoad() {
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
            const pagination = planP();  // 객체를 가져옵니다.
            pagination.initializePagination();  // 페이지네이션 초기화
        },
        error: function(error) {
            console.log('/myPlan Error : ', error);
        }
	});
}

export function reviewLoad() {
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
	                            	${response.LIKE_STATE ? response.LIKE_STATE : 0}
	                            </div>
	                            <div><i class="fas fa-thumbs-down"></i><strong>싫어요:</strong> 
	                            	${response.HATE_STATE ? response.HATE_STATE : 0}
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
			const pagination = reviewP();  // 객체를 가져옵니다.
			pagination.initializePagination();  // 페이지네이션 초기화
        },
        error: function(error) {
            console.log('/myReview Error : ', error);
        }
	});
}

export function reportLoad() {
	$.ajax({
		url: '/myReport',
		type: 'POST',
		success: function(response) {
            console.log('/myReport Success : ', response);
			
			$('.content-4 > .t-left').empty(); // 기존 내용 제거

			response.forEach(function(response) {
	            let leftContent = '';
	            if (response.CATEGORY === '게시글') {
	                leftContent = `
	                    <div class="left">
	                        <div><i class="fas fa-user"></i><strong>작성자:</strong> ${response.RV_MEMBER_EMAIL}</div>
	                        <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${response.REVIEW_TITLE}</div>
	                        <div><i class="fas fa-book"></i><strong>게시글 내용:</strong> 
	                            ${response.REVIEW_CONTENT.length > 8 ? response.REVIEW_CONTENT.substring(0, 8) + '...' : response.REVIEW_CONTENT}
	                        </div>
	                    </div>
	                `;
	            } else if (response.CATEGORY === '댓글') {
	                leftContent = `
	                    <div class="left">
	                        <div><i class="fas fa-user"></i><strong>작성자:</strong> ${response.C_MEMBER_EMAIL}</div>
	                        <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${response.REVIEW_TITLE}</div>
	                        <div><i class="fas fa-comment"></i><strong>댓글 내용:</strong> 
	                            ${response.COMMENT_CONTENT.length > 8 ? response.COMMENT_CONTENT.substring(0, 8) + '...' : response.COMMENT_CONTENT}
	                        </div>
	                    </div>
	                `;
	            } else if (response.CATEGORY === '대댓글') {
	                leftContent = `
	                    <div class="left">
	                        <div><i class="fas fa-user"></i><strong>작성자:</strong> ${response.RP_MEMBER_EMAIL}</div>
	                        <div><i class="fas fa-magnifying-glass"></i><strong>게시글 제목:</strong> ${response.REVIEW_TITLE}</div>
	                        <div><i class="fas fa-reply"></i><strong>대댓글 내용:</strong> 
	                            ${response.REPLY_CONTENT.length > 8 ? response.REPLY_CONTENT.substring(0, 8) + '...' : response.REPLY_CONTENT}
	                        </div>
	                    </div>
	                `;
	            }

	            let inputData = `
	                <div class="report-wrapper wrap">
	                    <form action="/selectReport" method="post" id="reportForm">
	                        <div class="block">
	                            ${leftContent}
	                            <div class="right">
	                                <div><i class="fas fa-magnifying-glass"></i><strong>신고 유형:</strong> ${response.REPORT_TYPE}</div>
	                                <div><i class="fas fa-calendar-alt"></i><strong>신고일:</strong> ${response.REPORT_REGDATE}</div>
	                                <div><input type="hidden" name="report_id" class="report_id" value="${response.REPORT_ID}"></div>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            `;
				$('.content-4 > .t-left').append(inputData);
			});
			
			// 페이지네이션 초기화 호출
			const pagination = reportP();  // 객체를 가져옵니다.
			pagination.initializePagination();  // 페이지네이션 초기화
        },
        error: function(error) {
            console.log('/myReport Error : ', error);
        }
	});
}

function createPagination(wrapperSelector, prevButtonSelector, nextButtonSelector, itemsPerPage) {
    let currentPage = 1;
    let totalPages = 1;

    function initializePagination() {
        const wrapper = $(wrapperSelector);
        totalPages = Math.ceil(wrapper.length / itemsPerPage);
        showPage(currentPage);
    }

    function showPage(page) {
        const wrapper = $(wrapperSelector);
        wrapper.hide();
        const start = (page - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        wrapper.slice(start, end).show();
        updatePaginationButtons();
    }

    function updatePaginationButtons() {
        $(prevButtonSelector).prop('disabled', currentPage === 1);
        $(nextButtonSelector).prop('disabled', currentPage === totalPages);
    }

    function goToPage(page) {
        if (page < 1 || page > totalPages) return;
        currentPage = page;
        showPage(currentPage);
    }

    // 버튼 클릭 시 페이지 이동
    $(prevButtonSelector).on('click', function () {
        if (currentPage > 1) {
            goToPage(currentPage - 1);
        }
    });

    $(nextButtonSelector).on('click', function () {
        if (currentPage < totalPages) {
            goToPage(currentPage + 1);
        }
    });

    return { initializePagination, goToPage };
}

// 각 페이지네이션 함수
export function planP() {
    return createPagination('.myPlan-wrapper', '.planPrevPage', '.planNextPage', 3);
}

export function reviewP() {
    return createPagination('.review-wrapper', '.reviewPrevPage', '.reviewNextPage', 3);
}

export function reportP() {
    return createPagination('.report-wrapper', '.reportPrevPage', '.reportNextPage', 3);
}
