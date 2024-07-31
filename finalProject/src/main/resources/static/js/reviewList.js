$(document).ready(function(){
    // 모든 슬라이더를 slick으로 초기화
    function initializeSliders() {
        $('.slider').each(function(){
            // 이미 초기화된 슬라이더는 재초기화하지 않도록 설정
            if (!$(this).hasClass('slick-initialized')) {
                $(this).slick({
                    dots: true,
                    arrows: false,
                    infinite: true,
                    speed: 500,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 3000,
                    adaptiveHeight: true
                });
            }
        });
    }

    // 페이지 로드 시 초기화
    initializeSliders();

    // 사용자 정의 화살표 버튼 클릭 이벤트
    window.moveSlide = function(direction, sliderId) {
        if (direction > 0) {
            $('#' + sliderId).slick('slickNext');
        } else {
            $('#' + sliderId).slick('slickPrev');
        }
    }

    // 파일 미리보기
    document.getElementById('fileInput').addEventListener('change', function(event) {
        const fileInput = event.target;
        const filePreviewContainer = document.getElementById('filePreviewContainer');
        filePreviewContainer.innerHTML = ''; // Clear previous previews

        Array.from(fileInput.files).forEach(file => {
            const reader = new FileReader();
            reader.onload = function(e) {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.style.width = '100px'; // Adjust the size as needed
                filePreviewContainer.appendChild(img);
            }
            reader.readAsDataURL(file);
        });
    });

});
