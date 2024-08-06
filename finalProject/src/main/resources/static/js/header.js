document.addEventListener('DOMContentLoaded', function () {
        var navItems = document.querySelectorAll('.nav-item.dropdown');
        
        navItems.forEach(function (navItem) {
            var dropdownMenu = navItem.querySelector('.dropdown-menu');
            
            navItem.addEventListener('mouseover', function () {
                dropdownMenu.style.display = 'block';
            });
            
            navItem.addEventListener('mouseout', function (event) {
                if (!navItem.contains(event.relatedTarget)) {
                    dropdownMenu.style.display = 'none';
                }
            });
            
            dropdownMenu.addEventListener('mouseout', function (event) {
                if (!dropdownMenu.contains(event.relatedTarget)) {
                    dropdownMenu.style.display = 'none';
                }
            });
        });
    });