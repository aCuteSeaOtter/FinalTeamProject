let currentPage = 1;
const itemsPerPage = 5;
let totalPages = 1;

function initializePagination() {
    const divBlocks = $('.divBlock');
    totalPages = Math.ceil(divBlocks.length / itemsPerPage);
    showPage(currentPage);
}

function showPage(page) {
    const divBlocks = $('.divBlock');
    divBlocks.hide();
    const start = (page - 1) * itemsPerPage;
    const end = start + itemsPerPage;
    divBlocks.slice(start, end).show();
    updatePaginationButtons();
}

function updatePaginationButtons() {
    $('.prevPage').prop('disabled', currentPage === 1);
    $('.nextPage').prop('disabled', currentPage === totalPages);
}

// 날짜별로 선택된 장소 ID를 저장할 객체 생성
var selectedAttrIdDataMap = {};
let day;

$(function() {
	
	let infoId;
	
	$('.block').on('click', function() {
		infoId 	  = $(this).find('.info_id').val();
		let tripPlace = $(this).find('.trip_place').val();
		
		day = $(this).find('span:nth-child(1)').html();
		var attrIds = []; // 빈 배열 생성
		
		let selectedDates = [];
		
		$.ajax({
			url: '/calDates',
			type: 'POST',
			data: { info_id: infoId },
			success: function(response) {
				console.log("/calDates success : ", response);
				selectedDates.push(response);
			},
			error: function(error) {
				console.log("/calDates error : ", error);
			}
		})
		

	    
		
		
		// 각 날짜에 대한 배열 초기화
	    for (let i = 0; i < selectedDates.length; i++) {
	        selectedAttrIdDataMap[i + 1] = []; // 초기화
	    }
		
		if (!Array.isArray(selectedAttrIdDataMap[day])) {
	        selectedAttrIdDataMap[day] = [];
	        
	    }
		
		// .attr_id 클래스를 가진 모든 input 요소를 선택
	    $(this).find('.attr_id').each(function() {
	        // 각 input 요소의 값을 배열에 추가
	        attrIds.push($(this).val());
			
			selectedAttrIdDataMap[day] = attrIds;
	    });
		
		// 모달 버튼과 모달창 가져오기
		var modal = $('.myModal');
		modal.css({'display' : 'block'});
		
		loadAllAttractions(tripPlace);
		
		
		
		var keyword = $('.searchBar').val();
		
		
		
		$('.nextPage').click(function() {
	        if (currentPage < totalPages) {
	            currentPage++;
	            showPage(currentPage);
	        }
	    });

	    $('.prevPage').click(function() {
	        if (currentPage > 1) {
	            currentPage--;
	            showPage(currentPage);
	        }
	    });
		
		// 선택박스 클릭 시 이미지 상태 및 선택된 항목 처리
	    $(document).on('click', '.selectBox', function() {
	        const currentSrc = $(this).attr('src');
			var divBlock = $(this).closest('.divBlock');

	        // 선택박스 선택 전
	        if (currentSrc.includes('/images/plan/none_select.svg')) {
	            $(this).attr('src', '/images/plan/place_select.svg');
				
				var selectedAttrId = divBlock.find(".attrId").val();
				
	            // day에 대한 배열이 초기화되어 있는지 확인
	            if (!Array.isArray(selectedAttrIdDataMap[day])) {
	                selectedAttrIdDataMap[day] = [];
	            }

	            // 배열에 선택된 명소 id 저장
	            selectedAttrIdDataMap[day].push(selectedAttrId);
				console.log(selectedAttrIdDataMap[day]);

	        // 선택박스 선택 후
	        } else {
	            $(this).attr('src', '/images/plan/none_select.svg');
				
				var canceledAttrId = divBlock.find(".attrId").val();
                selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== canceledAttrId);
				
				console.log(selectedAttrIdDataMap[day]);
				
	        } // end if
	    }); // end $(".selectBox").on("click", function()
		
		
		
		// '저장' 버튼을 눌렀을 때
		$('.saveBtn').on('click', function() {
			$.ajax({
				url: '/editPlan',
				type: 'POST',
				data: { day: day, data: selectedAttrIdDataMap[day], info_id: infoId },
				success: function(response) {
					console.log('/editPlan success : ', response);
					alert("저장되었습니다.");
					modal.css({'display' : 'none'});
					window.location.href = '/plan/myPage';
				},
				error: function(error) {
					console.log('/editPlan error : ', error);
				}
			});
		});

		// 'X' 버튼을 눌렀을 때 모달 닫기
		$(document).on('click', '.closeBtn', function() {
			modal.css({'display' : 'none'});
		});
		
		// 모달 영역 밖을 클릭했을 때 모달 닫기
	    $(document).on('click', function(event) {
	        if ($(event.target).hasClass('myModal')) {
	            modal.css({'display': 'none'});
	        }
	    });
				
		// ESC 키를 눌렀을 때 모달 닫기
	    $(document).on('keydown', function(event) {
	        if (event.key === 'Escape' || event.keyCode === 27) {
	            modal.css({'display': 'none'});
	        }
	    });
	}); // end .block
})

// 페이지 로드 시 모든 명소 불러오기
function loadAllAttractions(tripPlace) {
    $.ajax({
        url: '/editAttr',
        type: 'POST',
		data: { trip_place: tripPlace },
        success: function(response) {
            renderAttractions(response);
            //highlightSelectedAttractions();
			initializePagination(); // 페이지네이션 초기화
			
			// 기존에 선택되어있으면 체크표시
			if (selectedAttrIdDataMap[day].length > 0) {
		        $('.selectBox').each(function() {
		            var selectedAttrId = $(this).closest('.divBlock').find('.attrId').val();
					
		            if (selectedAttrIdDataMap[day].includes(selectedAttrId)) {
		                $(this).attr('src', '/images/plan/place_select.svg');
		            } // end if
		        }); // end selectBox.each
		    } // end if
        },
        error: function(error) {
            console.log('/editAttr error : ', error);
        }
    });
}

// 명소 렌더링
function renderAttractions(attractions) {
    $('.scrollBox').empty();
    attractions.forEach(function(attr) {
        var attractionHtml = `
            <div class="divBlock">
                <div class="location">
                    <img class="thumbnail" src="${attr.attr_img}"/>
                    <div class="contentBox">
                        <input type="hidden" name="attrId" class="attrId" value="${attr.attr_id}"/>
                        <div class="localTitle">${attr.attr_name}</div>
                        <div>${attr.attr_local}</div>
                    </div>
                    <img class="selectBox" src="/images/plan/none_select.svg">
                </div>
            </div>
        `;
        $('.scrollBox').append(attractionHtml);
    });
	initializePagination(); // 페이지네이션 초기화
}