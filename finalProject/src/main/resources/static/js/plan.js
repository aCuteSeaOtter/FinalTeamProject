$(function() {
	let currentPage = 1;
	const totalPages = Math.ceil($('.dayBlock').length / 3);

	$('#nextPage').click(function() {
		if (currentPage < totalPages) {
			$(`#page${currentPage}`).hide();
			currentPage++;
			$(`#page${currentPage}`).show();
			updatePaginationButtons();
			}
		});
	
	$('#prevPage').click(function() {
		if (currentPage > 1) {
			$(`#page${currentPage}`).hide();
			currentPage--;
			$(`#page${currentPage}`).show();
			updatePaginationButtons();
		}
	});
	
	function updatePaginationButtons() {
		$('#prevPage').prop('disabled', currentPage === 1);
	    $('#nextPage').prop('disabled', currentPage === totalPages);
	}
	
	
	
	$(".calendarImg").on("click", function() {
		location.href="/calendar/calendar";
	});
	
	
    // 일정 추가 버튼 클릭 시 팝업창 열기
	$(".add-btn").on("click", function() {
	    let day = $(this).data('day');
		
		// .selectedDate 값을 가져와 스토리지에 저장
	    localStorage.setItem('selectedDate', $('.selectedDate').text());
		localStorage.setItem('dayNum', $('.dayNum').text());
		localStorage.setItem('date', $('.date').text());
		
	    window.open(`planPopup?day=${day}`, "a", "width=1200, height=800, top=50, left=100");
	});
	
	// 스토리지에서 값을 꺼내와 '.selectedDate2'에 출력
	$('.selectedDate2').text(localStorage.getItem('selectedDate'));
	$('.dayNum2').text(localStorage.getItem('dayNum'));
	$('.date2').text(localStorage.getItem('date'));
	
	// 편집 버튼 클릭 시 팝업창 열기
	$(".edit-btn").on("click", function() {
	    let day = $(this).data('day');
	    let existingData = [];
	    
	    // 해당 day의 기존 데이터 수집
	    $(`#inputData-${day} .selectedItem`).each(function() {
	        let attrId = $(this).find('input[type="hidden"]').val();
	        existingData.push(attrId);
	    });
	    
	    // 기존 데이터를 쿼리 파라미터로 전달
	    let existingDataParam = existingData.join(',');
	    window.open(`planPopup?day=${day}&existingData=${existingDataParam}`, "a", "width=1200, height=800, top=50, left=100");
	});
	
	
	// 추가한 일정의 수 카운트
	let cnt = 0;
	let selectedAttrId;
	let selectedAttrIdData = [];
	
    // + 버튼 클릭 시 체크 버튼으로 교체 및 선택된 요소 추가
    const selectBox = $(".selectBox"); // .selectBox 클래스 요소 선택
    const noneSel = '/images/plan/none_select.svg'; // 선택되지 않은 이미지 경로
    const sel = '/images/plan/place_select.svg'; // 선택된 이미지 경로
	
	
    selectBox.on("click", function() {
        const currentSrc = $(this).attr('src'); // 현재 클릭된 요소의 src 속성 가져오기
        // 이미지 상태에 따라 클릭 시 교체
        if(currentSrc.includes(noneSel)) {
            $(this).attr('src', sel); // 선택된 이미지로 변경
        } else {
            $(this).attr('src', noneSel); // 선택되지 않은 이미지로 변경
        }
				    
					
        var divBlock = $(this).closest('.divBlock'); // 클릭한 selectBox의 부모 divBlock 요소 선택
        var selectedLocalTitleText = divBlock.find(".localTitle").text(); // 선택된 지역명 텍스트 가져오기

        // 이미 추가된 요소인지 확인
        var selectedItem = $(".selectedScrollBox").find(".selectedItem");
        var exists = false;
        selectedItem.each(function() {
            var existingTitle = $(this).find(".selectedLocalTitle").text(); // 기존 추가된 요소의 지역명 텍스트 가져오기
            if (existingTitle === selectedLocalTitleText) {
                // 이미 존재하는 경우 제거
                $(this).remove();
				
				// 추가한 일정의 수 카운트
				cnt -= 1;
				updateCnt(cnt);
				
                exists = true;
                return false; // each 반복문 중단
            }
        });

        // 존재하지 않는 경우 추가
        if (!exists) {
			// 추가한 일정의 수 카운트
			cnt += 1;
			updateCnt(cnt);
			
			selectedAttrId = divBlock.find(".attrId").val();
            var selectedThumbnailSrc = divBlock.find(".thumbnail").attr("src"); // 선택된 썸네일 이미지 경로 가져오기
            var selectedDescriptionText = divBlock.find(".contentBox > div:last-child").text(); // 선택된 설명 텍스트 가져오기
			
			selectedAttrIdData.push( selectedAttrId );
			/*selectedAttrIdData.push({ 'attr_id' :selectedAttrId });*/
			
            // 새로운 항목 HTML 생성
			var newItem = `
			    <div class="selectedItem">
			        <div class="selectedLocation">
			            <img class="selectedThumbnail" src="${selectedThumbnailSrc}"/>
			            <div class="selectedContentBox">
			                <input type="hidden" value="${selectedAttrId}"/>
			                <div class="selectedLocalTitle">${selectedLocalTitleText}</div>
			                <div>${selectedDescriptionText}</div>
			            </div>
			            <img class="deleteItem" src="../images/plan/trash.png">
			        </div>
			    </div>
			`;
            // 생성된 항목을 .selectedScrollBox 안에 추가
            $(".selectedScrollBox").append(newItem);
        }
    }); 
    
	
	
    const noneDelItem = '../images/plan/trash.png'; // 삭제되지 않은 휴지통 이미지 경로
    const delItem = '../images/plan/trash_red.png'; // 삭제된 휴지통 이미지 경로
    
    // 휴지통에 마우스 오버 시 색상 변경
    $(this).on('mouseenter', '.deleteItem', function() {
        const currentSrc = $(this).attr('src'); // 현재 호버된 요소의 src 속성 가져오기
        if(currentSrc.includes(noneDelItem)) {
            $(this).attr('src', delItem); // 삭제된 휴지통 이미지로 변경
        }
    });

    // 휴지통에서 마우스 떠날 시 원래 색상 복원
    $(this).on('mouseleave', '.deleteItem', function() {
        const currentSrc = $(this).attr('src'); // 현재 호버된 요소의 src 속성 가져오기
        if(currentSrc.includes(delItem)) {
            $(this).attr('src', noneDelItem); // 삭제되지 않은 휴지통 이미지로 변경
        }
    });
	
	

    // .deleteItem 클릭 시 요소 제거 및 관련 selectBox 이미지 변경
    $(this).on('click', '.deleteItem', function() {
		let attrIdValue = $(this).closest(".attrId").val();
		alert(attrIdValue);
		for (let attrId of selectedAttrIdData) {
		    if (attrId === selectedAttrId) {
		        selectedAttrIdData.splice(selectedAttrIdData.indexOf(attrId), 1);
		        break;  // 원소를 찾아 제거했으므로 루프를 종료합니다.
		    }
		}
		
		// 추가한 일정의 수 카운트
		cnt -= 1;
		updateCnt(cnt);
		
        var selectedItem = $(this).closest(".selectedItem"); // 클릭된 deleteItem의 부모 selectedItem 요소 선택
        var selectedLocalTitleText = selectedItem.find(".selectedLocalTitle").text(); // 선택된 지역명 텍스트 가져오기

        // 해당 요소 제거
        selectedItem.remove();

        // 관련 selectBox의 이미지 변경
        $(".selectBox").each(function() {
            var currentSrc = $(this).attr('src'); // 현재 selectBox의 src 속성 가져오기
            if(currentSrc.includes(sel)) { // 선택된 이미지인 경우
                var $divBlock = $(this).closest('.divBlock'); // 해당 selectBox의 부모 divBlock 요소 선택
                var titleText = $divBlock.find(".localTitle").text(); // 해당 selectBox의 지역명 텍스트 가져오기
                if(titleText === selectedLocalTitleText) {
                    $(this).attr('src', noneSel); // 선택되지 않은 이미지로 변경
                    return false; // each 반복문 중단
                }
            }
        });
    });
	
	
	
	// '모든 항목 삭제' 클릭 시, 선택된 모든 아이템 제거
	$(".deleteAll").on('click', function() {
		// 모든 항목 삭제
		selectedAttrIdData = [];
		
		// 추가한 일정의 수 카운트
		cnt = 0;
		updateCnt(cnt);
		
		// 이미 추가된 요소인지 확인
        var selectedItem = $(".selectedScrollBox").find(".selectedItem");

        // 관련 selectBox의 이미지 변경
        $(".selectBox").attr('src', '../images/plan/none_select.svg')
		
		// selectItem 제거
		selectedItem.remove();
	});
	


	// 버튼 클릭 이벤트 핸들러 
    $('.save-btn').on('click', function() {
		alert("배열 확인 : " + selectedAttrIdData);
		let day = new URLSearchParams(window.location.search).get('day');
	    $.ajax({
	        url: '/insertPlan',
	        type: 'POST',
	        data: {
	            day: day,
	            data: selectedAttrIdData
	        },
	        success: function(response) {
	            console.log('Success:', response);
	            response.forEach(item => {
	                inputToParent(item, day);
	            });
	            window.close();
	        },
	        error: function(error, xhr) {
	            console.log('Error:', error, xhr);
	        }
	    });
    });
});


// plan/plan 추가한 일정을 출력
function inputToParent(data, day){
    let inputData = `
        <div>
            <div>${data.attr_name}</div>
            <div>${data.attr_tag}</div>
        </div>
    `;
    $(opener.document).find(`#inputData-${day}`).append(inputData);
}

// 추가한 일정의 수 카운트
function updateCnt(newCnt) {
	cnt = newCnt;
	$(".selectedCnt").html(cnt);
}