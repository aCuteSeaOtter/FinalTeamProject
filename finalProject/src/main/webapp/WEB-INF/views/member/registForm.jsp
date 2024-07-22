<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>
</head>
<body>

<h3>회원가입</h3>
<hr>
<form action="saveMember" method="post">
<table border="1">
	<tr>
		<td bgcolor="orange" width="70">이메일</td><td align="left">
		<input type="email" name="member_email"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">비밀번호</td><td align="left">
		<input type="password" name="member_pass"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">닉네임</td><td align="left">
		<input type="text" name="member_nickname"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value=" 회원가입 완료 "/></td>
	</tr>
</table>
</form>
<hr>

</body>
</html>
