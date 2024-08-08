$(document).ready(function() {
  var currentPage = 1; // 초기 페이지 번호
  var totalPages = 1; // 총 페이지 수 (초기값 설정)
  var selectedArea = ''; // 선택된 지역
  var selectedTag = ''; // 선택된 태그

  // 지역 클릭 이벤트 핸들러
  $('#areaList .btn').on('click', function() {
    selectedArea = $(this).text(); // 선택된 지역 저장
    currentPage = 1; // 페이지 번호를 1로 초기화
    fetchMagazines(); // 필터링된 매거진 목록을 가져옴
  });

  // 태그 클릭 이벤트 핸들러
  $('#tagList .btn').on('click', function() {
    selectedTag = $(this).text(); // 선택된 태그 저장
    currentPage = 1; // 페이지 번호를 1로 초기화
    fetchMagazines(); // 필터링된 매거진 목록을 가져옴
  });

  function fetchMagazines() {
    $.ajax({
      url: '/magazine/filterMagazines',
      type: 'GET',
      data: {
        area: selectedArea,
        tag: selectedTag,
        page: currentPage
      },
      success: function(response) {
        if (response && response.magazines) {
          updateMagazineList(response.magazines);
          totalPages = response.totalPages; // 총 페이지 수 업데이트
          updatePagination(); // 페이지 버튼 업데이트
        } else {
          console.warn('서버에서 데이터가 수신되지 않았습니다.');
          $('.magazineUl').empty(); // 리스트가 비어 있을 때
          $('.pagination').empty(); // 페이징 버튼이 비어 있을 때
        }
      },
      error: function(xhr, status, error) {
        console.error('AJAX 오류:', status, error);
        $('.magazineUl').empty(); // 리스트가 비어 있을 때
        $('.pagination').empty(); // 페이징 버튼이 비어 있을 때
        alert('데이터를 가져오는 중 오류가 발생했습니다.');
      }
    });
  }

  function updateMagazineList(magazines) {
    var magazineListHtml = '';

    if (magazines.length === 0) {
      magazineListHtml = '<li>매거진이 없습니다.</li>'; // 매거진이 없을 때 메시지 표시
    } else {
      $.each(magazines, function(index, magazine) {
        magazineListHtml += '<li>' +
            '<div class="magazine-image">' +
            '<img src="' + magazine.artl_img + '" alt="' + magazine.artl_name + '"/>' +
            '</div>' +
            '<div class="magazine-info">' +
            '<a href="' + magazine.artl_link + '">' + magazine.artl_name + '</a>' +
            '<p>' + magazine.artl_local + '</p>' +
            '<div class="magazine-tags">' +
            magazine.artl_pri_tag.split('#').map(function(tag) {
              return tag ? '<span>#' + tag + '</span>' : '';
            }).join('') +
            '</div>' +
            '</div>' +
            '<div class="magazine-hover-title">' + magazine.artl_title + '</div>' +
            '</li>';
      });
    }

    $('.magazineUl').html(magazineListHtml); // 업데이트된 리스트를 HTML에 삽입
  }

  function updatePagination() {
    var paginationHtml = '';

    // 이전 페이지 버튼
    if (currentPage > 1) {
      paginationHtml += '<a href="#" class="page-btn" data-page="' + (currentPage - 1) + '">Previous</a>';
    }

    // 페이지 번호 버튼
    if (totalPages <= 10) {
      // 총 페이지가 10페이지 이하인 경우
      for (var i = 1; i <= totalPages; i++) {
        paginationHtml += '<a href="#" class="page-btn' + (i === currentPage ? ' active' : '') + '" data-page="' + i + '">' + i + '</a>';
      }
    } else {
      // 총 페이지가 10페이지 초과인 경우
      if (currentPage > 4) {
        paginationHtml += '<a href="#" class="page-btn" data-page="1">1</a>';
        paginationHtml += '<span>...</span>';
      }

      var startPage = Math.max(1, currentPage - 3);
      var endPage = Math.min(totalPages, currentPage + 3);

      for (var i = startPage; i <= endPage; i++) {
        paginationHtml += '<a href="#" class="page-btn' + (i === currentPage ? ' active' : '') + '" data-page="' + i + '">' + i + '</a>';
      }

      if (currentPage < totalPages - 3) {
        paginationHtml += '<span>...</span>';
        paginationHtml += '<a href="#" class="page-btn" data-page="' + totalPages + '">' + totalPages + '</a>';
      }
    }

    // 다음 페이지 버튼
    if (currentPage < totalPages) {
      paginationHtml += '<a href="#" class="page-btn" data-page="' + (currentPage + 1) + '">Next</a>';
    }

    $('.pagination').html(paginationHtml); // 페이지 버튼을 HTML에 삽입

    // 페이지 버튼 클릭 이벤트 핸들러
    $('.page-btn').on('click', function(event) {
      event.preventDefault();
      var page = $(this).data('page');
      if (page && page !== currentPage) {
        currentPage = page;
        fetchMagazines(); // 선택된 필터와 페이지 번호로 매거진 목록을 가져옴
      }
    });
  }
});
