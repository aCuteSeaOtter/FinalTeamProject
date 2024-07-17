$(function() {
	$(".add-btn").on("click", function() {
		/* 일정 추가를 위한 팝업창 */
		showPopup();
		function showPopup() { window.open("planPopup", "a", "width=1200, height=800, top=50"); }
	});
	
	const selectBox = $(".selectBox");
	const noneSel = '../images/plan/none_select.svg';
	const sel = '../images/plan/place_select.svg';

	selectBox.on("click", function() {
	    const currentSrc = $(this).attr('src'); // 현재 클릭된 요소의 src 속성을 가져옴
	    if(currentSrc.includes(noneSel)) {
	        $(this).attr('src', sel); // src 속성을 변경
	    } else {
	        $(this).attr('src', noneSel); // src 속성을 변경
	    }
	});
})