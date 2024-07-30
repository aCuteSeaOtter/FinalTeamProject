// 비밀글로 설정하기 체크박스의 상태 변화를 감지하여 비밀글 내용 입력란 표시/숨김
        document.getElementById("secretCheckbox").addEventListener(
            "change",
            function() {
                var secretContentRow = document.getElementById("secretContentRow");

                // 비밀글로 설정하기 체크박스가 체크되었는지 확인
                if (this.checked) {
                    // 비밀글로 설정하기 체크박스가 체크되었을 때 비밀글 내용 입력란 표시
                    secretContentRow.style.display = "flex";
                } else {
                    // 비밀글로 설정하기 체크박스가 체크 해제되었을 때 비밀글 내용 입력란 숨김
                    secretContentRow.style.display = "none";
                }
            });

        // 눈 모양 클릭 시 비밀글 비밀번호 보이기 - slash 클릭 시 반대로
        document.getElementById('togglePassword').addEventListener('click', function() {
            var passwordInput = document.getElementById('passwordInput');
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