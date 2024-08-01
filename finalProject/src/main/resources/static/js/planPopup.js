$(function() {
	
	// src 속성이 sel일 때 alert 띄우기
    if ($('.selectBox').attr('src') === 'sel') {
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
	
})