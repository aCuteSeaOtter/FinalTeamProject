document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById('questionWrite');
    const titleInput = document.querySelector('input[name="que_title"]');
    const contentTextarea = document.querySelector('textarea[name="que_content"]');
    const passwordInput = document.getElementById('passwordInput');
    const secretCheckbox = document.getElementById("secretCheckbox");
    const pwCheckMessage = document.querySelector('.pwcheck-message');

    form.addEventListener('submit', function(event) {
        // 제목 길이 확인
        if (titleInput.value.length > 50) {
            event.preventDefault();
            alert('제목은 50자를 초과할 수 없습니다.');
            titleInput.focus();
            return false;
        }

        // 내용 길이 확인
        if (contentTextarea.value.length > 1000) {
            event.preventDefault();
            alert('내용은 1000자를 초과할 수 없습니다.');
            contentTextarea.focus();
            return false;
        }

        // 비밀글 비밀번호 유효성 검사
        if (secretCheckbox.checked) {
            const password = passwordInput.value;
            if (!password) {
                event.preventDefault();
                alert('체크박스를 해제해주세요.');
                passwordInput.focus();
                return false;
            } else if (containsSpecialCharacters(password)) {
                event.preventDefault();
                alert('비밀번호에 특수문자가 포함되어 있습니다.');
                passwordInput.focus();
                return false;
            } else if (password.length < 4) {
                event.preventDefault();
                alert('비밀번호를 4자 이상으로 입력해주세요.');
                passwordInput.focus();
                return false;
            } else if (password.length > 16) {
                event.preventDefault();
                alert('비밀번호를 16자 이하로 입력해주세요.');
                passwordInput.focus();
                return false;
            } else if (!validatePassword(password)) {
                event.preventDefault();
                alert('비밀번호에 영문, 숫자를 조합해 입력해주세요.');
                passwordInput.focus();
                return false;
            }
        }

        // 작성 확인
        if (!confirm('작성하시겠습니까?')) {
            event.preventDefault();
            return false;
        }
    });

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

    // 비밀글로 설정하기 체크박스의 상태 변화를 감지하여 비밀글 내용 입력란 표시/숨김
    secretCheckbox.addEventListener("change", function() {
        var secretContentRow = document.getElementById("secretContentRow");

        if (this.checked) {
            secretContentRow.style.display = "flex";
        } else {
            secretContentRow.style.display = "none";
        }
    });

    // 비밀번호 입력 시 유효성 검사
    passwordInput.addEventListener('input', function() {
        const password = passwordInput.value;
        if (password === '') {
            pwCheckMessage.textContent = '';
        } else if (containsSpecialCharacters(password)) {
            pwCheckMessage.textContent = '특수문자는 사용하실 수 없습니다.';
        } else if (password.length < 4) {
            pwCheckMessage.textContent = '4자 이상으로 입력해주세요.';
        } else if (password.length > 16) {
            pwCheckMessage.textContent = '16자 이하로 입력해주세요.';
        } else if (!validatePassword(password)) {
            pwCheckMessage.textContent = '영문, 숫자를 조합해서 입력해주세요.';
        } else {
            pwCheckMessage.textContent = '';
        }
    });

    // 눈 모양 클릭 시 비밀글 비밀번호 보이기 - slash 클릭 시 반대로
    document.getElementById('togglePassword').addEventListener('click', function() {
        var icon = this; 

        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.remove('fa-eye');
            icon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            icon.classList.remove('fa-eye-slash');
            icon.classList.add('fa-eye');
        }
    });

    function validatePassword(password) {
        // 영문자와 숫자가 모두 포함되어야 하며, 4~16자 사이의 비밀번호
        const regex = /^(?=.*[a-zA-Z])(?=.*\d)[A-Za-z\d]{4,16}$/;
        return regex.test(password);
    }

    function containsSpecialCharacters(password) {
        // 특수문자 포함 여부 검사
        const specialCharRegex = /[^A-Za-z\d]/;
        return specialCharRegex.test(password);
    }
});
