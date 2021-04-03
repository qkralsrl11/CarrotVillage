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
#login_wrap {
	width:420px;
	height:560px;
	padding:30px;
	margin:auto;
}
#login_header {
	height:15%;
}
#login_header p {
	font-size:25px;
	color:orange;
	text-align:center;
}
#login_content {
	height:55%;
}
#login_content input[type='text'], #login_content input[type='password'] {
	border:none;
	width:70%;
	height:40px;
}
#login_content input[type='text']:focus, #login_content input[type='password']:focus {
	outline:none;
}
#login_content > div:nth-child(1) > div {
	border-bottom: silver 2px solid;
    margin: 5px 0;
    padding: 0 10px;
}
#login_content > div:nth-child(1) > div > div {
	width:30%;
}
#login_content > div:nth-child(2) {
	margin:12px 0;
}
#stay_signed_in {
	width:15px;
	height:15px;
	margin-bottom: 3px;
}
#login_content > div:nth-child(2) > label {
	margin-left:7px;
	color:#4a4a4a;
	font-size:14px;
}
#login_content > div:nth-child(3) {
	margin:20px 0;
}
#login_content > div:nth-child(3) > button {
	background:orange;
	color:white;
	width:100%;
	border-radius:3px;
	border:1px orange solid;
	height:45px;
	font-size:18px;
	font-weight:400;
}
#login_content > div:nth-child(4) {
	width:100%;
	display:flex;
	justify-content:space-between;
}
#login_content > div:nth-child(4) a {
	font-size:13px;
	text-decoration:none;
	color:silver;
}
#login_content > div:nth-child(4) a:hover {
	color:black;
	text-decoration:underline;
}
#login_content input::placeholder {
	color:silver;
	font-weight:400;
	letter-spacing:1px;
}
#login_other {
	height:30%;
	display:flex;
	flex-direction:column;
}
#login_other button {
	background:white;
	width:100%;
	border-radius:3px;
	border:1px #a7a7a7 solid;
	height:45px;
	font-size:18px;
	margin:3px 0;
	text-align:center;
	color:#505050;
	font-weight: 100;
}
#login_other button > img {
	float:left;
}
#naver_id_login img:nth-child(2) {
	display:none;
}
#naver_id_login {
	height: 42px;
	width:100%;
	margin-bottom:5px;
}

#naver_id_login_anchor {
	border: solid 1px #a0a0a0;
	background:white;
    display: flex;
    flex-direction:row;
    width:360px;
   	height: 40px;
    border-radius: 3px;
}
#naver_id_login_anchor:hover {
	cursor:pointer;
	text-decoration:none;
}
#naver_id_login_anchor p {
	font-size:18px;
	margin: 5px 45px;
	color:#505050;
}
#naver_logo {
	display:block;
	width:30px;
	height:30px;
	margin:5px;
}
</style>
</head>
<body>
	<form action="" method="post">
		<div id="login_wrap">

			<div id="login_header">
				<p>당근빌리지</p>
			</div>


			<div id="login_content">
				<div><!-- 1 -->
					<div>
						<input type="text" placeholder="이메일" name="email">
					</div>
					<div>
						<input type="password" placeholder="비밀번호" name="password">
					</div>
				</div>
				<div><!-- 2 -->
					<label for="stay_signed_in">로그인 상태 유지</label>
				</div>
				<div><!-- 3 -->
					<button type="submit">로그인</button>
				</div>
				<div><!-- 4 -->
					<a id="join_terms" href="${pageContext.request.contextPath}/main/joinTerms">회원가입</a> <a href="">아이디/비밀번호 찾기</a>
				</div>
			</div>

			<div id="login_other">
			
				<div id="naver_id_login">
					
				</div>
				<script type="text/javascript">
					var naver_id_login = new naver_id_login("ac6ZedX0lErobHrFaU_k", "http://localhost:8088/myhome/main/naverLoginProcess");	// Client ID, CallBack URL 삽입
																															// 단 'localhost'가 포함된 CallBack URL
					var state = naver_id_login.getUniqState();

					naver_id_login.setButton("green", 3, 40);
					naver_id_login.setDomain("http://localhost:8088/myhome/main/login");	//  URL
					naver_id_login.setState(state);
					//naver_id_login.setPopup();
					naver_id_login.init_naver_id_login();
					
					$(function() {
						$("#naver_id_login_anchor").html("<img src='${pageContext.request.contextPath}/resources/image/Log in with NAVER_Icon_Green.PNG' id='naver_logo'>"
														+"<p>네이버 아이디로 로그인</p>");
					});
				</script>
				
				
				<button><img src="${pageContext.request.contextPath}/resources/image/kakao_logo.png" width="30px" width="30px">카카오 아이디로 로그인</button>
				
			</div>

		</div>
	</form>
</body>
</html>