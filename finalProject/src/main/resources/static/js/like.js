$(document).ready(function() {
    // HTML의 data-* 속성에서 값을 가져옵니다.
    const reviewId = $("#like-button").data("review_id");
    const nickname = $("#like-button").data("nickname");

    function updateLikeStatus() {
        $.get(`/likes/${reviewId}/${nickname}`, function(status) {
            if (status == 1) {
                $("#like-button i").removeClass("fa-regular").addClass("fa-solid");
            } else {
                $("#like-button i").removeClass("fa-solid").addClass("fa-regular");
            }
        });
    }
 
    function updateLikeCount() {
        $.get(`/likes/count/${reviewId}`, function(count) {
            $("#like-count").text(count);
        });
    }

    $("#like-button").click(function() {
        // nickname이 null이거나 빈 문자열일 때 경고 메시지 표시
        if (!nickname) {
            alert("로그인 후 이용 바랍니다.");
            return; // 클릭 이벤트 종료
        }

        const likeState = $("#like-button i").hasClass("fa-regular") ? 1 : 0;

        $.post(`/likes/${reviewId}/${nickname}`, { likeState: likeState }, function() {
            updateLikeStatus();
            updateLikeCount();
        });
    });

    updateLikeStatus();
    updateLikeCount();
});