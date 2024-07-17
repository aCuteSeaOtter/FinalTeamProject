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
		<td bgcolor="orange" width="70">아이디</td><td align="left">
		<input type="text" name="id"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">비밀번호</td><td align="left">
		<input type="password" name="pass"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">이름</td><td align="left">
		<input type="text" name="name"/></td>
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
