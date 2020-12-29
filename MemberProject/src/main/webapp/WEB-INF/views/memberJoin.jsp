<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>

	<form action="MemberJoin">
		<table>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="mid"
					placeholder="15자 이내로 입력하세요."></td>
			    <td><button>중복체크</button></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="mpassword"
					placeholder="15자 이내로 입력하세요."></td>
			</tr>
			<tr>
				<td>이 름 :</td>
				<td><input type="text" name="mname"></td>
			</tr>
			<tr>
				<td>전화번호 :</td>
				<td><input type="text" name="mphone" placeholder="-없이 입력하시오."></td>
			</tr>
			<tr>
				<td>이메일 :</td>
				<td><input type="email" name="memail"></td>
			</tr>
			<tr>
				<td>생년월일 :</td>
				<td><input type="date" name="mbirth"></td>
			</tr>

			<tr>
				<td colspan=2><input type="submit"></td>
			</tr>
		</table>
	</form>


</body>
</html>