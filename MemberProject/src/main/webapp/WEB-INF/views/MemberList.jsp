<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td{
border : solid 1px;
}

th {
border : solid 2px;
}
</style>
</head>
<body>

멤버리스트
	<table>
		<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>조회</th>
		</tr>
		<c:forEach var="member" items="${mlist}">
			<tr>
				<td><a href="memberview?mid=${member.getMid()}">${member.getMid()}</a></td>
				<td>${member.getMname()}</td>
				<td><a href="memberdelete?mid=${member.getMid()}">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="./">메인으로</a>
</body>

<script>

	alert('${msg}');
	
</script>
</html>