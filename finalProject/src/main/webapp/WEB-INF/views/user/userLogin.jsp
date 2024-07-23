<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>
</head>
<body>

<h3>로그인</h3>
<hr>
<form action="checkLogin" method="post">
<table border="1">
	<tr>
		<td bgcolor="orange" width="70">이메일</td><td align="left">
		<input type="text" name="member_email"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" width="70">비밀번호</td><td align="left">
		<input type="password" name="member_pass"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value=" 로그인 "/></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<a href="userRegistForm"><input type="button" value=" 회원가입 "/></td></a>
	</tr>
</table>
</form>
<hr>

</body>
</html>
