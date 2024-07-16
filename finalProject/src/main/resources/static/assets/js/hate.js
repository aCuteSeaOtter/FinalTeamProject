$(document).ready(function() {
    $("div[id^='post-']").each(function() {
        const postDiv = $(this);
        const bno = postDiv.find("[id^='hate-button-']").data("bno");
        const id = postDiv.find("[id^='hate-button-']").data("id");

        function updateHateStatus() {
            $.get(`/hates/${bno}/${id}`, function(status) {
                if (status == 1) {
                    postDiv.find("[id^='hate-button-'] img").attr("src", "/assets/images/hate2.jpg");
                } else {
                    postDiv.find("[id^='hate-button-'] img").attr("src", "/assets/images/unhate2.jpg");
                }
            });
        }

        function updateHateCount() {
            $.get(`/hates/count/${bno}`, function(count) {
                postDiv.find("[id^='hate-count-']").text(count);
            });
        }

        postDiv.find("[id^='hate-button-']").click(function() {
            // id가 null이거나 빈 문자열일 때 경고 메시지 표시
            if (!id) {
                alert("로그인 후 이용 바랍니다.");
                return; // 클릭 이벤트 종료
            }

            $.post(`/hates/${bno}/${id}`, function() {
                updateHateStatus();
                updateHateCount();
            });
        });

        updateHateStatus();
        updateHateCount();
    });
});
