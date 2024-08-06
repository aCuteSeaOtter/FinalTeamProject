$(function() {
	// 로컬스토리지에서 선택된 날짜 목록을 가져와 배열로 변환
    var selectedDates = localStorage.getItem('selectedDates') ? localStorage.getItem('selectedDates').split(',') : [];
	    
	
    // 날짜별로 선택된 장소 ID를 저장할 객체 생성
    var selectedAttrIdDataMap = {};
	

    // 각 날짜에 대한 dayBlock 요소를 생성하고 추가
    for (let i = 0; i < selectedDates.length; i++) {
        selectedAttrIdDataMap[i+1] = []; // 초기화

        let dayBlockData = `
            <div class="dayBlock"> 
                <div> 
                    <div>
                        <span class="dayNum">DAY ${i+1}</span>
                        <span class="date">&nbsp;&nbsp;${selectedDates[i]}</span> 
                        <input type="button" class="btn mappingBtn" value="맵핑"/>
                    </div>
                </div>
                <div class="inputData" id="inputData-${i+1}">
                    <!-- 선택한 일정이 추가되는 영역 -->
                </div>
                <input type="button" class="add-btn btn" data-day="${i+1}" value="장소 추가">
            </div>
        `;
		
		// 선택한 날짜 만큼 일정 선택란 추가
        $('.dayBlockWrapper').append(dayBlockData);
    } // end for

    
    // 캘린더 이미지 클릭 시 페이지 이동
    $(".calendarImg").on("click", function() {
        location.href = "/calendar/calendar";
    });

	
    // '장소추가' 버튼 클릭 시 팝업창 열기
	$(".add-btn").on("click", function() {
	    var dayBlock = $(this).closest('.dayBlock');
	    var dayNum   = dayBlock.find('.dayNum').text().trim();
	    var date     = dayBlock.find('.date').text().trim();
	    let day      = $(this).data('day');

		localStorage.setItem('date', date);
	    localStorage.setItem('dayNum', dayNum);

		// 로컬스토리지에서 popupDataX 값을 가져와 배열로 변환
	    let storedData = localStorage.getItem('popupData'+day);
	    let attrIds = storedData ? storedData : [];
		
	    // 배열이 아니라면 빈 배열로 초기화
	    if (!Array.isArray(attrIds)) {
	        attrIds = [];
	    }

	    // 선택한 날짜 만큼 생성된 일정 선택란의 수 만큼 반복
	    dayBlock.find('.inputData > div').each(function() {
	        // attr_id값을 저장
	        var attrId = $(this).find('.attr_id').val();

	        // attr_id가 포함되어있지 않으면 배열에 저장 (중복확인)
	        if (attrId && !attrIds.includes(attrId)) {
	            attrIds.push(attrId);
	        } // end if
	    }); // end .inputData > div.each

	    // 중복 없이 업데이트
	    selectedAttrIdDataMap[day] = attrIds;

	    console.log("장소추가 시작 : " + selectedAttrIdDataMap[day]);
		localStorage.setItem('popupData' + day, JSON.stringify(selectedAttrIdDataMap[day]));
		
		
		// popup창 열기
	    window.open(`planPopup?day=${day}&selectedAttrIds=${attrIds}`, "a", "width=1200, height=800, top=50, left=100");   
	}); // end $(".add-btn").on("click", function()
    
});