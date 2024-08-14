document.addEventListener('DOMContentLoaded', function () {
    var navbarToggler = document.querySelector('.navbar-toggler');
    var navbarContent = document.querySelector('#navbarSupportedContent');
    var isMenuOpen = false;

    // 메뉴 토글 버튼 클릭 시 동작
    navbarToggler.addEventListener('click', function (event) {
        event.stopPropagation(); // 이벤트 전파 중지
        if (isMenuOpen) {
            // 메뉴 닫기
            $(navbarContent).collapse('hide');
            isMenuOpen = false;
        } else {
            // 메뉴 열기
            $(navbarContent).collapse('show');
            isMenuOpen = true;
        }
    });

    // 문서의 다른 부분 클릭 시 메뉴 닫기
    document.addEventListener('click', function (event) {
        if (!navbarContent.contains(event.target) && !navbarToggler.contains(event.target)) {
            if (isMenuOpen) {
                $(navbarContent).collapse('hide');
                isMenuOpen = false;
            }
        }
    });

    // collapse 메뉴의 숨김 처리 후 상태 업데이트
    $(navbarContent).on('hidden.bs.collapse', function () {
        isMenuOpen = false;
    });

    $(navbarContent).on('shown.bs.collapse', function () {
        isMenuOpen = true;
    });

    // 드롭다운 메뉴와 관련된 요소들
    var dropdownToggle = document.querySelector('.dropdown-toggle');
    var dropdownMenu = document.querySelector('.dropdown-menu');
    var isDropdownOpen = false;

    // 드롭다운 메뉴 클릭 시 열리도록 처리
    dropdownToggle.addEventListener('click', function (event) {
        event.stopPropagation(); // 드롭다운 클릭 시 문서 클릭 이벤트와 충돌 방지
        if (isDropdownOpen) {
            // 드롭다운 메뉴가 이미 열려 있을 때 닫기
            dropdownMenu.classList.remove('show');
            isDropdownOpen = false;
        } else {
            // 드롭다운 메뉴 열기
            dropdownMenu.classList.add('show');
            isDropdownOpen = true;
        }
    });

    // 드롭다운 메뉴의 hover 시 표시 및 클릭 시 상태 유지
    var dropdownItem = document.querySelector('.nav-item.dropdown');
    
    dropdownItem.addEventListener('mouseover', function () {
        dropdownMenu.classList.add('show');
        isDropdownOpen = true;
    });

    dropdownItem.addEventListener('mouseout', function (event) {
        if (!dropdownMenu.contains(event.relatedTarget) && !dropdownToggle.contains(event.relatedTarget)) {
            dropdownMenu.classList.remove('show');
            isDropdownOpen = false;
        }
    });

    // 드롭다운 메뉴 외부 클릭 시 닫기
    document.addEventListener('click', function (event) {
        if (!dropdownMenu.contains(event.target) && !dropdownToggle.contains(event.target)) {
            if (isDropdownOpen) {
                dropdownMenu.classList.remove('show');
                isDropdownOpen = false;
            }
        }
    });
});
