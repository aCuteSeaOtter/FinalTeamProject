$(document).ready(function() {
    $("div[id^='post-']").each(function() {
        const postDiv = $(this);
        const reviewId = postDiv.find("[id^='hate-button-']").data("review_id");
        const memberEmail = postDiv.find("[id^='hate-button-']").data("nickname");

        function updateHateStatus() {
            $.get(`/hates/${reviewId}/${memberEmail}`, function(status) {
                if (status == 1) {
                    postDiv.find("[id^='hate-button-'] i").removeClass("fa-regular").addClass("fa-solid");
                } else {
                    postDiv.find("[id^='hate-button-'] i").removeClass("fa-solid").addClass("fa-regular");
                }
            });
        }

        function updateHateCount() {
            $.get(`/hates/count/${reviewId}`, function(count) {
                postDiv.find("[id^='hate-count-']").text(count);
            });
        }

        postDiv.find("[id^='hate-button-']").click(function() {
            // memberEmail이 null이거나 빈 문자열일 때 경고 메시지 표시
            if (!memberEmail) {
                alert("로그인 후 이용 바랍니다.");
                return; // 클릭 이벤트 종료
            }

            const hateState = postDiv.find("[id^='hate-button-'] i").hasClass("fa-regular") ? 1 : 0;

            $.post(`/hates/${reviewId}/${memberEmail}`, { hateState: hateState }, function() {
                updateHateStatus();
                updateHateCount();
            });
        });

        updateHateStatus();
        updateHateCount();
    });
});
