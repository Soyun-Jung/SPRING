<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="memberUpdate">
		<table>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>생년월일</th>
			</tr>

			<tr>
				<td>${member.getMid()}</td>
				<input type="hidden" name="mid" value="${member.getMid()}">
				<td><input type="password" name="mpwd" placeholder="${member.getMpwd()}"></td>
				<td>${member.getMname()}</td>
				<td><input type="text" name="mphone" placeholder="${member.getMphone()}"></td>
				<td><input type="text" name="memail" placeholder="${member.getMemail()}"></td>
				<td>${member.getMbirth()}</td>
				
			</tr>

			<tr>
				<td colspan=6><input type="submit" value="수정"></td>
			</tr>

		</table>

	</form>
	<a href="./">메인으로</a>

</body>
</html>