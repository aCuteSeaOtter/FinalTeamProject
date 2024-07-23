<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 상세</title>
</head>
<body>
		<h1>정보 상세</h1>		
		<hr>
		<form action="updateMember" method="post">
			<input name="id" type="hidden" value="${member.id}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">아이디</td>
					<td align="left" readonly>${member.id }</td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td align="left"><textarea name="pass" cols="40" rows="10">${member.pass }</textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">이름</td>
					<td align="left"><textarea name="name" cols="40" rows="10">${member.name }</textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="정보 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertMember">정보 등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteMember?id=${member.id }">정보 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="registList">정보 목록</a>
</body>
</html>
