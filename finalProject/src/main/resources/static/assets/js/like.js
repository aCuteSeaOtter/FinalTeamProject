$(document).ready(function() {
    // HTML의 data-* 속성에서 값을 가져옵니다.
    const bno = $("#like-button").data("bno");
    const id = $("#like-button").data("id");

    function updateLikeStatus() {
        $.get(`/likes/${bno}/${id}`, function(status) {
            if (status == 1) {
                $("#like-button img").attr("src", "/assets/images/like.jpg");
            } else {
                $("#like-button img").attr("src", "/assets/images/unlike.jpg");
            }
        });
    }

    function updateLikeCount() {
        $.get(`/likes/count/${bno}`, function(count) {
            $("#like-count").text(count);
        });
    }

    $("#like-button").click(function() {
        // id가 null이거나 빈 문자열일 때 경고 메시지 표시
        if (!id) {
            alert("로그인 후 이용 바랍니다.");
            return; // 클릭 이벤트 종료
        }

        $.post(`/likes/${bno}/${id}`, function() {
            updateLikeStatus();
            updateLikeCount();
        });
    });

    updateLikeStatus();
    updateLikeCount();
});
