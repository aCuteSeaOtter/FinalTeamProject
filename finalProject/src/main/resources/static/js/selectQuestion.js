document.addEventListener("DOMContentLoaded", function() {
    var hiddenMemberNickname = document.getElementById("hidden_member_nickname_container");
    var hiddenQueTitle = document.getElementById("hidden_que_title_container");
    var hiddenQueRegdate = document.getElementById("hidden_que_regdate_container");
    var hiddenQueContent = document.getElementById("hidden_que_content_container");
	var questionContent = document.getElementById("question_content");
	var buttonContainer = document.getElementById("button-container");
    var answerCheckbox = document.getElementById("answerCheckbox");

    // 체크박스의 상태에 따라 해당 필드를 보여주거나 숨깁니다.
    answerCheckbox.addEventListener("change", function() {
        if (this.checked) {
            hiddenMemberNickname.style.display = "block";
            hiddenQueTitle.style.display = "block";
            hiddenQueRegdate.style.display = "block";
            hiddenQueContent.style.display = "block";
            
            hiddenMemberNickname.classList.add("show");
            hiddenQueTitle.classList.add("show");
            hiddenQueRegdate.classList.add("show");
            hiddenQueContent.classList.add("show");
			questionContent.classList.add("show");
			buttonContainer.classList.add("show");
			
        } else {
            hiddenMemberNickname.style.display = "none";
            hiddenQueTitle.style.display = "none";
            hiddenQueRegdate.style.display = "none";
            hiddenQueContent.style.display = "none";
            
            hiddenMemberNickname.classList.remove("show");
            hiddenQueTitle.classList.remove("show");
            hiddenQueRegdate.classList.remove("show");
            hiddenQueContent.classList.remove("show");
			questionContent.classList.remove("show");
			buttonContainer.classList.remove("show");
        }
    });

    // 페이지 로드 시 초기 상태로 숨기기
    hiddenMemberNickname.style.display = "none";
    hiddenQueTitle.style.display = "none";
    hiddenQueRegdate.style.display = "none";
    hiddenQueContent.style.display = "none";
});


function confirmUpdate() {
    return confirm("수정 하시겠습니까?");
}

function confirmDelete(queId) {
	if (confirm("삭제 하시겠습니까?")) {
	        window.location.href = 'deleteQuestion?que_id=' + queId;
	    }
}
