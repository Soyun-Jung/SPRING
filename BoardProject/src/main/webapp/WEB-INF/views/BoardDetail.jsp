<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글 보기</h1>
		<table>
		<tr>
				<th>글넘버</th>
				<td>${board.bnumber}</td>
			</tr>
		<tr>
				<th>글 제목</th>
				<td>${board.btitle}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${board.bwriter}</td>
			</tr>
			<tr>
			<th>작성날짜</th>
			<td>${board.bdate}</td>
			</tr>
						<tr>
			<th>조회수</th>
			<td>${board.bhits}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${board.bcontents}</td>
			</tr>

			<tr style="text-align: right;">
				<td colspan="2"><input type="submit" value="글작성">
			</tr>
		</table>

</body>
</html>