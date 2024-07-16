<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/assets/css/getBoardStar.css" rel="stylesheet"/>
<link href="/assets/css/getBoard.css" rel="stylesheet"/>
<link href="/assets/css/replyComment.css" rel="stylesheet"/>

<title>글 상세</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
<script src='/assets/js/like.js' type="text/javascript"></script>
<script src='/assets/js/reply.js' type="text/javascript"></script>
<script src='/assets/js/hate.js' type="text/javascript"></script>
</head>
<body>
    <h1>글 상세</h1>
    <hr>
    <form action="updateBoard" name="myform" id="myform" method="post">
        <input name="seq" type="hidden" value="${board.seq}" id="seq"/>
        <table>
            <tr>
                <th>제목</th>
				<td>
				<c:if test="${id == board.writer}">
					<input name="title" type="text" value="${board.title}" />
				</c:if>
				
				<c:if test="${id != board.writer}">
					<input name="title" type="text" value="${board.title}" readonly />
				</c:if>
				</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${board.writer}</td>
            </tr>
         <tr id="starRow">
         <th>별점</th>
         <td>
            <fieldset>
            <!-- 별점 표시를 위한 코드를 추가합니다. -->
                    <div class="star-rating">
                        <span class="star${board.star >= 5 ? ' filled' : ''}">★</span>
                        <span class="star${board.star >= 4 ? ' filled' : ''}">★</span>
                        <span class="star${board.star >= 3 ? ' filled' : ''}">★</span>
                        <span class="star${board.star >= 2 ? ' filled' : ''}">★</span>
                        <span class="star${board.star >= 1 ? ' filled' : ''}">★</span>
                    </div>
                    <!-- 별점 표시용 HTML 끝 -->
            </fieldset>
         </td>
         </tr>
         <tr>
         	<th>내용</th>
		 	<td>
				<c:if test="${id == board.writer}">
					<textarea name="content" cols="40" rows="10">${board.content}</textarea>
				</c:if>
				<c:if test="${id != board.writer}">
					<textarea name="content" cols="40" rows="10" readonly>${board.content}</textarea>
				</c:if>
			</td>
        </tr>
            <tr>
                <th>등록일</th>
                <td>${board.regdate }</td>
            </tr>
            <tr>
                <th>조회수</th>
                <td>👁️${board.cnt }</td>
            </tr>
            <tr>
                <th>이미지</th>
                <td>
                    <img src="/files/${board.filename}" alt="이미지"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
					<c:if test="${id eq board.writer}">
						<input type="submit" value="글 수정" />
						<a href="deleteBoard?seq=${board.seq }"><input type="button" value="글삭제"/></a>
					</c:if>
					<div class="post" data-post-id="${board.seq}">
						<span class="report-btn" style="cursor:pointer;">🚨</span>
					</div>
				</td>
            </tr>
        </table>
    </form>
    <hr>
	
	<c:if test="${not empty id}">
	    <p>현재 사용자 ID: ${id}</p>
	</c:if>

	<c:if test="${not empty seq}">
	    <p>현재 게시물 번호: ${board.seq}</p>
	</c:if>
		
	<div id="post">
        <div id="like-button" data-bno="${board.seq}" data-id="${id}" class="like-button">
			<img src="/assets/images/unlike.jpg" alt="Like">
		</div>
        <span id="like-count">0</span>명이 좋아합니다.
    </div>
	
	<div id="post-${board.seq}">
	    <div id="hate-button-${board.seq}" data-bno="${board.seq}" data-id="${id}" class="hate-button">
	        <img src="/assets/images/unhate2.jpg" alt="Hate">
	    </div>
	    <span id="hate-count-${board.seq}">0</span>명이 싫어합니다.
	</div>
					
					
    <!-- 2. 댓글목록 -->
    <table id="replyList"></table>

    <!-- 1. 댓글입력 -->
    <div class="reply-form">
        <form name="replyFrm" id="replyFrm">
            <input type="hidden" name="bno" id="bno" value="${board.seq}">
            <div>
                <label for="replyer">작성자:</label>
                <input type="text" name="replyer" id="replyer" value="${id}" readonly>
            </div>
            <div>
                <label for="reply">댓글 추가:</label>
                <textarea name="reply" id="reply" class="reply-input"></textarea>
            </div>
            <div>
                <input type="button" value="댓글 작성" id="replyConfirm">
            </div>
        </form>
    </div>
            
   <a href="insertBoard">글등록</a>&nbsp;&nbsp;&nbsp;
   <a href="getBoardList">글목록</a>
</body>
</html>
