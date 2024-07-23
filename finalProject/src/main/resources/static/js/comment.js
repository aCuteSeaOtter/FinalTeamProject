$(function() {
    // ID 값 확인 함수
    function checkLogin() {
        const id = $('#member_email').val().trim();
        if (!id) {
            alert('로그인 후 이용 바랍니다.');
            return false; 
        }
        return true;
    }

    // '댓글 작성' 버튼이 눌렸을 때
    $('#commentConfirm').click(function() {
        if (!checkLogin()) return; // 로그인 확인

        var param = $('#commentFrm').serialize();

        // 댓글 내용이 비어있는지 확인
        var commentContent = $('#comment_content').val().trim();
        if (!commentContent) {
            alert('내용을 입력해주시기 바랍니다.');
            return;
        }

        $.ajax({
            type: 'post',
            data: param,
            url: '/comment/new',
            success: function(result) {
                if (result === 'success') {
                    $('#comment_content').val('');
                    commentList();
                } else {
                    alert('댓글 작성 실패');
                }
            },
            error: function(err) {
                alert('댓글 작성 실패');
                console.log(err);
            }
        });
    });

    // 댓글 목록을 서버에서 가지고 와서 출력
    function commentList() {
        var review_id = $('#review_id').val();
        $.ajax({
            type: 'get',
            url: '/comments',
            data: { review_id: review_id },
            dataType: 'json',
            success: function(result) {
                var commentList = $('#commentList');
                commentList.empty();

                const currentUserId = $('#member_email').val().trim();

                for (let row of result) {
                    // 데이터 구조를 확인하고 적절히 수정
                    var commentId = row['COMMENT_ID']; // Map에서 'COMMENT_ID'를 가져옵니다
                    var commentContent = row['COMMENT_CONTENT']; // Map에서 'COMMENT_CONTENT'를 가져옵니다
                    var commentRegDate = row['COMMENT_REGDATE']; // Map에서 'COMMENT_REGDATE'를 가져옵니다
                    var memberEmail = row['MEMBER_EMAIL']; // Map에서 'MEMBER_EMAIL'을 가져옵니다
                    var memberNickname = row['MEMBER_NICKNAME']; // Map에서 'MEMBER_NICKNAME'을 가져옵니다

                    // HTML 구조 생성
                    var tr = $('<tr/>').addClass('comment-row').data('comment_id', commentId);
                    var tdContent = $('<td colspan="7"/>').addClass('comment-content');

                    var commentDiv = $('<div/>').addClass('comment-div');

                    // 댓글 내용 및 작성자, 작성일
                    var infoDiv2 = $('<div/>').addClass('comment-info2');
                    var content = $('<span/>').addClass('comment-writer').text(memberNickname);  // 'MEMBER_NICKNAME'으로 수정
                    var reportBtn = $('<button/>').addClass('report-btn').text('🚨').data('comment_id', commentId);
                    var deleteBtn = $('<button/>').addClass('delete-btn').text('삭제').data('comment_id', commentId);
                    infoDiv2.append(content);
                    infoDiv2.append(reportBtn);
                    if (currentUserId === memberEmail) {
                        infoDiv2.append(deleteBtn);
                    }
                    commentDiv.append(infoDiv2);
                    // 내용 & 날짜
                    var infoDiv = $('<div/>').addClass('comment-info');
                    infoDiv.append($('<span/>').addClass('comment-text').text(commentContent));
                    infoDiv.append($('<span/>').addClass('comment-date').text(commentRegDate));
                    commentDiv.append(infoDiv);

                    tdContent.append(commentDiv);
                    tr.append(tdContent);

                    // 댓글 아래에 대댓글 입력 폼 추가
                    var replyFormRow = $('<tr/>').addClass('reply-form-row').hide().data('parent_id', commentId);
                    var replyFormTd = $('<td colspan="7"/>').append(
                        $('<textarea/>').addClass('reply-input').attr('placeholder', '대댓글을 입력하세요...')
                    ).append(
                        $('<button/>').addClass('reply-submit').data('parent_id', commentId).text('대댓글 작성')
                    );
                    replyFormRow.append(replyFormTd);

                    commentList.append(tr);
                    commentList.append(replyFormRow);

                    // 댓글 아래에 대댓글 목록을 위한 구조 추가
                    var nestedReplyList = $('<tr/>').addClass('nested-reply-list').attr('data-parent-comment_id', commentId);
                    var nestedReplies = $('<td colspan="7"/>').addClass('nested-replies');
                    nestedReplyList.append(nestedReplies);
                    commentList.append(nestedReplyList);

                    // 각 댓글의 대댓글 목록을 로드합니다.
                    loadReplyComments(commentId);
                }
            },
            error: function(err) {
                console.log(err);
            }
        });
    }

    // 댓글 내용 클릭 시 대댓글 입력 폼 표시/숨기기
    $('#commentList').on('click', '.comment-text', function() {
        var parentRow = $(this).closest('tr');
        var replyFormRow = parentRow.next('.reply-form-row');
        replyFormRow.toggle();
    });

    // 대댓글 작성 버튼 클릭 시
    $('#commentList').on('click', '.reply-submit', function() {
        if (!checkLogin()) return; // 로그인 확인

        var parent_id = $(this).data('parent_id');
        var replyContent = $(this).siblings('.reply-input').val().trim();
        if (!replyContent) {
            alert('내용을 입력해주시기 바랍니다.');
            return;
        }

        var param = {
            'comment_id': parent_id,
            'reply_content': replyContent,
            'member_email': $('#member_email').val().trim()
        };

        $.ajax({
            type: 'post',
            url: '/replies/new',
            data: JSON.stringify(param),
            contentType: 'application/json',
            success: function(result) {
                if (result === 'success') {
                    commentList();
                } else {
                    alert('대댓글 작성 실패');
                }
            },
            error: function(err) {
                alert('대댓글 작성 실패');
                console.log(err);
            }
        });
    });

    // 대댓글 목록 가져오기
    function loadReplyComments(comment_id) {
        $.ajax({
            type: 'get',
            url: '/replies/nested',
            data: { comment_id: comment_id },
            dataType: 'json',
            success: function(result) {
                var nestedReplies = $(`tr[data-parent-comment_id='${comment_id}']`).find('.nested-replies');
                nestedReplies.empty(); // 기존 대댓글 목록 비우기

                const currentUserId = $('#member_email').val().trim();

                for (let row of result) {
                    var replyId = row['REPLY_ID']; 
                    var replyContent = row['REPLY_CONTENT'];
                    var replyRegDate = row['REPLY_REGDATE'];
                    var memberEmail = row['MEMBER_EMAIL']; // JSON 데이터의 키 이름과 일치하도록 수정
                    var memberNickname = row['MEMBER_NICKNAME'];

                    // reply-comment-row를 생성하고 row 데이터와 연결
                    var replyContentDiv = $('<div/>').addClass('reply-comment-row').data('reply_id', replyId);

                    // 화살표 이미지 추가
                    var arrowImg = $('<img/>').attr('src', '/images/review/arrow3.jpg').addClass('reply-arrow');
                    replyContentDiv.append(arrowImg);

                    // replyCommenter를 위한 span
                    var commenterSpan = $('<span/>').addClass('reply-commenter').text(memberNickname);
                    replyContentDiv.append(commenterSpan);

                    // replyComment를 위한 span
                    var commentSpan = $('<span/>').addClass('reply-comment').text(' ' + replyContent);
                    replyContentDiv.append(commentSpan);

                    // 삭제 버튼과 replyCommentdate를 replyContent의 오른쪽에 붙여넣기
                    var rightContainer = $('<div/>').addClass('right-container');
                    var dateSpan = $('<span/>').addClass('reply-comment-date').text(' ' + replyRegDate);
                    rightContainer.append(dateSpan);

                    // 삭제 버튼을 위한 button
                    var deleteBtn = $('<button/>').addClass('delete-comment').text('삭제').data('reply_id', replyId);
                    rightContainer.append(deleteBtn);

                    // 신고 버튼 추가
                    var reportBtn = $('<button/>').addClass('report-btn').text('🚨').data('reply_id', replyId);
                    rightContainer.append(reportBtn);

                    replyContentDiv.append(rightContainer);

                    // 삭제 버튼은 작성자와 현재 사용자의 ID가 같을 때만 추가
                    if (currentUserId === memberEmail) {
                        deleteBtn.show(); // 삭제 버튼을 보이도록 설정
                    } else {
                        deleteBtn.hide(); // 삭제 버튼을 숨기도록 설정
                    }

                    nestedReplies.append(replyContentDiv);
                }
            },
            error: function(err) {
                console.error('대댓글 목록 가져오기 실패:', err);
            }
        });
    }

    // 대댓글 삭제 버튼 클릭 시
    $('#commentList').on('click', '.delete-comment', function() {
        if (!checkLogin()) return; // 로그인 확인

        var reply_id = $(this).data('reply_id');
        var commentElement = $(this).closest('.reply-comment-row');

        $.ajax({
            type: 'delete',
            url: '/replies/deleteReply/' + reply_id,
            success: function(result) {
                if (result === 'success') {
                    commentElement.remove();
                } else {
                    alert('대댓글 삭제 실패');
                }
            },
            error: function(err) {
                alert('대댓글 삭제 실패');
                console.log('에러 응답:', err);
            }
        });
    });

	// 신고 버튼이 눌렸을 때
	$(document).on('click', '.report-btn', function() {
	    if (!checkLogin()) return; // 로그인 확인

	    var review_id = $(this).closest('.post').data('post-id');
	    var comment_id = $(this).closest('tr').data('comment_id');
	    var reply_id = $(this).closest('.reply-comment-row').data('reply_id');
	    var reviewIdFromPost = $('.post').data('post-id');
	    var commentIdFromCommentRow = $('.comment-row').data('comment_id');

	    // URL 파라미터 설정 및 페이지 이동
	    if (review_id) {
	        window.location.href = `/report/reportWrite?review_id=${review_id}`;
	    } else if (reviewIdFromPost && comment_id) {
	        window.location.href = `/report/reportWrite?review_id=${reviewIdFromPost}&comment_id=${comment_id}`;
	    } else if (reviewIdFromPost && commentIdFromCommentRow && reply_id) {
	        window.location.href = `/report/reportWrite?review_id=${reviewIdFromPost}&comment_id=${commentIdFromCommentRow}&reply_id=${reply_id}`;
	    } else {
	        alert('신고할 항목을 찾을 수 없습니다.');
	    }
	});


    // 페이지 로드 시 댓글 목록 출력
    commentList();

    // 댓글에 삭제 버튼이 눌렸을 때
    $('#commentList').on('click', '.delete-btn', function() {
        if (!checkLogin()) return; // 로그인 확인

        var comment_id = $(this).data('comment_id');

        $.ajax({
            type: 'delete',
            url: '/comments/' + comment_id,
            success: function(result) {
                commentList();
            },
            error: function(err) {
                alert('댓글 삭제 실패');
                console.log(err);
            }
        });
    });
});
