var map;
var markers = [];
var polylines = []; // polyline 객체를 저장할 배열

$(function() {
	$('.ssave').on('click', function() {
		location.href='/plan/myPage';
	});
	
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
		
    // 로컬스토리지에서 선택된 날짜 목록을 가져와 배열로 변환
    var selectedDates = localStorage.getItem('selectedDates') ? localStorage.getItem('selectedDates').split(',') : [];
    
    // 날짜별로 선택된 장소 ID를 저장할 객체 생성
    var selectedAttrIdDataMap = {};
	
	$.ajax({
		url: '/weather',
		type: 'POST',
		data: {date: selectedDates},
		success: function(response) {
			console.log(response);
			
			// 응답 데이터가 배열 형태일 것으로 가정
			        let weatherData = response; 

			        // 각 날짜에 대한 dayBlock 요소를 생성하고 추가
			        for (let i = 0; i < weatherData.length; i++) {
			            let dayData = weatherData[i];
			            let dayBlockData = `
			                <div class="dayBlock"> 
			                    <div> 
			                        <div>
			                            <span class="dayNum">DAY ${i+1}</span>
			                            <span class="date">&nbsp;&nbsp;${dayData.WEATHER_DATE}</span>
			                            <span id="tempavg">${dayData.WEATHER_TEMPAVG}°C</span>
			                            <input type="button" class="btn mappingBtn" value="출력"/>
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
		},
		error: function(error) {
			console.log(error);
		}
	});

    

    // Tmap API 초기화
    initTmap();
    
    // 캘린더 이미지 클릭 시 페이지 이동
    $(".calendarImg").on("click", function() {
        location.href = "/calendar/calendar";
    });

    // '장소추가' 버튼 클릭 시 팝업창 열기
    $(document).on('click', '.add-btn', function() {
        var dayBlock = $(this).closest('.dayBlock');
        var dayNum   = dayBlock.find('.dayNum').text().trim();
        var date     = dayBlock.find('.date').text().trim();
        let day      = $(this).data('day');

        localStorage.setItem('date', date);
        localStorage.setItem('dayNum', dayNum);

        // 로컬스토리지에서 popupDataX 값을 가져와 배열로 변환
        let storedData = localStorage.getItem('popupData'+day);
        let attrIds = storedData ? storedData : [];
        let infoId = $('.info_id').val();
        
        localStorage.setItem("infoId", infoId);
        
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
        window.open(`planPopup?day=${day}&selectedAttrIds=${attrIds}&infoId=${infoId}`, "a", "width=1200, height=800, top=50, left=100");   
    }); // end $(".add-btn").on("click", function()
    
    // 맵핑버튼 클릭 시 선택한 명소 맵핑
    $(document).on('click', '.mappingBtn', function() {
        var dayBlock = $(this).closest('.dayBlock');
        var dayNum = dayBlock.find('.dayNum').text().trim();
        var attractions = [];
    
        // 기존 마커 제거
        clearMarkers();
    
        // 기존 polyline 제거
        //clearPolylines();

        dayBlock.find('.inputData > div').each(function() {
            var attrLat = $(this).find('.attr_lat').val();
            var attrLon = $(this).find('.attr_lon').val();
            var attrName = $(this).find('div:first').text();
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
    });
});


function initTmap() {
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
    headers["appKey"] = "HfsADugOlL7V9xem6QOFx5WtuGp7oNzpa9QxyY7Y";

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
            console.log("error:"+error);
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
