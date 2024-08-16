$(document).ready(function() {
    // 문서가 로드되면 실행되는 코드 블록

    // 모든 `.accordion-card` 요소의 개수를 세어 `noticeCount`에 저장
    var noticeCount = $('.accordion-card').length;

    // 카드 수가 4개를 초과하면
    if (noticeCount > 4) {
        // `.notice-column` 요소에 `no-margin` 클래스를 추가
        $('.notice-column').addClass('no-margin');
    }

    // `.card-header` 요소 클릭 시
    $('.card-header').click(function(e) {
        // 링크 이동 등 기본 동작을 방지
        e.preventDefault();

        // 클릭된 `.card-header`의 상위 `.accordion-card` 내 `.content-body` 요소를 찾음
        var content = $(this).closest('.accordion-card').find('.content-body');

        // 찾은 `.content-body` 요소를 슬라이드 토글(보이기/숨기기)함
        content.slideToggle();
    });
});






