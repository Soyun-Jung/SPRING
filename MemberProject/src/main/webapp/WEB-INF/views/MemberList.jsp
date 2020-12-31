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
		<th>수정</th>
		<th>삭제</th>
		</tr>
		<c:forEach var="member" items="${mlist}">
			<tr>
				<td><a href="memberview?mid=${member.mid}">${member.getMid()}</a></td>
				<td>${member.getMname()}</td>
				<td><button onclick="memberviewAjax(${member.mid})">조회</button></td>
				<td><button onclick="memberUpdate(${member.getMid()})">수정</button></td>
				<!-- <td><a href="getupdateform?mid=${member.getMid()}">수정</a> -->
				<td><a href="memberdelete?mid=${member.getMid()}">삭제</a></td>		
			</tr>
		</c:forEach>
	</table>
	<div id="detailview"></div>
	<a href="./">메인으로</a>
	<button onclick="logout()">로그아웃</button>	
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	alert('${msg}');
	function memberUpdate(mid){
		location.href="getupdateform?mid="+mid;
	}
	
	function logout(){
		location.href="memberlogout";
	}
	
	function memberviewAjax(mid){
		//console.log(mid);
		$.ajax({
			type:"post",
			url:"memberviewajax",
			data:{"mid":mid},
			dataType:"json",
			success:function(result){
				console.log(result);
				var output = "<table border='1'>";
				output += "<tr><th>ID</th> <th>NAME</th>";
				output += "<th>PHONE</th> <th>EMAIL</th> <th>BIRTH</th></tr>";
				output += "<tr>";
				output += "<td>"+result.mid+"</td>";
				output += "<td>"+result.mname+"</td>";
				output += "<td>"+result.mphone+"</td>";
				output += "<td>"+result.memail+"</td>";
				output += "<td>"+result.mbirth+"</td>";
				output += "</tr>";
				output += "</table>";
				
				$("#detailview").html(output);

			},
			error:function(){
				alert("오타확인하세영");
			}
		});
	}
	
</script>
</html>