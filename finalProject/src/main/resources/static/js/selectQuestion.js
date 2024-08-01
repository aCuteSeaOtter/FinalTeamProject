// 답변 확인하기 체크박스의 상태 변화를 감지하여 비밀글 내용 입력란 표시/숨김
    document.getElementById("answerCheckbox").addEventListener( "change", function() {
        var answerContentRow = document.getElementById("answerContentRow");

        // 비밀글로 설정하기 체크박스가 체크되었는지 확인
        if (this.checked) {
            // 비밀글로 설정하기 체크박스가 체크되었을 때 비밀글 내용 입력란 표시
            answerContentRow.style.display = "flex";
        } else {
            // 비밀글로 설정하기 체크박스가 체크 해제되었을 때 비밀글 내용 입력란 숨김
            answerContentRow.style.display = "none";
        }
    });