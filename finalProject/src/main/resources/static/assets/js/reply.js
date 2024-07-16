$(function() {
    // ID 값 확인 함수
    function checkLogin() {
        const id = $('#replyer').val().trim();
        if (!id) {
            alert('로그인 후 이용 바랍니다.');
            return false;
        }
        return true;
    }

    // '댓글추가' 버튼이 눌렸을 때
    $('#replyConfirm').click(function() {
        if (!checkLogin()) return; // 로그인 확인

        var param = $('#replyFrm').serialize();

        // 댓글 내용이 비어있는지 확인
        var replyContent = $('#reply').val().trim();
        if (!replyContent) {
            alert('내용을 입력해주시기 바랍니다.');
            return;
        }

        $.ajax({
            type: 'post',
            data: param,
            url: '../replies/new',
            success: function(result) {
                $('#reply').val('');
                replyList();
            },
            error: function(err) {
                alert('error');
                console.log(err);
            }
        });
    });

    // 댓글목록을 서버에서 가지고 와서 출력
    replyList();
    function replyList() {
        $.ajax({
            type: 'get',
            url: '../replies',
            data: { bno: $('#bno').val() },
            dataType: 'json',
            success: function(result) {
                var replyList = $('#replyList');
                replyList.empty();

                const currentUserId = $('#replyer').val().trim();

                for (let row of result) {
                    var tr = $('<tr/>').addClass('comment-row').data('rno', row['rno']);
                    var tdContent = $('<td colspan="7"/>').addClass('comment-content');

                    var commentDiv = $('<div/>').addClass('comment-div');

                    // 댓글 내용 및 작성자, 작성일
                    var infoDiv2 = $('<div/>').addClass('comment-info2');
                    var content = $('<span/>').addClass('comment-writer').text(row['replyer']);
                    // 신고 및 삭제 버튼
                    var reportBtn = $('<button/>').addClass('report-btn').text('🚨').data('rno', row['rno']);
                    var deleteBtn = $('<button/>').addClass('delete-btn').text('삭제').data('rno', row['rno']);
                    infoDiv2.append(content);
                    infoDiv2.append(reportBtn);
                    if (currentUserId === row['replyer']) {
                        infoDiv2.append(deleteBtn);
                    }
                    commentDiv.append(infoDiv2);
                    // 내용 & 날짜
                    var infoDiv = $('<div/>').addClass('comment-info');
                    infoDiv.append($('<span/>').addClass('comment-text').text(row['reply']));
                    infoDiv.append($('<span/>').addClass('comment-date').text(row['replydate']));
                    commentDiv.append(infoDiv);

                    tdContent.append(commentDiv);
                    tr.append(tdContent);

                    // 댓글 아래에 대댓글 리스트를 위한 구조 추가
                    var nestedReplyList = $('<tr/>').addClass('nested-reply-list').attr('data-parent-rno', row['rno']);
                    var nestedReplies = $('<td class="new-reply-comment" colspan="7"/>').html('<div class="nested-replies"></div>');
                    nestedReplyList.append(nestedReplies);
                    replyList.append(tr);
                    replyList.append(nestedReplyList);

                    // 각 댓글의 대댓글 목록을 로드합니다.
                    loadReplyComments(row['rno']);
                }
            },
            error: function(err) {
                console.log(err);
            }
        });
    }

    // 대댓글 목록 가져오기
    function loadReplyComments(rno) {
        $.ajax({
            type: 'get',
            url: '/repliesComment/nested',
            data: { rno: rno },
            dataType: 'json',
            success: function(result) {
                var nestedReplies = $(`tr[data-parent-rno='${rno}']`).find('.nested-replies');
                nestedReplies.empty(); // 기존 대댓글 목록 비우기

                const currentUserId = $('#replyer').val().trim();

                for (let row of result) {
                    // reply-comment-row를 생성하고 row 데이터와 연결
                    var replyContent = $('<div/>').addClass('reply-comment-row').data('rcno', row['rcno']);
					
					// 화살표 이미지 추가
                    var arrowImg = $('<img/>').attr('src', '/assets/images/arrow3.jpg').addClass('reply-arrow');
                    replyContent.append(arrowImg);
									   
                    // replyCommenter를 위한 span
                    var commenterSpan = $('<span/>').addClass('reply-commenter').text(row['replyCommenter']);
                    replyContent.append(commenterSpan);

                    // replyComment를 위한 span
                    var commentSpan = $('<span/>').addClass('reply-comment').text(' ' + row['replyComment']);
                    replyContent.append(commentSpan);

                    // 삭제 버튼과 replyCommentdate를 replyContent의 오른쪽에 붙여넣기
                    var rightContainer = $('<div/>').addClass('right-container');
                    var dateSpan = $('<span/>').addClass('reply-comment-date').text(' ' + row['replyCommentdate']);
                    rightContainer.append(dateSpan);

                    // 삭제 버튼을 위한 button
                    var deleteBtn = $('<button/>').addClass('delete-comment').text('삭제').data('rcno', row['rcno']);
                    rightContainer.append(deleteBtn);
                    // 신고 버튼 추가
                    var reportBtn = $('<button/>').addClass('report-btn').text('🚨').data('rcno', row['rcno']);
                    rightContainer.append(reportBtn);

                    replyContent.append(rightContainer);

                    // 삭제 버튼은 작성자와 현재 사용자의 ID가 같을 때만 추가
                    if (currentUserId === row['replyCommenter']) {
                        deleteBtn.show(); // 삭제 버튼을 보이도록 설정
                    } else {
                        deleteBtn.hide(); // 삭제 버튼을 숨기도록 설정
                    }

                    nestedReplies.append(replyContent);
                }
            },
            error: function(err) {
                console.error('대댓글 목록 가져오기 실패:', err);
            }
        });
    }

    // 댓글에 삭제 버튼이 눌렸을 때
    $('#replyList').on('click', '.delete-btn', function() {
        if (!checkLogin()) return; // 로그인 확인

        var rno = $(this).data('rno');

        $.ajax({
            type: 'delete',
            url: '../replies/' + rno,
            success: function(result) {
                replyList();
            },
            error: function(err) {
                alert('삭제 실패');
                console.log(err);
            }
        });
    });

    // 신고 버튼이 눌렸을 때
    $(document).on('click', '.report-btn', function() {
        if (!checkLogin()) return; // 로그인 확인

        var seq = $(this).closest('.post').data('post-id');
        var rno = $(this).closest('tr').data('rno');
        var rcno = $(this).closest('.reply-comment-row').data('rcno');
        var seqRno = $('.post').data('post-id');
        var seqRnoRcno = $('.comment-row').data('rno');

        // URL 파라미터 설정 및 페이지 이동
        if (seq) {
            window.location.href = `/report/reportWrite?seq=${seq}`;
        } else if (seqRno, rno) {
            window.location.href = `/report/reportWrite?seq=${seqRno}&rno=${rno}`;
        } else if (seqRno, seqRnoRcno, rcno) {
            window.location.href = `/report/reportWrite?seq=${seqRno}&rno=${seqRnoRcno}&rcno=${rcno}`;
        } else {
            alert('신고할 항목을 찾을 수 없습니다.');
        }
    });

    // 특정 td 엘리먼트를 클릭했을 때 대댓글 입력 창 추가 또는 닫기
    $('#replyList').on('click', 'span.comment-text', function() {
        if (!checkLogin()) return; // 로그인 확인

        var rno = $(this).closest('tr').data('rno');
        var commentFormRow = $(this).closest('tr').next('.comment-form-row');

        if (commentFormRow.length === 0) { // 입력 창이 없는 경우
            $('#replyList').find('.comment-form-row').remove();
            var commentForm = '<tr class="comment-form-row">' +
                '<td colspan="7">' +
                '<textarea class="new-comment" placeholder="대댓글 입력"></textarea>' +
                '<button class="submit-comment" data-rno="' + rno + '">등록</button>' +
                '</td>' +
                '</tr>';
            $(this).closest('tr').after(commentForm);
        } else { // 입력 창이 있는 경우
            $('#replyList').find('.comment-form-row').remove();
        }
    });

    // '등록' 버튼 클릭 시 대댓글 추가
    $('#replyList').on('click', '.submit-comment', function(event) {
        event.preventDefault();

        if (!checkLogin()) return; // 로그인 확인

        var comment = $(this).siblings('.new-comment').val().trim();
        if (!comment) {
            alert('내용을 입력해주시기 바랍니다.');
            return;
        }

        var rno = $(this).data('rno');
        var param = {
            'rno': rno,
            'replyComment': comment,
            'replyCommenter': $('#replyer').val()
        };

        $.ajax({
            type: 'post',
            url: '/repliesComment/new',
            data: JSON.stringify(param),
            contentType: 'application/json',
            dataType: 'text',
            success: function(result) {
                console.log('서버 응답:', result);
                if (result === 'success') {
                    $('.new-comment').val('');
                    loadReplyComments(rno);
                } else {
                    alert('등록 실패');
                }
            },
            error: function(err) {
                alert('등록 실패');
                console.log('에러 응답:', err);
            }
        });
    });

    // 대댓글에 삭제 버튼이 눌렸을 때
    $('#replyList').on('click', '.delete-comment', function() {
        if (!checkLogin()) return; // 로그인 확인

        var rcno = $(this).data('rcno');
        var commentElement = $(this).closest('.reply-comment-row');

        console.log('삭제 요청 URL:', '/repliesComment/deleteReplyComment/' + rcno);

        $.ajax({
            type: 'delete',
            url: '/repliesComment/deleteReplyComment/' + rcno,
            success: function(result) {
                console.log('서버 응답:', result);
                if (result === 'success') {
                    // 해당 대댓글 요소를 제거
                    commentElement.remove();
                } else {
                    alert('삭제 실패');
                }
            },
            error: function(err) {
                alert('삭제 실패');
                console.log('에러 응답:', err);
            }
        });
    });
});
