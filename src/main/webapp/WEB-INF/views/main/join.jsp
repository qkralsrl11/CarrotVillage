<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
	margin:0;
}
form {
	width:490px;
	margin:0;
}
button {
	cursor:pointer;
}
div {
	display:flex;
	flex-direction:column;
}
#join_wrap {
	width:420px;
	height:560px;
	padding: 30px 30px 0px 30px;
	margin:auto;
}
#join_header {
	height:15%;
}
#join_header p {
	font-size:25px;
	color:orange;
	text-align:center;
}
#join_content {
	height:85%;
}
#join_content > div:nth-child(1) {
	height:90%;
}

.join_item_wrap > div:nth-child(1):not(:nth-child(3)) {
	border-bottom: silver 2px solid;
    margin: 5px 0;
    padding: 0 10px;
}

.join {
	border:none;
	width:100%;
	height:42px;
}
.join:focus {
	outline:none;
}

#join_content input::placeholder {
	color:silver;
	font-weight:400;
	letter-spacing:1px;
}
#join_btn {
	background:orange;
	color:white;
	width:100%;
	border-radius:3px;
	border:1px orange solid;
	height:45px;
	font-size:18px;
	font-weight:400;
}
#email_auth {
	display:flex;
	flex-direction:row;
	border:none;
	height:65px;
}
#email_auth_btn {
	margin-top: 11px;
    width: 150px;
    height: 35px;
    background: white;
    border: 1px solid silver;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 600;
}
#email_msg {
	font-size:12px;
}
</style>
<script>
$(function() {
	var checkName = false;
	var checkEmail = false;
	
	$('form').submit(function() {

		if(!checkName) {
			$("#name").focus();
			return false;
		}
	
		if(!checkEmail) {
			$("#email").focus();
			return false;
		}
	});
	
	$("#email").on('keyup', function() {
		$("#email_msg").empty();
		var pattern = /^\w+@\w+[.]\w{3}$/;
		var email = $("#email").val()
		if(!pattern.test(email)) {
			$("#email_msg").css('color', 'red').html("이메일형식이 맞지 않습니다.");
			$("#email_msg").prev().css('border-color', 'red');
			checkEmail = false;
		} else {
			$("#email_msg").prev().css('border-color', 'silver');
			$("#email_msg").empty();
			checkEmail = true;
		}
	});
	
	$("#name").on('keyup', function() {
		checkName = true;
		$("#name_msg").empty();
		var pattern = /^\w{1,20}$/;
		var id = $("input:eq(0)").val();
		if(!pattern.test(id)) {
			$("#message").css('color', 'red').html("영문자 숫자_로 5~12자 가능합니다.");
			checkid = false;
			return;
		}
		
		
		$.ajax({
			url : "member/idcheck",
			data : {"id" : id},
			success : function(result) {
				console.log(result);
				if(result == -1) {
					$("#message").css('color', 'green').html("사용 가능한 아이디 입니다.");
					checkid = true;
				} else {
					$("#message").css('color', 'blue').html("사용중인 아이디 입니다.");
					checkid = false;
				}
			}
		});
		
		
	});
	
});
</script>
</head>
<body>
	<form action="joinProcess" method="post">
		<div id="join_wrap">

			<div id="join_header">
				<p>당근빌리지</p>
			</div>


			<div id="join_content">
			
				<div>
				
					<div class="join_item_wrap">
						<div>
							<input type="text" placeholder="이름" name="name" id="name" class="join">
						</div>
						<div class="join_msg" id="name_msg"></div>
					</div>
					
					<div class="join_item_wrap">
						<div>
							<input type="text" placeholder="이메일" name="email" id="email" class="join">
						</div>
						<div class="join_msg" id="email_msg"></div>
					</div>
					
					<div class="join_item_wrap">
						<div id="email_auth">
							<div><button id="email_auth_btn">이메일 인증하기</button></div><div></div>
						</div>
					</div>
					
					<div class="join_item_wrap">
						<div>
							<input type="password" placeholder="비밀번호" name="password" id="password" class="join">
						</div>
						<div class="join_msg"></div>
					</div>
					
					<div class="join_item_wrap">
						<div>
							<input type="password" placeholder="확인" name="password_chk" id="password_chk" class="join">
						</div>
						<div class="join_msg"></div>
					</div>
					
				</div>
				
				<div>
					<button type="submit" id="join_btn">가입하기</button>
				</div>

			</div>


		</div>
	</form>
</body>
</html>