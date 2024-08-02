document.getElementById("answerCheckbox").addEventListener("change", function() {
    // 각 필드와 라벨에 대한 id를 사용하여 해당 요소를 선택합니다.
    var hiddenMemberNickname = document.getElementById("hidden_member_nickname_container");
    var hiddenQueTitle = document.getElementById("hidden_que_title_container");
    var hiddenQueRegdate = document.getElementById("hidden_que_regdate_container");
    var hiddenQueContent = document.getElementById("hidden_que_content_container");

    // 체크박스의 상태에 따라 해당 필드를 보여주거나 숨깁니다.
    if (this.checked) {
        hiddenMemberNickname.style.display = "block";
        hiddenQueTitle.style.display = "block";
        hiddenQueRegdate.style.display = "block";
        hiddenQueContent.style.display = "block";
    } else {
        hiddenMemberNickname.style.display = "none";
        hiddenQueTitle.style.display = "none";
        hiddenQueRegdate.style.display = "none";
        hiddenQueContent.style.display = "none";
    }
});

// 페이지 로드 시 초기 상태로 숨기기
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("hidden_member_nickname_container").style.display = "none";
    document.getElementById("hidden_que_title_container").style.display = "none";
    document.getElementById("hidden_que_regdate_container").style.display = "none";
    document.getElementById("hidden_que_content_container").style.display = "none";
});

	function confirmUpdate() {
        return confirm("수정 하시겠습니까?");
    }

    function confirmDelete() {
        return confirm("삭제 하시겠습니까?");
    }