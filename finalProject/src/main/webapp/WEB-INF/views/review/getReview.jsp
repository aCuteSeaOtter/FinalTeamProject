<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/getReviewStar.css" rel="stylesheet"/>
<link href="/css/getReview.css" rel="stylesheet"/>
<link href="/css/comment.css" rel="stylesheet"/>

<title>글 상세</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
<script src='/js/like.js' type="text/javascript"></script>
<script src='/js/hate.js' type="text/javascript"></script>
<script src='/js/comment.js' type="text/javascript"></script>
</head>
<body>
    <h1>글 상세</h1>
    <hr>
    <form action="updateReview" name="myform" id="myform" method="post">
        <input name="review_id" type="hidden" value="${review.REVIEW_ID}" id="review_id"/>
        <table>
            <tr>
                <th>제목</th>
                <td>
                    <c:choose>
                        <c:when test="${id == review.MEMBER_EMAIL}">
                            <input name="review_title" type="text" value="${review.REVIEW_TITLE}" />
                        </c:when>
                        <c:otherwise>
                            <input name="review_title" type="text" value="${review.REVIEW_TITLE}" readonly />
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${review.MEMBER_NICKNAME}</td>
            </tr>
            <tr id="starRow">
                <th>별점</th>
                <td>
                    <fieldset>
                        <div class="star-rating">
                            <span class="star${review.REVIEW_STAR >= 5 ? ' filled' : ''}">★</span>
                            <span class="star${review.REVIEW_STAR >= 4 ? ' filled' : ''}">★</span>
                            <span class="star${review.REVIEW_STAR >= 3 ? ' filled' : ''}">★</span>
                            <span class="star${review.REVIEW_STAR >= 2 ? ' filled' : ''}">★</span>
                            <span class="star${review.REVIEW_STAR >= 1 ? ' filled' : ''}">★</span>
                        </div>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <c:choose>
                        <c:when test="${id == review.MEMBER_EMAIL}">
                            <textarea name="review_content" cols="40" rows="10">${review.REVIEW_CONTENT}</textarea>
                        </c:when>
                        <c:otherwise>
                            <textarea name="review_content" cols="40" rows="10" readonly>${review.REVIEW_CONTENT}</textarea>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>등록일</th>
                <td>${review.REVIEW_REGDATE}</td>
            </tr>
            <tr>
                <th>조회수</th>
                <td>👁️${review.REVIEW_CNT}</td>
            </tr>
            <tr>
                <th>이미지</th>
                <td>
                    <img src="/files/${review.FILE_NAME}" alt="이미지"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <c:if test="${id == review.MEMBER_EMAIL}">
                        <input type="submit" value="글 수정" />
                        <a href="deleteReview?review_id=${review.REVIEW_ID}"><input type="button" value="글삭제"/></a>
                    </c:if>
                    <div class="post" data-post-id="${review.REVIEW_ID}">
                        <span class="report-btn" style="cursor:pointer;">🚨</span>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <hr>

    <c:if test="${not empty id}">
        <p>현재 사용자 닉네임: ${nickname}</p>
    </c:if>

    <c:if test="${not empty review_id}">
        <p>현재 게시물 번호: ${review.REVIEW_ID}</p>
    </c:if>
        
    <div id="post">
        <div id="like-button" data-review_id="${review.REVIEW_ID}" data-nickname="${id}" class="like-button">
            <img src="/images/review/unlike.jpg" alt="Like">
        </div>
        <span id="like-count">0</span>명이 좋아합니다.
    </div>
    
    <div id="post-${review.review_id}">
        <div id="hate-button-${review.review_id}" data-review_id="${review.REVIEW_ID}" data-nickname="${id}" class="hate-button">
            <img src="/images/review/unhate.jpg" alt="Hate">
        </div>
        <span id="hate-count-${review.REVIEW_ID}">0</span>명이 싫어합니다.
    </div>

   <!-- 댓글목록을 서버에서 가지고 와서 출력 -->
   <table id="commentList"></table>

   <!-- 댓글 입력 폼 -->
   <div class="comment-form">
       <form name="commentFrm" id="commentFrm">
           <input type="hidden" name="review_id" id="review_id" value="${review.REVIEW_ID}">
           <div>
               <label for="member_email">작성자:</label>
            <input type="text" name="member_nickname" id="member_nickname" value="${nickname}" readonly>
               <input type="hidden" name="member_email" id="member_email" value="${id}" readonly>
           </div>
           <div>
               <label for="comment_content">댓글 추가:</label>
               <textarea name="comment_content" id="comment_content" class="comment-input"></textarea>
           </div>
           <div>
               <input type="button" value="댓글 작성" id="commentConfirm">
           </div>
       </form>
   </div>


   <a href="insertReview">글등록</a>&nbsp;&nbsp;&nbsp;
   <a href="getReviewList">글목록</a>
</body>
</html>
