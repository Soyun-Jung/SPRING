<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		
<body>

	<form action="MemberJoin">
		<table>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="mid" id="mid" onchange="idOverlap()" placeholder="15자 이내로 입력하세요."></td>
				<td><span id="checkresult"></span></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="mpwd" placeholder="15자 이내로 입력하세요."></td>
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
	
	<a href="./">메인으로</a>
	
</body>

<script>
	/* ajax(Asynchronous javascript and xml) : 비동기식 처리 */
	/* 아이디 중복확인 과정
		아이디 입력창에 있는 값을 스킄립틑 함수에 가져옴
		입력 값을 ajax를 이용해 서버(백엔드(컨트롤러))로 보내고 결과값을 가져옴.
		결과값에 따라 사용가능 여부 메세지를 아이디 입력칸 옆에 출력*/
	function idOverlap(){
		var inputId=$("#mid").val();
		var checkResult = document.querySelector('#checkresult');
		console.log(inputId);
		
		//JSON(JavaScript Object Notation) : key값과 value값 -> 모든 것을 담을 수 있는 데이터 형식
		$.ajax({
			type: "post", //전송방법
			url: "idoverlap", //요청주소
			data: {"mid":inputId}, //전송데이터
			dataType: "text", //리턴데이터 형식
			success: function(result){	//정상적으로 실행됐을 때 실행 구문
				if(result=="ok"){
					checkResult.style.color="green";
					checkResult.innerHTML="멋진아이디네용^_^";
				}else{
					checkResult.style.color="red";
					checkResult.innerHTML="다른 아이디를 찾아보세용ㅠㅠ";
				}
			},
			error: function(){
				alert("오타가 있지는 않나요?");
			}			
		});
		
	}
</script>
</html>