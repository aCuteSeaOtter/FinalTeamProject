<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원 목록</title>
</head>
<body>
		<h1>회원 정보 목록</h1>

	<table border="1">
			<tr>
				<th bgcolor="orange" width="100">아이디</th>
				<th bgcolor="orange" width="200">비밀번호</th>
				<th bgcolor="orange" width="150">사용자이름</th>
			</tr>
			<c:forEach items="${memberList }" var="member">
				<tr>
					<td align="left"><a href="regist?id=${member.id }">
							${member.id }</a></td>
					<td>${member.pass }</td>
					<td>${member.name }</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="registForm">회원가입</a>
</body>
</html>