$(function(){
	let username = $('#username').html();
	let nameNum = 0;
	let roomNum;
	let rusername;
	
	rusername = prompt('채팅방 이름을 입력하세요.');
	if (rusername === null) {
        // 사용자가 취소를 눌렀을 때 아무 동작도 하지 않음
		$('#msg-box').attr('placeholder', "메시지를 입력할 수 없습니다.");
        return;
    }
	
	function fetchUsername() {
	    try {
			
	        // 각 문자의 유니코드 값을 합산
	        for (var i = 0; i < rusername.length; i++) {
	            nameNum += rusername.charCodeAt(i);
	        }

	        // nameNum을 roomNum에 할당
	        roomNum = nameNum;
			
			$("#roomNum").html('(' +roomNum +')');

	        // AJAX 요청 완료 후 실행할 추가 작업
	        //$("#username").html(username);  // username을 HTML 요소에 할당

	        // SSE 연결하기
	        const eventSource = new EventSource(`http://192.168.0.182:8080/chat/roomNum/${roomNum}`);
	        eventSource.onmessage = (event) => {
	            const data = JSON.parse(event.data);
	            if(data.sender === username) {  // 로그인한 유저가 보낸 메세지
	                // 초록박스(오른쪽)
	                initMyMessage(data);
	            } else {
	                // 회색박스(왼쪽)
	                initYourMessage(data);
	            }
	        };

	    } catch (error) {
	        console.log(error);
	    }
	}

	fetchUsername();  // AJAX 요청 실행
    
    // 버튼 클릭 시 메시지 전송
    $('#chat-send').click(function(){
        addMessage();
    });

    // 엔터를 치면 메시지 전송
    $('#msg-box').keydown(function(e){
        if(e.keyCode === 13){
            addMessage();
        }
    });

    // 입력한 내용 채팅창에 출력
    async function addMessage() {
        let msgInput = $("#msg-box");

        let chat = {
            sender:username,
            roomNum:roomNum,
            msg:msgInput.val()
        };

        await fetch("http://192.168.0.182:8080/chat", {
            method:"post",  // http post 메소드(새로운 데이터를 write)
            body:JSON.stringify(chat),  // JS -> JSON
            headers:{
                "Content-Type":"application/json; charset=utf-8"
            }
        });

        msgInput.val("");
    }

    // 초록박스 초기화하기
    function initMyMessage(data) {
        let chatBox = $("#chat-box");

        let sendBox = $("<div></div>");
        sendBox.addClass("outgoing_msg");

        sendBox.html(getSendMsgBox(data));
        chatBox.append(sendBox);

        $('html, body').scrollTop($(document).height());
    }

    // 회색박스 초기화하기
    function initYourMessage(data) {
        let chatBox = $("#chat-box");

        let receivedBox = $("<div></div>");
        receivedBox.addClass("received_msg");

        receivedBox.html(getReceiveMsgBox(data));
        chatBox.append(receivedBox);

        $('html, body').scrollTop($(document).height());
    }

    // 초록박스 만들기
    function getSendMsgBox(data){
        let md = data.createdAt.substring(5, 10);
        let tm = data.createdAt.substring(11, 16);
        convertTime = tm + " | " + md;

        return `<div class='sent_msg'>
        <p>${data.msg}</p>
        <span class='time_date'> ${convertTime} / <b>${data.sender}</b></span>
    </div>`;
    }

    // 회색박스 만들기
    function getReceiveMsgBox(data){
        let md = data.createdAt.substring(5, 10);
        let tm = data.createdAt.substring(11, 16);
        convertTime = tm + " | " + md;

        return `<div class='received_withd_msg'>
        <p>${data.msg}</p>
        <span class='time_date'> ${convertTime} / <b>${data.sender}</b></span>
    </div>`;
    }
});
