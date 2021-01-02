<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>글 작성</h2>
	<form action="boardWrite" method="POST">

		<table>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bwriter" size="40"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="bpwd" size="40"></td>
			</tr>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="btitle" size="40"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="20" cols="40" name="bcontents"></textarea></td>
			</tr>
<!-- 			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="bFile"></td>
			</tr> -->

			<tr style="text-align: right;">
				<td colspan="2"><input type="submit" value="글작성">
			</tr>
		</table>
	</form>

<script>
alert('${msg}');
</script>

</body>
</html>