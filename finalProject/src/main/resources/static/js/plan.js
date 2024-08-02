$(function() {
    // 로컬스토리지에서 선택된 날짜 목록을 가져와 배열로 변환
    var selectedDates = localStorage.getItem('selectedDates').split(',');
    
    // 날짜별로 선택된 장소 ID를 저장할 객체 생성
    var selectedAttrIdDataMap = {};

    // 각 날짜에 대한 dayBlock 요소를 생성하고 추가
    for (let i = 0; i < selectedDates.length; i++) {
        let day = i + 1;
        selectedAttrIdDataMap[day] = []; // 초기화

        let dayBlockData = `
            <div class="dayBlock"> 
                <div> 
                    <div>
                        <span class="dayNum">DAY ${day}</span>
                        <span class="date">&nbsp;&nbsp;${selectedDates[i]}</span> 
                        <input type="button" class="btn mappingBtn" value="맵핑"/>
                    </div>
                </div>
                <div class="inputData" id="inputData-${day}">
                    <!-- 선택한 일정이 추가되는 영역 -->
                </div>
                <input type="button" class="add-btn btn" data-day="${day}" value="장소 추가">
            </div>
        `;
        $('.dayBlockWrapper').append(dayBlockData);
    }

    // 페이지네이션 관련 변수 및 초기화
    let currentPage = 1;
    const totalPages = Math.ceil($('.dayBlock').length / 3);

    // 다음 페이지 버튼 클릭 시 페이지 변경
    $('#nextPage').click(function() {
        if (currentPage < totalPages) {
            $(`#page${currentPage}`).hide();
            currentPage++;
            $(`#page${currentPage}`).show();
            updatePaginationButtons();
        }
    });

    // 이전 페이지 버튼 클릭 시 페이지 변경
    $('#prevPage').click(function() {
        if (currentPage > 1) {
            $(`#page${currentPage}`).hide();
            currentPage--;
            $(`#page${currentPage}`).show();
            updatePaginationButtons();
        }
    });

    // 페이지네이션 버튼 활성화/비활성화 업데이트
    function updatePaginationButtons() {
        $('#prevPage').prop('disabled', currentPage === 1);
        $('#nextPage').prop('disabled', currentPage === totalPages);
    }

    // 캘린더 이미지 클릭 시 페이지 이동
    $(".calendarImg").on("click", function() {
        location.href = "/calendar/calendar";
    });

    // '장소추가' 버튼 클릭 시 팝업창 열기
	$(".add-btn").on("click", function() {
	    var dayBlock = $(this).closest('.dayBlock');
	    var dayNum = dayBlock.find('.dayNum').text().trim();
	    var date = dayBlock.find('.date').text().trim();
	    let day = $(this).data('day');
	    
	    localStorage.setItem('dayNum', dayNum);
	    localStorage.setItem('date', date);

		selectedAttrIdDataMap[day] = localStorage.getItem('popupData'+day);
		
	    // selectedAttrIdDataMap[day]를 초기화하지 않고 그대로 사용
	    var attrIds = selectedAttrIdDataMap[day] || [];

	    dayBlock.find('.inputData > div').each(function() {
	        var attrId = $(this).find('.attr_id').val();
	        if (attrId && !attrIds.includes(attrId)) {
	            attrIds.push(attrId);
	        }
	    });

	    selectedAttrIdDataMap[day] = attrIds; // 중복 없이 업데이트

	    console.log(".add-btn : " + selectedAttrIdDataMap[day]);
		
	    window.open(`planPopup?day=${day}&selectedAttrIds=${attrIds}`, "a", "width=1200, height=800, top=50, left=100");   
	});

    

    

    

    
});
