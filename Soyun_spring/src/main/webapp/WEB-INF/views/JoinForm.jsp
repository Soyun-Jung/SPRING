<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinForm</title>

<style>
body {
	padding-top: 4.2rem;
	padding-bottom: 4.2rem;
	background: rgba(0, 0, 0, 0.76);
	align : center;
}

a {
	text-decoration: none !important;
}

h1, h2, h3 {
	font-family: 'Kaushan Script', cursive;
}

.myform {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	padding: 1rem;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
	pointer-events: auto;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 1.1rem;
	outline: 0;
	max-width: 500px;
}

.tx-tfm {
	text-transform: uppercase;
}

.mybtn {
	border-radius: 50px;
}

.login-or {
	position: relative;
	color: #aaa;
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.span-or {
	display: block;
	position: absolute;
	left: 50%;
	top: -2px;
	margin-left: -25px;
	background-color: #fff;
	width: 50px;
	text-align: center;
}

.hr-or {
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

.google {
	color: #666;
	width: 100%;
	height: 40px;
	text-align: center;
	outline: none;
	border: 1px solid lightgrey;
}

form .error {
	color: #ff0000;
}

 #second {
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
} 
</style> 
</head>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<body>

				<div id="second">
					<div class="myform form ">
						<div class="logo mb-3">
							<div class="col-md-12 text-center">
								<h1>Signup</h1>
							</div>
						</div>
						<form action="signup" name="registration">
							<div class="form-group">
								<label>Identity code</label> <input type="text" name="mid"
									class="form-control" id="mid" onchange="idOverlap()" placeholder="Enter Id">
									<span id="checkresult"></span>
							</div>
							<div class="form-group">
								<label>Password</label> <input type="password" name="mpwd"
									id="mpwd" class="form-control" onchange="pwConfirm()" placeholder="Enter Password">
									<span id="confirmPw"></span>
							</div>
							<div class="form-group">
								<label>Name</label> <input type="text" name="mname"
									class="form-control" id="mname" placeholder="Enter Name">
							</div>
							<div class="form-group">
							<label>Date of birth</label> <input type="date" name="mbirth"
									class="form-control" id="mbirth" placeholder="Enter Birth date">
							</div>
							<div class="form-group">
								<label>Email address</label> <input type="email" name="memail"
									class="form-control" id="email" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label>Mobile number</label> <input type="text" name="mnumber"
									class="form-control" id="mnumber"
									placeholder="Enter Mobile number">
							</div>
							<div class="form-group">
								<label>Address</label> <input type="text" id="mpostcode" name="mpostcode"
									placeholder="우편번호"> <input type="button"
									onclick="execPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="mroadadd" name="mroadadd" placeholder="도로명주소"> <input
									type="text" id="mjibunadd" name="mjibunadd" placeholder="지번주소"> <span
									id="guide" style="color: #999; display: none"></span> <input
									type="text" id="mdetailadd" name="mdetailadd" placeholder="상세주소"> <input
									type="text" id="mextraadd" name="mextraadd" placeholder="참고항목">
							</div>

							<div class="col-md-12 text-center mb-3">
								<button type="submit"
									class=" btn btn-block mybtn btn-primary tx-tfm">Get
									Started</button>
							</div>
							<div class="col-md-12 ">
								<div class="form-group">
									<p class="text-center">
										<a href="./" id="signin">Already have an account?</a>
									</p>
								</div>
							</div>

						</form>
					</div>
				</div>
</body>

<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//주소 api
    function execPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('mpostcode').value = data.zonecode;
                document.getElementById("mroadadd").value = roadAddr;
                document.getElementById("mjibunadd").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("mextraadd").value = extraRoadAddr;
                } else {
                    document.getElementById("mextraadd").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
	
  //아이디 중복 체크
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
				console.log("아이디 받앗냐? " + inputId);
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
	
	//비밀번호 정규식
	function pwConfirm(){
		var userPw = document.getElementById("mpwd").value;
		var confirmPw = document.getElementById("confirmPw");
		
		var num = userPw.search(/[0-9]/g);
		var eng = userPw.search(/[a-z]/ig);
		var spe = userPw.search(/[`~!@@#$%^&*|₩₩₩'₩';:₩/?]/gi);
		
		if(userPw.search(/\s/)!=-1){
			confirmPw.style.color = "red";
			confirmPw.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
		} else if (userPw.length < 8 || userPw.length > 20){
			confirmPw.style.color = "red";
			confirmPw.innerHTML = "8자리 ~ 20자리 이내로 입력해주세요!";
		} else if( num < 0 || eng < 0 || spe < 0 ){
			confirmPw.style.color = "red";
			confirmPw.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
		} else {
			confirmPw.style.color = "green";
			confirmPw.innerHTML = "적절한 비밀번호 입니다!";
		}
	}
	
</script>
</html>