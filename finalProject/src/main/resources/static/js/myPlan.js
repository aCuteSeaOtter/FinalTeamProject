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

var map;
var markers = [];
var polylines = []; // polyline 객체를 저장할 배열
var mapInitialized = false; // 지도 초기화 여부를 체크하는 변수

// 날짜별로 선택된 장소 ID를 저장할 객체 생성
var selectedAttrIdDataMap = {};
let day;
var modal;
var mapModal;

$(function() {
	// 채팅 열기 버튼 클릭 시 팝업 창 열기
    $('#chat-toggle').click(function () {
		// #small-chat-box의 현재 상태를 확인하여 show() 또는 hide()를 호출
	    $('#small-chat-box').toggle();  // 현재 상태에 따라 보이거나 숨김
	    if ($('#small-chat-box').is(':visible')) {
	        $('#chat-iframe').attr('src', '/chat');  // 열고 싶은 JSP 파일의 경로 설정
	    }
    });

    // 닫기 버튼 클릭 시 팝업 창 닫기
    $('#close-chat').click(function () {
        $('#small-chat-box').hide();
    });
	
	// ESC 키를 눌렀을 때 팝업 창 닫기
    $(document).keydown(function(e) {
        if (e.key === "Escape") {  // ESC 키가 눌렸을 때
            $('#small-chat-box').hide();  // #small-chat-box를 숨김
        }
    });
	
	let infoId;
	
	// 'X' 버튼을 눌렀을 때 모달 닫기
	$(document).on('click', '.closeBtn2', closeModal);
	
	$('.review-btn').on('click', function() {
		infoId = $('.info_id').val();
		location.href = '/review/insertReview?info_id='+infoId;
	});
	
	$('.sortable').sortable({
		update: function(event, ui) {
			ReservationSeq  = $(this).sortable('toArray').toString();
			var itemIndices = [];
			infoId 			= $(this).find('.info_id').val();
			day 			= $(this).closest('.block').find('span:nth-child(1)').html();
			
			$(this).find('li').each(function(index) {
				var itemId = $(this).find('.attr_id').val();
				itemIndices.push({ id: itemId, index: index+1, info_id: infoId, day: day });
				
				$.ajax({
	                url: '/updateSeq',
	                type: 'POST',
	                contentType: 'application/json',
	                data: JSON.stringify({
	                    itemIndices: itemIndices
	                }),
	                success: function(response) {
	                    console.log('/updateSeq success : ' + response);
	                },
	                error: function(xhr, status, error) {
	                    console.log('/updateSeq error : ' + error);
	                }
	            });
		    });
			alert('수정되었습니다.');
		}
	});
	

	$('.map-btn').on('click', function() {
		mapModal = $('.mapModal');
		
		mapModal.css({'display' : 'block'});
		
		// Tmap API 초기화
	    initTmap();
		
		var block = $(this).closest('.col-lg-3').find('.block');
        var attractions = [];
    
        // 기존 마커 제거
        clearMarkers();
        // 기존 polyline 제거
        //clearPolylines();

        block.find('.sortable > li').each(function() {
            var attrLat = $(this).find('.attr_lat').val();
            var attrLon = $(this).find('.attr_lon').val();
            var attrName = $(this).find('.attr_name').val();
			var planSeq = $(this).find('.plan_seq').val();
			
            console.log("명소 데이터:", attrName, attrLat, attrLon);
            
            if (attrLat && attrLon) {
                attractions.push({
                    name: attrName,
                    lat: attrLat,
                    lon: attrLon,
					seq: planSeq
                });
                addMarker(attrLat, attrLon, attrName, planSeq);
            }
        });

        // 지도 중심 및 줌 레벨 조정
        fitBoundsToMarkers();

        // 경로 최적화 (2개 이상의 장소가 있을 때만 실행)
        if (attractions.length > 1) {
            optimizeRoute(attractions);
        }
		
		
		
		// 모달 영역 밖을 클릭했을 때 모달 닫기
		$(document).on('click', function(event) {
	        if ($(event.target).hasClass('mapModal')) {
	            closeModal();
	        }
	    });
				
		// ESC 키를 눌렀을 때 모달 닫기
		$(document).on('keydown', function(event) {
	        if (event.key === 'Escape' || event.keyCode === 27) {
	            closeModal();
	        }
	    });
		
		let dayNum = block.find('span:nth-child(1)').html();
		$('.map-content > div:nth-child(1) > span:nth-child(1)').html(dayNum);
	});
	
	$('.attr-edit-btn').on('click', function() {
		infoId 	  = $(this).closest('div').find('.info_id').val();
		let tripPlace = $(this).closest('div').find('.trip_place').val();
		
		day = $(this).closest('div').find('span:nth-child(1)').html();
		
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
		});
		
		// 각 날짜에 대한 배열 초기화
	    for (let i = 0; i < selectedDates.length; i++) {
	        selectedAttrIdDataMap[i + 1] = []; // 초기화
	    }
		
		if (!Array.isArray(selectedAttrIdDataMap[day])) {
	        selectedAttrIdDataMap[day] = [];
	    }
		
		// .attr_id 클래스를 가진 모든 input 요소를 선택
	    $(this).closest('div').find('.attr_id').each(function() {
	        // 각 input 요소의 값을 배열에 추가
	        attrIds.push($(this).val());
			
			selectedAttrIdDataMap[day] = attrIds;
	    });
		
		// 모달 버튼과 모달창 가져오기
		modal = $('.myModal');
		modal.css({'display' : 'block'});
		
		loadAllAttractions(tripPlace);
		
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
	
	// '저장' 버튼을 눌렀을 때
	$('.saveBtn').on('click', function() {
		$.ajax({
			url: '/editPlan',
			type: 'POST',
			data: { day: day, data: selectedAttrIdDataMap[day], info_id: infoId },
			success: function(response) {
				console.log('/editPlan success : ', response);
				modal.css({'display' : 'none'});
				window.location.href = '/plan/myPage';
			},
			error: function(error) {
				console.log('/editPlan error : ', error);
			}
		});
		alert("저장되었습니다.");
	});
	
	
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
	
	// 검색 기능
    $('.searchBar').on('keyup', function() {
        var keyword = $('.searchBar').val();

        $.ajax({
            url: '/searchAttr',
            type: 'POST',
            data: { keyword: keyword },
            success: function(response) {
                if (response) {
                    $('.scrollBox').empty();

                    renderAttractions(response);
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
                }
            },
            error: function(error, xhr) {
                opener.console.log('/searchAttr Error : ', xhr.responseText);
            }
        }); // end ajax
    }); // end $('.searchBar').keypress(function(e)
})

