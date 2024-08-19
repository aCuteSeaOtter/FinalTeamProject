<%@page import="com.fasterxml.jackson.databind.ser.std.DateSerializer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	com.example.domain.LoginVO member = (com.example.domain.LoginVO) session.getAttribute("member");
	String username = "";
	//member 객체가 null이 아닌지 확인한 후에 이메일을 가져옵니다.
	if (member != null) {
	    username = member.getMember_email();
	} else {
	    System.out.println("세션에 저장된 'member' 객체가 없습니다.");
	    
	}
%>
    
<!DOCTYPE html>
<html>

<head>
  <title>What's App</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="/css/chatList.css">
</head>

<body>
  <div class="container-fluid">

    <div class="row">

      <div class="col-sm-12">


        <input id="msg-box" type="text" class="form-control write_msg" placeholder="채팅방 이름을 입력하세요." autocomplete="off" />
        <button id="chat-send" class="msg_send_btn" type="button">
            <i class="fa fa-paper-plane" aria-hidden="true"></i>
        </button>
      </div>
    </div>
  </div>
  

  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
  <script src="/js/chatList.js"></script>
</body>

</html>