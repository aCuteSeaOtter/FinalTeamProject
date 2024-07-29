function handleReviewClick(event, url) {
    // 슬라이더 내부 클릭 시 페이지 이동 방지
    if (!$(event.target).closest('.slider').length) {
        window.location.href = url;
    }
}

$(document).ready(function(){
    // Slick 슬라이더 초기화
    $('.slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false, // 기본 화살표 숨기기
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
        adaptiveHeight: true
    });

    // 사용자 정의 화살표 버튼 클릭 이벤트
    window.moveSlide = function(direction, sliderId) {
        if (direction > 0) {
            $('#' + sliderId).slick('slickNext');
        } else {
            $('#' + sliderId).slick('slickPrev');
        }
    }
});