// 페이지 로드 시 모든 명소 불러오기
function loadAllAttractions(tripPlace) {
    $.ajax({
        url: '/editAttr',
        type: 'POST',
		data: { trip_place: tripPlace },
        success: function(response) {
            renderAttractions(response);
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


function initTmap() {
	if (mapInitialized) {
        return; // 이미 초기화된 경우 함수를 종료
    }
	// 지도 객체 생성
    map = new Tmapv2.Map("map_div", {
        center: new Tmapv2.LatLng(37.56701114710962, 126.9973611831669),
        width: "100%",
        height: "610px",
        zoom: 15,
        zoomControl: true,
        scrollwheel: true
    });
    console.log("Map initialized:", map);
	
	mapInitialized = true; // 지도가 초기화됨을 표시
}

// 모달 닫기 시 호출되는 함수
function closeModal() {
    if (map) {
        map.destroy(); // 기존 지도를 제거
        mapInitialized = false; // 지도 초기화 여부를 false로 설정
    }
    mapModal.css({'display' : 'none'});
}

function addMarker(lat, lon, title, seq) {
    var marker = new Tmapv2.Marker({
        position: new Tmapv2.LatLng(parseFloat(lat), parseFloat(lon)),
        icon: `https://mt.googleapis.com/vt/icon/name=icons/onion/SHARED-mymaps-container_4x.png,icons/onion/1738-blank-sequence_4x.png&highlight=7cb342&scale=4&color=ffffffff&psize=15&text=${seq}`,
        iconSize: new Tmapv2.Size(25, 25),
        title: title,
        map: map
    });
    markers.push(marker);
}

function clearMarkers() {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
    markers = [];
}

// 새로운 함수 추가: 기존 polyline 제거
/*function clearPolylines() {
    for (var i = 0; i < polylines.length; i++) {
        polylines[i].setMap(null);
    }
    polylines = [];
}*/

function fitBoundsToMarkers() {
    if (markers.length > 0) {
        var bounds = new Tmapv2.LatLngBounds();
        for (var i = 0; i < markers.length; i++) {
            bounds.extend(markers[i].getPosition());
        }
        map.fitBounds(bounds);
    }
}

function optimizeRoute(attractions) {
    var headers = {}; 
    headers["appKey"]="HfsADugOlL7V9xem6QOFx5WtuGp7oNzpa9QxyY7Y";

    var viaPoints = attractions.map((attr, index) => ({
        viaPointId: `via${index}`,
        viaPointName: attr.name,
        viaX: attr.lon,
        viaY: attr.lat
    }));

    $.ajax({
        type:"POST",
        headers : headers,
        url:"https://apis.openapi.sk.com/tmap/routes/routeOptimization20?version=1&format=json",
        async:false,
        contentType: "application/json",
        data: JSON.stringify({
            "reqCoordType": "WGS84GEO",
            "resCoordType" : "EPSG3857",
            "startName": "출발",
            "startX": viaPoints[0].viaX,
            "startY": viaPoints[0].viaY,
            "startTime": "202108151314",
            "endName": "도착",
            "endX": viaPoints[viaPoints.length - 1].viaX,
            "endY": viaPoints[viaPoints.length - 1].viaY,
            "searchOption" : "0",
            "viaPoints": viaPoints.slice(1, -1)
        }),
        success:function(response){
            drawRoute(response);
        },
        error:function(request,status,error){
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
    });
}

function drawRoute(response) {
    var resultData = response.properties;
    var resultFeatures = response.features;
    
    
    for(var i in resultFeatures) {
        var geometry = resultFeatures[i].geometry;
        var properties = resultFeatures[i].properties;
        var polyline_;
        
        var drawInfoArr = [];
        
        if(geometry.type == "LineString") {
            for(var j in geometry.coordinates){
                var latlng = new Tmapv2.Point(geometry.coordinates[j][0], geometry.coordinates[j][1]);
                var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(latlng);
                var convertChange = new Tmapv2.LatLng(convertPoint._lat, convertPoint._lng);
                
                drawInfoArr.push(convertChange);
            }

            // 기존 polyline 제거 후 새로운 polyline 추가
            polyline_ = new Tmapv2.Polyline({
                path : drawInfoArr,
                strokeColor : "#FF0000",
                strokeWeight: 6,
                map : map
            });
            polylines.push(polyline_); // polyline 객체 배열에 추가
        }
    }
}

// Tmap API 로드 완료 후 실행
function onTmapLoaded() {
    console.log("Tmap API loaded");
    initTmap();
    initializePage();
}