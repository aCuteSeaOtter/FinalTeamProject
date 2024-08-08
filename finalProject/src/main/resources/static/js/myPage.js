let currentPage = 1;
const itemsPerPage = 3;
let totalPages = 1;

function initializePagination() {
    const $wrapper = $('.wrapper');
    totalPages = Math.ceil($wrapper.length / itemsPerPage);
    showPage(currentPage);
}

function showPage(page) {
    const $wrapper = $('.wrapper');
    $wrapper.hide();
    const start = (page - 1) * itemsPerPage;
    const end = start + itemsPerPage;
    $wrapper.slice(start, end).show();
    updatePaginationButtons();
}

function updatePaginationButtons() {
    $('.prevPage').prop('disabled', currentPage === 1);
    $('.nextPage').prop('disabled', currentPage === totalPages);
}

function goToPage(page) {
    if (page < 1 || page > totalPages) return;
    currentPage = page;
    showPage(currentPage);
}

$(function() {
	$('.wrapper').on('click', function() {
		$(this).find('#myPlanForm').submit();
	});

	$('.prevPage').on('click', function() {
        if (currentPage > 1) {
            goToPage(currentPage - 1);
        }
    });

    $('.nextPage').on('click', function() {
        if (currentPage < totalPages) {
            goToPage(currentPage + 1);
        }
    });
	
	$('#menutab .menu').on('click', function() {
		let tabId = $(this).find('.tabId').val();
		
		$('.content-' + tabId).css({'display' : 'inline'});
		$('.content-' + tabId).siblings().css({'display' : 'none'});
	});
	
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

    initializePagination();
})