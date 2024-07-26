$(document).ready(function() {
        // 파일 업로드 input에 change 이벤트 추가
        $('input[name="review_file"]').on('change', function() {
            var file = this.files[0];
            var fileType = file.type.toLowerCase(); // 파일의 MIME 타입

            // 이미지 파일 또는 동영상 파일인지 확인
            if (fileType.indexOf('image') === -1 && fileType.indexOf('video') === -1) {
                alert('이미지나 동영상 파일만 업로드 가능합니다.');
                $(this).val(''); // 파일 선택 초기화
            }
        });
    });