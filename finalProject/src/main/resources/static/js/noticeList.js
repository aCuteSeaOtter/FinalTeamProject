$(document).ready(function() {
    var noticeCount = $('.accordion-card').length;
    if (noticeCount > 4) {
        $('.notice-column').addClass('no-margin');
    }

    // Toggle content display on click
    $('.card-header').click(function(e) {
        e.preventDefault();
        var content = $(this).closest('.accordion-card').find('.content-body');
        content.slideToggle();
    });
});
