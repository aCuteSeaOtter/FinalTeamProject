document.getElementById('myform').addEventListener('submit', function(event) {
        event.preventDefault(); // 기본 폼 제출 동작 막기

        var formData = new FormData(this);
        var xhr = new XMLHttpRequest();

        xhr.open('POST', 'saveReview', true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                var fileNames = JSON.parse(xhr.responseText); // 서버에서 반환된 파일 경로
                displayImages(fileNames);
            } else {
                alert('서버 오류가 발생했습니다. 다시 시도해주세요.');
            }
        };

        xhr.send(formData);
    });

    function displayImages(fileNames) {
        var uploadedFilesDiv = document.getElementById('uploadedFiles');
        uploadedFilesDiv.innerHTML = ''; // 기존 이미지 제거
        var loadedCount = 0;
        var totalImages = fileNames.length;

        fileNames.forEach(function(fileName) {
            var img = document.createElement('img');
            img.src = fileName;
            img.style.maxWidth = '100px';
            img.style.maxHeight = '100px';
            img.onload = function() {
                loadedCount++;
                if (loadedCount === totalImages) {
                    // 모든 이미지가 로드되었을 때
                    window.location.href = 'reviewList'; // 리디렉트할 URL
                }
            };
            uploadedFilesDiv.appendChild(img);
        });
    }