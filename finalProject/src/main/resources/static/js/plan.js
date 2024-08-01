$(function() {
	var selectedDates = localStorage.getItem('selectedDates').split(',');
	//$('.selectedDate').html(localStorage.getItem('selectedStartDate') +" ~ "+ localStorage.getItem('selectedEndDate') +"&nbsp&nbsp");
	
	
	for(let i = 0; i < selectedDates.length; i++) {
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
		$(document).find('.dayBlockWrapper').append(dayBlockData);
	}
	
	
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
		location.href = "/calendar/calendar";
	});


	// '장소추가' 버튼 클릭 시 팝업창 열기
	$(".add-btn").on("click", function() {
		// 클릭된 버튼의 부모 div.dayBlock을 찾음
		var dayBlock = $(this).closest('.dayBlock');

		// dayBlock 내의 span.dayNum을 찾음
		var dayNum = dayBlock.find('.dayNum').text().trim();
		var date = dayBlock.find('.date').text().trim();

		let day = $(this).data('day');

		// .selectedDate 값을 가져와 세션에 저장
		localStorage.setItem('dayNum', dayNum);
		localStorage.setItem('date', date);
		
		    
	    // .dayBlock 안의 모든 명소의 attr_id 값을 저장할 배열
	    var attrIds = [];

		// .dayBlock 내의 .inputData 요소를 순회하면서 .selectedItem 내의 .attr_id 값을 추출
	    dayBlock.find('.inputData > div').each(function() {
            var attrId = $(this).find('.attr_id').val();
            if (attrId) { // attrId가 존재하는지 확인
                attrIds.push(attrId);
            }
	    });
		

		window.open(`planPopup?day=${day}&selectedAttrIds=${attrIds}`, "a", "width=1200, height=800, top=50, left=100");
	});
	// 로컬스토리지에서 값을 꺼내와 '.dayNum2'에 출력
	//$('.selectedDate2').text(localStorage.getItem('selectedStartDate') +" ~ "+ localStorage.getItem('selectedEndDate'));
	$('.dayNum2').text(localStorage.getItem('dayNum'));
	//$('.date2').text(localStorage.getItem('date'));



	let selectedAttrId;
	let selectedAttrIdData = [];

	// + 버튼 클릭 시 체크 버튼으로 교체 및 선택된 요소 추가
	const selectBox = $(".selectBox"); // .selectBox 클래스 요소 선택
	const noneSel = '/images/plan/none_select.svg'; // 선택되지 않은 이미지 경로
	const sel = '/images/plan/place_select.svg'; // 선택된 이미지 경로


	selectBox.on("click", function() {
		const currentSrc = $(this).attr('src'); // 현재 클릭된 요소의 src 속성 가져오기
		var divBlock = $(this).closest('.divBlock'); // 클릭한 selectBox의 부모 divBlock 요소 선택
		var selectedLocalTitleText = divBlock.find(".localTitle").text(); // 선택된 지역명 텍스트 가져오기

		// 이미 추가된 요소인지 확인
		var selectedItem = $('.selectedScrollBox').find('.selectedItem');
		var exists = false;
		
		// 이미지 상태에 따라 클릭 시 교체
		if (currentSrc.includes(noneSel)) {
			// 존재하지 않는 경우 추가
			$(this).attr('src', sel); // 선택된 이미지로 변경
			// 추가한 일정의 수 카운트
			updateCnt(1);

			selectedAttrId = divBlock.find(".attrId").val();
			var selectedThumbnailSrc = divBlock.find(".thumbnail").attr("src"); // 선택된 썸네일 이미지 경로 가져오기
			var selectedDescriptionText = divBlock.find(".contentBox > div:last-child").text(); // 선택된 설명 텍스트 가져오기

			selectedAttrIdData.push(selectedAttrId);
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
		} else {
			$(this).attr('src', noneSel); // 선택되지 않은 이미지로 변경
			selectedItem.each(function() {
				var existingTitle = $(this).find('.selectedLocalTitle').text(); // 기존 추가된 요소의 지역명 텍스트 가져오기
				if (existingTitle === selectedLocalTitleText) {
					
					// 한번 더 클릭 시, 제거
					for (let attrId of selectedAttrIdData) {
						if (attrId === selectedAttrId) {
							selectedAttrIdData.splice(selectedAttrIdData.indexOf(attrId), 1);
							break;  // 원소를 찾아 제거했으므로 루프를 종료
						}
					}
					
					
					// 이미 존재하는 경우 제거
					$(this).remove();

					updateCnt(-1);

					exists = true;
					return false; // each 반복문 중단
				}
			});
		}
	});



	const noneDelItem = '../images/plan/trash.png'; // 삭제되지 않은 휴지통 이미지 경로
	const delItem = '../images/plan/trash_red.png'; // 삭제된 휴지통 이미지 경로

	// 휴지통에 마우스 오버 시 색상 변경
	$(this).on('mouseenter', '.deleteItem', function() {
		const currentSrc = $(this).attr('src'); // 현재 호버된 요소의 src 속성 가져오기
		if (currentSrc.includes(noneDelItem)) {
			$(this).attr('src', delItem); // 삭제된 휴지통 이미지로 변경
		}
	});

	// 휴지통에서 마우스 떠날 시 원래 색상 복원
	$(this).on('mouseleave', '.deleteItem', function() {
		const currentSrc = $(this).attr('src'); // 현재 호버된 요소의 src 속성 가져오기
		if (currentSrc.includes(delItem)) {
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
		updateCnt(-1);
		

		var selectedItem = $(this).closest(".selectedItem"); // 클릭된 deleteItem의 부모 selectedItem 요소 선택
		var selectedLocalTitleText = selectedItem.find(".selectedLocalTitle").text(); // 선택된 지역명 텍스트 가져오기

		// 해당 요소 제거
		selectedItem.remove();

		// 관련 selectBox의 이미지 변경
		$(".selectBox").each(function() {
			var currentSrc = $(this).attr('src'); // 현재 selectBox의 src 속성 가져오기
			if (currentSrc.includes(sel)) { // 선택된 이미지인 경우
				var $divBlock = $(this).closest('.divBlock'); // 해당 selectBox의 부모 divBlock 요소 선택
				var titleText = $divBlock.find(".localTitle").text(); // 해당 selectBox의 지역명 텍스트 가져오기
				if (titleText === selectedLocalTitleText) {
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
		updateCnt(100);

		// 이미 추가된 요소인지 확인
		var selectedItem = $(".selectedScrollBox").find(".selectedItem");

		// 관련 selectBox의 이미지 변경
		$(".selectBox").attr('src', '../images/plan/none_select.svg')

		// selectItem 제거
		selectedItem.remove();
	});

	
	// URL에서 쿼리 파라미터 추출
    const urlParams = new URLSearchParams(window.location.search);
    const selectedAttrIds = urlParams.get('selectedAttrIds');
    const selectedIdArray = selectedAttrIds ? selectedAttrIds.split(',') : [];

    // 이미 선택된 장소의 체크 상태 설정
    if (selectedIdArray.length > 0) {
        $('.selectBox').each(function() {
            var attrId = $(this).closest('.divBlock').find('.attrId').val();
            if (selectedIdArray.includes(attrId)) {
                $(this).attr('src', '/images/plan/place_select.svg'); // 선택된 상태로 표시
            }
        });
    }

	
	// 버튼 클릭 이벤트 핸들러 
	$('.save-btn').on('click', function() {
		alert("배열 확인 : " + selectedAttrIdData);
		let day = localStorage.getItem('dayNum')
		day = day.match(/\d+/)[0];

		$.ajax({
			url: '/travelPlan',
			type: 'POST',
			data: {
				day : day,
				'data[]': selectedAttrIdData
			},
			success: function(response) {
				console.log('Success:', response);
				response.forEach(item => {
					// 'inputToParent' 함수를 호출하여 받은 데이터 처리
					inputToParent(item, day);
				});
				window.close();
			},
			error: function(error, xhr) {
				console.log('Error:', error, xhr);
			}
		});
	});
	
	
	
	
	
	
 
	// plan/plan 추가한 일정을 출력
	function inputToParent(data, day) {
		opener.console.log(data);
		let inputData = `
	        <div>
	            <div>${data.attr_name}</div>
	            <div>${data.attr_local}</div>
				<input type="text" class="attr_id" value="${data.attr_id}"/>
	        </div>
	    `;
		if(day != undefined && day != null) {
			console.log("plan 297 day :", day);
			
			$(opener.document).find(`#inputData-${day}`).append(inputData);
			
		} else {
			console.log("plan 299 day :",day);
		}
		
	}

	// 추가한 일정의 수 카운트
	function updateCnt(newCnt) {
		var currentCount = parseInt($('.selectedCnt').html().trim(), 10);
		if(newCnt == 100) {
			currentCount = 0;
		} else {
			currentCount += newCnt;
		}
		
		$(".selectedCnt").html(currentCount);
	}
});


