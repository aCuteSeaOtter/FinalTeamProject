function checkPassword() { // 비밀글 비밀번호 확인 함수
        var inputSecret = document.getElementById("que_secret").value;
        var correctSecret = document.getElementById("passwordForm").dataset.correctSecret;

        if (inputSecret === correctSecret) {
            document.getElementById("passwordForm").submit();
        } else {
            alert("비밀번호가 틀렸습니다.");
            document.getElementById("que_secret").value = ""; // 입력한 비밀번호 지우기
        }
    }
	
	// 엔터키 폼 자동 제출 막기
	function handleKeyPress(event) {
	        if (event.key === 'Enter') {
	            event.preventDefault(); 
	            checkPassword(); // 비밀번호 확인 함수 호출
	        }
	    } 
		
		// 눈 모양 클릭 시 비밀글 비밀번호 보이기 - slash 클릭 시 반대로
	    document.getElementById('togglePassword').addEventListener('click', function() {
	        var passwordInput = document.getElementById('que_secret');
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
			
			
			