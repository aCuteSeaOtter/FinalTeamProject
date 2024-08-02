$(function() {
	// 로컬스토리지에서 선택된 날짜 목록을 가져와 배열로 변환
    var selectedDates = localStorage.getItem('selectedDates').split(',');
    
    // 날짜별로 선택된 장소 ID를 저장할 객체 생성
    var selectedAttrIdDataMap = {};

    // 각 날짜에 대한 dayBlock 요소를 생성하고 추가
    for (let i = 0; i < selectedDates.length; i++) {
        let day = i + 1;
        selectedAttrIdDataMap[day] = []; // 초기화
    }
	
	var day = parseInt(localStorage.getItem('dayNum').match(/\d+/)[0]);
	
	console.log("selectedAttrIdDataMap[day]: ", selectedAttrIdDataMap[day]);
	
	// 반복문을 사용하여 모든 selectedItem의 attr_id 값을 로그에 출력
    $('.selectedScrollBox .selectedItem').each(function() {
        // 각 selectedItem 요소 내의 attr_id 클래스를 가진 input 요소의 값 추출
        var attrId = $(this).find('.attr_id').val();
        selectedAttrIdDataMap[day].push(attrId);
        
    });
	
	$('.searchPng').click(function() {
		console.log(selectedAttrIdDataMap[day]);
	});	
	
	
	// 삭제 아이콘 호버 시 색상 변경
    $(document).on('mouseenter', '.deleteItem', function() {
        if ($(this).attr('src').includes('/images/plan/trash.png')) {
            $(this).attr('src', '/images/plan/trash_red.png');
        }
    });

    // 삭제 아이콘에서 마우스 떠날 시 색상 복원
    $(document).on('mouseleave', '.deleteItem', function() {
        if ($(this).attr('src').includes('/images/plan/trash_red.png')) {
            $(this).attr('src', '/images/plan/trash.png');
        }
    });
	
	// 삭제 아이콘 클릭 시 아이템 제거 및 이미지 상태 변경
    $(document).on('click', '.deleteItem', function() {
        var selectedItem = $(this).closest('.selectedItem');
        var attr_id = selectedItem.find('.attr_id').val();
        updateCnt(-1);

        var selectedLocalTitleText = selectedItem.find(".selectedLocalTitle").text();
        selectedItem.remove();

        // 선택 박스 이미지 상태 업데이트
        $(".selectBox").each(function() {
            if ($(this).attr('src').includes('/images/plan/place_select.svg')) {
                var $divBlock = $(this).closest('.divBlock');
                if ($divBlock.find(".localTitle").text() === selectedLocalTitleText) {
                    $(this).attr('src', '/images/plan/none_select.svg');
                    return false;
                }
            }
        });

		
        // 서버와 동기화
        var day = localStorage.getItem('dayNum').match(/\d+/)[0];
		console.log("전 : " + selectedAttrIdDataMap[day]);
		
		// 선택된 아이템 ID 배열에서 제거
        selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== attr_id);
		
		
		localStorage.setItem('popupData'+day, selectedAttrIdDataMap[day]);
		
		
		$.ajax({
            url: '/deleteTravelPlan',
            type: 'POST',
            data: { day: day, attr_id: attr_id },
            success: function(response) {
                console.log('Success:', response);
            },
            error: function(error) {
                console.log('Error:', error);
            }
        });
		
		console.log("후 : " + selectedAttrIdDataMap[day]);

		
        
		
		opener.$('#inputData-'+day).empty();

        console.log("휴지통 : " + selectedAttrIdDataMap[day]);
    });
	
	
	// 로컬스토리지에서 값을 꺼내와 화면에 출력
    $('.dayNum2').text(localStorage.getItem('dayNum'));

    // 선택 박스 클릭 시 이미지 상태 및 선택된 항목 처리
    $(".selectBox").on("click", function() {
        const currentSrc = $(this).attr('src');
        var divBlock = $(this).closest('.divBlock');
        var selectedLocalTitleText = divBlock.find(".localTitle").text();
        var selectedItem = $('.selectedScrollBox').find('.selectedItem');
        var exists = false;

        if (currentSrc.includes('/images/plan/none_select.svg')) {
            $(this).attr('src', '/images/plan/place_select.svg');
            updateCnt(1);

            var selectedAttrId = divBlock.find(".attrId").val();
            var selectedThumbnailSrc = divBlock.find(".thumbnail").attr("src");
            var selectedDescriptionText = divBlock.find(".contentBox > div:last-child").text();

            var day = parseInt(localStorage.getItem('dayNum').match(/\d+/)[0]);
            selectedAttrIdDataMap[day].push(selectedAttrId); // 날짜별로 저장

            var newItem = `
                <div class="selectedItem">
                    <div class="selectedLocation">
                        <img class="selectedThumbnail" src="${selectedThumbnailSrc}"/>
                        <div class="selectedContentBox">
                            <input type="text" class="attr_id" value="${selectedAttrId}"/>
                            <div class="selectedLocalTitle">${selectedLocalTitleText}</div>
                            <div>${selectedDescriptionText}</div>
                        </div>
                        <img class="deleteItem" src="../images/plan/trash.png">
                    </div>
                </div>
            `;
            $(".selectedScrollBox").append(newItem);
        } else {
            $(this).attr('src', '/images/plan/none_select.svg');
            selectedItem.each(function() {
                var existingTitle = $(this).find('.selectedLocalTitle').text();
                if (existingTitle === selectedLocalTitleText) {
                    var attrId = $(this).find('.attr_id').val();
                    var day = parseInt(localStorage.getItem('dayNum').match(/\d+/)[0]);

                    // 선택된 아이템 ID 배열에서 제거
                    selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== attrId);

                    $(this).remove();
                    updateCnt(-1);
                    exists = true;
                    return false;
                }
            });
            console.log("체크 : " + selectedAttrIdDataMap);
        }
    });

    

    

    // '모든 항목 삭제' 클릭 시 모든 선택된 아이템 제거
    $(".deleteAll").on('click', function() {
        updateCnt(100);

        $(".selectBox").attr('src', '/images/plan/none_select.svg');
        $(".selectedScrollBox").find(".selectedItem").remove();

        var day = localStorage.getItem('dayNum').match(/\d+/)[0];
		
		opener.$('#inputData-'+day).empty();

        $.ajax({
            url: '/deleteAllTravelPlan',
            type: 'POST',
            data: { day: day },
            success: function(response) {
                console.log('Success:', response);
            },
            error: function(error) {
                console.log('Error:', error);
            }
        });
        selectedAttrIdDataMap[day] = [];
		
		localStorage.setItem('popupData'+day, selectedAttrIdDataMap[day]);
		
		opener.console.log("deleteAll 후: ", selectedAttrIdDataMap[day]);
    });
	
	
	// URL 쿼리 파라미터에서 선택된 장소 ID 추출 및 체크 상태 설정
    const urlParams = new URLSearchParams(window.location.search);
    const selectedAttrIds = urlParams.get('selectedAttrIds');
    const selectedIdArray = selectedAttrIds ? selectedAttrIds.split(',') : [];

    if (selectedIdArray.length > 0) {
        $('.selectBox').each(function() {
            var attrId = $(this).closest('.divBlock').find('.attrId').val();
            if (selectedIdArray.includes(attrId)) {
                $(this).attr('src', '/images/plan/place_select.svg');
            }
        });
    }
	
	
	// '저장' 버튼 클릭 시 부모 창에 데이터 저장
    $('.save-btn').on('click', function() {
        var day = localStorage.getItem('dayNum').match(/\d+/)[0];
		console.log("시작 : " + selectedAttrIdDataMap[day]);
		opener.$('#inputData-'+day).empty();

        if (selectedAttrIdDataMap[day].length > 0) {
            $.ajax({
                url: '/travelPlan',
                type: 'POST',
                data: { day: day, 'data[]': selectedAttrIdDataMap[day] },
                success: function(response) {
                    console.log('Success:', response);
                    
                    // 응답 데이터로 부모 창 업데이트
                    response.forEach(item => inputToParent(item, day));
                    console.log("앙 : " + selectedAttrIdDataMap[day]);
                    
                    // 팝업 창 닫기
                    window.close();
                },
                error: function(error) {
                    console.log('Error:', error);
                }
            });
        } else {
            // 선택된 데이터가 없는 경우, 팝업 창 닫기
            window.close();
        }
        console.log("save : " + selectedAttrIdDataMap[day]);
    });
	
	
	
})



// 선택한 일정의 수 업데이트
function updateCnt(newCnt) {
    var currentCount = parseInt($('.selectedCnt').html().trim(), 10);
    if (newCnt === 100) {
        currentCount = 0;
    } else {
        currentCount += newCnt;
    }
    $(".selectedCnt").html(currentCount);
}



// 추가한 일정을 부모 창에 출력
function inputToParent(data, day) {
    let inputData = `
        <div>
            <div>${data.attr_name}</div>
            <div>${data.attr_local}</div>
            <input type="hidden" class="attr_id" value="${data.attr_id}"/>
        </div>
    `;
    
    if (day) {
        $(opener.document).find(`#inputData-${day}`).append(inputData);
    }
}