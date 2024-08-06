var map;
var markers = [];

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

	// Tmap API 초기화
    initTmap();
    
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
	
	
	// 맵핑버튼 클릭 시 선택한 명소 맵핑
	$('.mappingBtn').on('click', function() {
		console.log("Mapping button clicked");
		
		
		var dayBlock = $(this).closest('.dayBlock');
	    var dayNum = dayBlock.find('.dayNum').text().trim();
	    var attractions = [];
	
	    // 기존 마커 제거
	    clearMarkers();
	
	    dayBlock.find('.inputData > div').each(function() {
	        var attrLat = $(this).find('.attr_lat').val();
	        var attrLon = $(this).find('.attr_lon').val();
	        var attrName = $(this).find('div:first').text();
	
			console.log("명소 데이터:", attrName, attrLat, attrLon);
			
	        if (attrLat && attrLon) {
	            attractions.push({
	                name: attrName,
	                lat: attrLat,
	                lon: attrLon
	            });
	            addMarker(attrLat, attrLon, attrName);
	        }
	    });
	
	    // 지도 중심 및 줌 레벨 조정
	    fitBoundsToMarkers();
	
	    // 경로 최적화 (2개 이상의 장소가 있을 때만 실행)
	    if (attractions.length > 1) {
	        optimizeRoute(attractions);
	    }
	});
	console.log("총 명소 수:", attractions.length);
    
});


function initTmap() {
    // 지도 객체 생성
    map = new Tmapv2.Map("map_div", {
        center: new Tmapv2.LatLng(37.56701114710962, 126.9973611831669),
        width: "100%",
        height: "800px",
        zoom: 15,
        zoomControl: true,
        scrollwheel: true
    });
	console.log("Map initialized:", map);
}

function addMarker(lat, lon, title) {
    var marker = new Tmapv2.Marker({
        position: new Tmapv2.LatLng(parseFloat(lat), parseFloat(lon)),
        icon: "/images/plan/mapMarker.png",
        iconSize: new Tmapv2.Size(38, 38),
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
        url:"https://apis.openapi.sk.com/tmap/routes/routeOptimization10?version=1&format=json",
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
    
    // 결과 출력
    var tDistance = "총 거리 : " + (resultData.totalDistance/1000).toFixed(1) + "km,  ";
    var tTime = "총 시간 : " + (resultData.totalTime/60).toFixed(0) + "분,  ";
    var tFare = "총 요금 : " + resultData.totalFare + "원";
    
    $("#result").text(tDistance+tTime+tFare);
    
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

            polyline_ = new Tmapv2.Polyline({
                path : drawInfoArr,
                strokeColor : "#FF0000",
                strokeWeight: 6,
                map : map
            });
        }
    }
}

// Tmap API 로드 완료 후 실행
function onTmapLoaded() {
    console.log("Tmap API loaded");
    initTmap();
    initializePage();
}