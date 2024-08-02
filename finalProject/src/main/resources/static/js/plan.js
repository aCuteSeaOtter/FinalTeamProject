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
                            <input type="hidden" class="attr_id" value="${selectedAttrId}"/>
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

        // 선택된 아이템 ID 배열에서 제거
        selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== attr_id);
        console.log("휴지통 : " + selectedAttrIdDataMap[day]);
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
});
