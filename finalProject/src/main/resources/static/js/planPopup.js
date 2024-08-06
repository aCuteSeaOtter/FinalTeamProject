$(function() {
    // 로컬스토리지에서 선택된 날짜 목록을 가져와 배열로 변환
    var selectedDates = localStorage.getItem('selectedDates') ? localStorage.getItem('selectedDates').split(',') : [];

    // x일차 값 저장
    var day = parseInt(localStorage.getItem('dayNum').match(/\d+/)[0]);

    // 날짜별로 선택된 장소 ID를 저장할 객체 생성
    var selectedAttrIdDataMap = {};

    // 각 날짜에 대한 배열 초기화
    for (let i = 0; i < selectedDates.length; i++) {
        selectedAttrIdDataMap[i + 1] = []; // 초기화
    }
	

    // day 값 설정
    day = parseInt(localStorage.getItem('dayNum').match(/\d+/)[0]);


	if (!Array.isArray(selectedAttrIdDataMap[day])) {
        selectedAttrIdDataMap[day] = [];
        selectedAttrIdDataMap[day].push(localStorage.getItem('popupData' + day));
    }
	
    loadAllAttractions();
    loadSelectedAttractions();
	opener.console.log("D"+selectedAttrIdDataMap[day].length);

    // 로컬스토리지에서 x일차 값 출력
    $('.dayNum2').text(localStorage.getItem('dayNum'));

    // 반복문을 사용하여 모든 selectedItem의 attr_id 값을 로그에 출력
    $('.selectedScrollBox .selectedItem').each(function() {
        // 각 selectedItem 요소 내의 attr_id 클래스를 가진 input 요소의 값 추출
        var attrId = $(this).find('.attr_id').val();
        opener.console.log(attrId);

        // attrId가 undefined가 아닌지 확인
        if (attrId) {
            selectedAttrIdDataMap[day].push(attrId);
        }
    });

    // 임시로 selectedAttrIdDataMap[day] 데이터 확인용 버튼
    $('.searchPng').click(function() {
        opener.console.log("저장된 값 : ", selectedAttrIdDataMap[day]);
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
        var selectedLocalTitleText = selectedItem.find(".selectedLocalTitle").text();
        var attr_id = selectedItem.find('.attr_id').val();

        // 삭제가 클릭된 명소의 프론트 삭제
        selectedItem.remove();
        // 선택된 명소 카운트
        updateCnt(-1);

        // 선택 박스 이미지 상태 업데이트
        $(".selectBox").each(function() {
            if ($(this).attr('src').includes('/images/plan/place_select.svg')) {
                var $divBlock = $(this).closest('.divBlock');
                if ($divBlock.find(".localTitle").text() === selectedLocalTitleText) {
                    $(this).attr('src', '/images/plan/none_select.svg');
                    return false;
                }
            }
        }); // end selectBox.each
		
		
        opener.console.log("attr_id 삭제 전 : ", selectedAttrIdDataMap[day]);
		
		
		selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== attr_id);
		opener.console.log("!!"+selectedAttrIdDataMap[day].length);//여기
        updateLocalStorage();
		
		
		
        // 'popupDataX'로 로컬스토리지에 배열 저장
        localStorage.setItem('popupData' + day, selectedAttrIdDataMap[day]);
        opener.console.log("'popupData' : " + localStorage.getItem('popupData' + day));

        $.ajax({
            url: '/deleteTravelPlan',
            type: 'POST',
            data: { day: day, attr_id: attr_id },
            success: function(response) {
                opener.console.log('/deleteTravelPlan Success : ', response);
            },
            error: function(error) {
                opener.console.log('/deleteTravelPlan Error : ', error);
            }
        }); // end ajax

        opener.console.log("attr_id 삭제 후 : ", selectedAttrIdDataMap[day]);

        // plan/plan에서 선택된 요소 삭제
        opener.$('#inputData-' + day).empty();
    }); // end $(document).on('click', '.deleteItem', function()

    // 선택박스 클릭 시 이미지 상태 및 선택된 항목 처리
    $(document).on('click', '.selectBox', function() {
        const currentSrc = $(this).attr('src');
        var divBlock = $(this).closest('.divBlock');
        var selectedItem = $('.selectedScrollBox').find('.selectedItem');
        var exists = false;
        var selectedLocalTitleText = divBlock.find(".localTitle").text();

        // 선택박스 선택 전
        if (currentSrc.includes('/images/plan/none_select.svg')) {
            $(this).attr('src', '/images/plan/place_select.svg');

            updateCnt(1);

            var selectedAttrId = divBlock.find(".attrId").val();
            var selectedThumbnailSrc = divBlock.find(".thumbnail").attr("src");
            var selectedDescriptionText = divBlock.find(".contentBox > div:last-child").text();

            // day에 대한 배열이 초기화되어 있는지 확인
            if (!Array.isArray(selectedAttrIdDataMap[day])) {
                selectedAttrIdDataMap[day] = [];
            }

            // 배열에 선택된 명소 id 저장
            selectedAttrIdDataMap[day].push(selectedAttrId);
            updateLocalStorage();

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

            opener.console.log("선택 후 : " + selectedAttrIdDataMap[day]);

        // 선택박스 선택 후
        } else {
            $(this).attr('src', '/images/plan/none_select.svg');

            updateCnt(-1);

            // 선택된 명소의 수 만큼 반복
            selectedItem.each(function() {
                // 선택된 명소의 이름 저장
                var existingTitle = $(this).find('.selectedLocalTitle').text();

                // 명소의 이름이 선택된 란에 있다면
                if (existingTitle === selectedLocalTitleText) {
                    var attrId = $(this).find('.attr_id').val();
					
                    selectedAttrIdDataMap[day] = selectedAttrIdDataMap[day].filter(id => id !== attrId);
                    updateLocalStorage();
                    //여기

                    $.ajax({
                        url: '/deleteTravelPlan',
                        type: 'POST',
                        data: { day: day, attr_id: attrId },
                        success: function(response) {
                            opener.console.log('/deleteTravelPlan Success : ', response);
                        },
                        error: function(error) {
                            opener.console.log('/deleteTravelPlan Error : ', error);
                        }
                    }); // end ajax

                    // 선택된 명소 프론트 삭제
                    $(this).remove();

                    exists = true;
                    return false;
                } // end if
            }); // end selectedItem.each

            opener.console.log("선택 후 : " + selectedAttrIdDataMap[day]);
        } // end if
    }); // end $(".selectBox").on("click", function()

    // '모든 항목 삭제' 클릭 시 모든 선택된 아이템 제거
    $(".deleteAll").on('click', function() {
        $(".selectBox").attr('src', '/images/plan/none_select.svg');
        $(".selectedScrollBox").find(".selectedItem").remove();

        updateCnt(100);

        $.ajax({
            url: '/deleteAllTravelPlan',
            type: 'POST',
            data: { day: day },
            success: function(response) {
                opener.console.log('Success:', response);
            },
            error: function(error) {
                opener.console.log('Error:', error);
            }
        }); // end ajax

        opener.console.log("전체삭제 전: ", selectedAttrIdDataMap[day]);

        // 배열 초기화
        selectedAttrIdDataMap[day] = [];
        updateLocalStorage();

        opener.console.log("전체삭제 후: ", selectedAttrIdDataMap[day]);

        // plan/plan에서 선택된 요소 삭제
        opener.$('#inputData-' + day).empty();
    }); // end $(".deleteAll").on('click', function()

    // URL 쿼리 파라미터에서 선택된 장소 ID 추출 및 체크 상태 설정
    const urlParams = new URLSearchParams(window.location.search);
    const selectedAttrIds = urlParams.get('selectedAttrIds');
    const selectedIdArray = selectedAttrIds ? selectedAttrIds.split(',') : [];

    // 배열에 값이 있으면 값이 포함된 id의 명소 체크박스를 선택으로 변경
    if (selectedIdArray.length > 0) {
        $('.selectBox').each(function() {
            var attrId = $(this).closest('.divBlock').find('.attrId').val();
            if (selectedIdArray.includes(attrId)) {
                $(this).attr('src', '/images/plan/place_select.svg');
            } // end if
        }); // end selectBox.each
    } // end if

    // '저장' 버튼 클릭 시 부모 창에 데이터 저장
    $('.save-btn').on('click', function() {
        if (selectedAttrIdDataMap[day].length > 0) {
            $.ajax({
                url: '/travelPlan',
                type: 'POST',
                data: { day: day, 'data[]': selectedAttrIdDataMap[day] },
                success: function(response) {
                    opener.console.log('/travelPlan Success : ', response);

                    // 응답 데이터로 부모 창 업데이트
                    response.forEach(item => inputToParent(item, day));

                    // 팝업 창 닫기
                    window.close();
                },
                error: function(error) {
                    opener.console.log('/travelPlan Error : ', error);
                }
            }); // end ajax
        } else {
            // 선택된 데이터가 없는 경우, 팝업 창 닫기
            window.close();
        } // end if

        // plan/plan에서 선택된 요소 삭제
        opener.$('#inputData-' + day).empty();

        opener.console.log("저장 : " + selectedAttrIdDataMap[day]);
    }); // end $('.save-btn').on('click', function()

    // 검색 기능
    $('.searchBar').on('keyup', function() {
        var keyword = $('.searchBar').val();

        $.ajax({
            url: '/searchAttr',
            type: 'POST',
            data: { keyword: keyword },
            success: function(response) {
                opener.console.log('/searchAttr Success : ', response);
                if (response) {
                    $('.scrollBox').empty();

                    renderAttractions(response);
                    highlightSelectedAttractions();
                }
            },
            error: function(error, xhr) {
                opener.console.log('/searchAttr Error : ', xhr.responseText);
            }
        }); // end ajax
    }); // end $('.searchBar').keypress(function(e)

    // 로컬 스토리지 업데이트 함수
    function updateLocalStorage() {
        localStorage.setItem('popupData' + day, JSON.stringify(selectedAttrIdDataMap[day]));
    }

    // 페이지 로드 시 모든 명소 불러오기
    function loadAllAttractions() {
        $.ajax({
            url: '/getAllAttractions',
            type: 'GET',
            success: function(response) {
                renderAttractions(response);
                highlightSelectedAttractions();
            },
            error: function(error) {
                console.log('Error loading attractions:', error);
            }
        });
    }

    // 선택된 명소 불러오기
    function loadSelectedAttractions() {
		let storedData = localStorage.getItem('popupData' + day);
	    selectedAttrIdDataMap[day] = storedData ? JSON.parse(storedData) : [];
        
		
        if (selectedAttrIdDataMap[day].length > 0) {
            $.ajax({
                url: '/getSelectedAttractions',
                type: 'GET',
                data: { attrIds: selectedAttrIdDataMap[day] },
                success: function(response) {
                    renderSelectedAttractions(response);
                },
                error: function(error) {
                    console.log('Error loading selected attractions: ', error);
                }
            });
        } else {
            opener.console.log("No selected attractions found for day", day);
        }
    }

    // 선택된 명소 렌더링
    function renderSelectedAttractions(attractions) {
        $('.selectedScrollBox').empty();
        attractions.forEach(function(attr) {
            var selectedItem = `
                <div class="selectedItem">
                    <div class="selectedLocation">
                        <img class="selectedThumbnail" src="${attr.attr_img}"/>
                        <div class="selectedContentBox">
                            <input type="text" class="attr_id" value="${attr.attr_id}"/>
                            <div class="selectedLocalTitle">${attr.attr_name}</div>
                            <div>${attr.attr_local}</div>
                        </div>
                        <img class="deleteItem" src="../images/plan/trash.png">
                    </div>
                </div>
            `;
            $('.selectedScrollBox').append(selectedItem);
        });
        updateCnt(attractions.length);
    }

    // 선택된 명소 하이라이트
    function highlightSelectedAttractions() {
        let selectedAttrIds = selectedAttrIdDataMap[day];

        // selectedAttrIds가 배열인지 확인하고, 배열이 아닌 경우 빈 배열로 설정
        if (!Array.isArray(selectedAttrIds)) {
            selectedAttrIds = [];
            selectedAttrIds.push(selectedAttrIdDataMap[day]);
        }

        selectedAttrIds.forEach(function(attrId) {
            $(`.scrollBox .divBlock input[value="${attrId}"]`)
                .closest('.divBlock')
                .find('.selectBox')
                .attr('src', '/images/plan/place_select.svg');
        });
		
    }

    // 선택한 항목의 수 업데이트
    function updateCnt(newCnt) {
        var currentCount = parseInt($('.selectedCnt').html().trim(), 10);

        // 100이 들어오면 항목의 수를 0 (전체항목 삭제)
        if (newCnt === 100) {
            currentCount = 0;
        } else {
            currentCount += newCnt;
        } // end if

        $(".selectedCnt").html(currentCount);
    } // end updateCnt()

    // 추가한 일정을 부모 창에 출력
    function inputToParent(data, day) {
        let inputData = `
            <div>
                <div>${data.attr_name}</div>
                <div>${data.attr_local}</div>
                <input type="text" class="attr_id" value="${data.attr_id}"/>
            </div>
        `;

        // day에 값이 있다면
        if (day) {
            // plan/plan에서 선택된 요소 추가
            $(opener.document).find(`#inputData-${day}`).append(inputData);
            opener.console.log("일정 추가 성공");
        } // end if
    } // end inputToParent()

    // 명소 렌더링
    function renderAttractions(attractions) {
        $('.scrollBox').empty();
        attractions.forEach(function(attr) {
            var attractionHtml = `
                <div class="divBlock">
                    <div class="location">
                        <img class="thumbnail" src="${attr.attr_img}"/>
                        <div class="contentBox">
                            <input type="text" class="attrId" value="${attr.attr_id}"/>
                            <div class="localTitle">${attr.attr_name}</div>
                            <div>${attr.attr_local}</div>
                        </div>
                        <img class="selectBox" src="/images/plan/none_select.svg">
                    </div>
                </div>
            `;
            $('.scrollBox').append(attractionHtml);
        });
    }
}) // end function()
