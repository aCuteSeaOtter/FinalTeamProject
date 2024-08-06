document.addEventListener("DOMContentLoaded", function() {
    const fileInput = document.getElementById('fileInput');
    const previewContainer = document.getElementById('filePreviewContainer');

    if (!fileInput || !previewContainer) {
        return;
    }

    // 선택된 파일들을 저장할 배열
    let filesArray = Array.from(fileInput.files);

    function updateFileInput() {
        // 파일 입력 필드의 파일 목록을 업데이트
        const dataTransfer = new DataTransfer();
        filesArray.forEach(file => {
            dataTransfer.items.add(file);
        });
        fileInput.files = dataTransfer.files;
    }

    function createPreview(file) {
        const fileURL = URL.createObjectURL(file);
        const fileElement = document.createElement('div');
        fileElement.classList.add('file-preview');

        const deleteBtn = document.createElement('button');
        deleteBtn.textContent = 'X';
        deleteBtn.classList.add('delete-btn');
        deleteBtn.addEventListener('click', function() {
            // 클릭 시 파일과 미리보기 삭제
            fileElement.remove();
            URL.revokeObjectURL(fileURL);

            // 파일 배열에서 삭제
            filesArray = filesArray.filter(f => f !== file);
            updateFileInput();
        });

        if (file.type.startsWith('image/')) {
            const img = document.createElement('img');
            img.src = fileURL;
            img.alt = 'Image Preview';
            img.classList.add('preview-img');
            fileElement.appendChild(img);
        } else if (file.type.startsWith('video/')) {
            const video = document.createElement('video');
            video.src = fileURL;
            video.controls = true;
            video.classList.add('preview-video');
            fileElement.appendChild(video);
        }

        fileElement.appendChild(deleteBtn);
        previewContainer.appendChild(fileElement);
    }

    fileInput.addEventListener('change', function(event) {
        previewContainer.innerHTML = '';

        // 선택된 파일들 가져오기
        filesArray = Array.from(event.target.files);

        if (filesArray.length === 0) {
            return;
        }

        filesArray.forEach(file => {
            const fileType = file.type.toLowerCase();
            if (fileType.startsWith('image/') || fileType.startsWith('video/')) {
                createPreview(file);
            }
        });
        updateFileInput();
    });

    // 파일 입력 필드의 파일 목록 업데이트
    fileInput.addEventListener('change', function(event) {
        filesArray = Array.from(event.target.files);
        updateFileInput();
    });
});

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

document.addEventListener("DOMContentLoaded", function() {
    const titleInput = document.querySelector('input[name="review_title"]');
    const contentTextarea = document.querySelector('textarea[name="review_content"]');

    titleInput.addEventListener('input', function() {
        if (titleInput.value.length > 50) {
            alert('제목은 50자를 초과할 수 없습니다.');
            titleInput.value = titleInput.value.substring(0, 50);
        }
    });

    contentTextarea.addEventListener('input', function() {
        if (contentTextarea.value.length > 1000) {
            alert('내용은 1000자를 초과할 수 없습니다.');
            contentTextarea.value = contentTextarea.value.substring(0, 1000);
        }
    });

    const form = document.getElementById('myform');

    form.addEventListener('submit', function(event) {
        if (titleInput.value.length > 50) {
            alert('제목은 50자를 초과할 수 없습니다.');
            event.preventDefault();
            return false;
        }

        if (contentTextarea.value.length > 1000) {
            alert('내용은 1000자를 초과할 수 없습니다.');
            event.preventDefault();
            return false;
        }

        if (!confirm('작성하시겠습니까?')) {
            event.preventDefault();
            alert('작성이 취소되었습니다.');
            return false;
        }
    });
});

