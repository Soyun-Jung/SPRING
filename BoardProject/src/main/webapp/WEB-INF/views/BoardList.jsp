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
border : solid 1.5px;
}
</style>
</head>
<body>
보드리스트
	<table>
		<tr>
		<th>글넘버</th>
		<th>글제목</th>
		<th>작성자</th>
		<th>작성일</th>
		</tr>
		<c:forEach var="list" items="${boardlist}">
			<tr>
				<td>${list.bnumber}</td>
				<td><a href="BoardView?bnumber=${list.bnumber}">${list.btitle}</a></td>
				<td>${list.bwriter}</td>
				<td>${list.bdate}</td>	
			</tr>
		</c:forEach>
	</table>
</body>
</html>