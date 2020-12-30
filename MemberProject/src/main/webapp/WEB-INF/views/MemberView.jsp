<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>생년월일</th>
		</tr>

		<tr>
			<td>${member.getMid()}</td>
			<td>${member.getMname()}</td>
			<td>${member.getMphone()}</td>
			<td>${member.getMemail()}</td>
			<td>${member.getMbirth()}</td>
		</tr>

	</table>
	
	<a href="./">메인으로</a>

</body>
</html>