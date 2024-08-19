$(function(){
	
	// 채팅방 데이터를 가져와서 목록을 생성하는 함수
    function loadChatRooms() {
		$.ajax({
            url: '/getChatRooms', // 서버의 채팅방 데이터 URL
            type: 'GET',
            dataType: 'json', // 응답 데이터 타입 설정
            success: function(response) {
                var chatRooms = response; // 서버에서 받은 데이터
                var chatRoomsContainer = $('#chat-rooms');

                // 기존 채팅방 목록을 지우고 새로 생성
                chatRoomsContainer.empty();

                // 채팅방 목록을 생성
                chatRooms.forEach(function(room) {
                    var chatRoomItem = $('<div></div>')
                        .addClass('chat-room-item')
                        .text(room.name) // 채팅방 이름을 표시
                        .appendTo(chatRoomsContainer);
                    
                    // 채팅방 클릭 시 이벤트 처리
                    chatRoomItem.click(function() {
                        // 채팅방에 들어가거나 다른 행동을 추가할 수 있습니다.
                        console.log('Clicked on chat room:', room.name);
                    });
                });
            },
            error: function(error) {
                console.log('Error loading chat rooms:', error);
            }
        });
    }

    // 페이지 로드 시 채팅방 리스트를 가져옴
    loadChatRooms();
	
	
	let username = $('#username').html();
});
