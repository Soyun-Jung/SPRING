<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 성공</h1><br>

	<br>
	<h3>${loginid}</h3>님 환영합니다.
	
	<a href="getupdateform?mid=${loginid}">정보수정</a>
	<c:if test="${loginid eq 'ADMIN'}">
		<a href="MemberList">전체 회원 목록 출력</a>
	</c:if>
	
	 
	<a href="./">메인으로</a>
</body>
</html>