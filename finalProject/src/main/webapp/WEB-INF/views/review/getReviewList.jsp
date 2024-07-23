<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/css/getReviewList.css" rel="stylesheet"/>
<title>글 목록</title>
</head>
<body>
		<h1>게시글 목록</h1>

	<table border="1">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>
			<c:forEach items="${reviewList }" var="review">
				<tr>
					<td>${review.REVIEW_ID }</td>
					<td align="left"><a href="getReview?review_id=${review.REVIEW_ID}">
							${review.REVIEW_TITLE}</a></td>
					<td>${review.MEMBER_NICKNAME}</td>
					<td>${review.REVIEW_REGDATE}</td>
					<td>${review.REVIEW_CNT}</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="insertReview">새글 등록</a>
		<br> <a href="/user/userLogin">로그인 창 이동</a>
		<br> <a href="/user/userLogout">로그아웃</a>
		
		<c:if test="${not empty id}">
			<p>현재 사용자 ID: ${id}</p>
		</c:if>
		
</body>
</html>