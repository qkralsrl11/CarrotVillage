<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<style>
body {
	margin:0;
}
form {
	width:480px;
	margin:0;
}
button {
	cursor:pointer;
}
#login_wrap {
	width:420px;
	height:560px;
	padding:30px;
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
#login_content > div:nth-child(2) > label {
	font-family: 'Roboto Condensed', sans-serif;
	margin-left:7px;
	color:#4a4a4a;
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
	font-family: 'Roboto Condensed', sans-serif;
}
#login_content > div:nth-child(4) {
	width:100%;
	display:flex;
	justify-content:space-between;
}
#login_content > div:nth-child(4) a {
	font-size:13px;
	font-family: 'Roboto Condensed', sans-serif;
	text-decoration:none;
	color:silver;
}
#login_content > div:nth-child(4) a:hover {
	color:orange;
}
#login_content input::placeholder {
	color:silver;
	font-family: 'Roboto Condensed', sans-serif;
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
	font-family: 'Roboto Condensed', sans-serif;
	margin:3px 0;
	text-align:center;
	color:#505050;
	font-weight: 100;
}
#login_other button > img {
	float:left;
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
						<input type="text" placeholder="아이디" name="id">
						<div></div>
					</div>
					<div>
						<input type="password" placeholder="비밀번호" name="password">
						<div></div>
					</div>
				</div>
				<div><!-- 2 -->
					<input type="checkbox" id="id_remember" name="id_remember"><label for="id_remember">아이디 저장</label>
				</div>
				<div><!-- 3 -->
					<button type="submit">로그인</button>
				</div>
				<div><!-- 4 -->
					<a id="join_btn">회원가입</a> <a href="">아이디/비밀번호 찾기</a>
				</div>
			</div>

			<div id="login_other">
				<button><img src="${pageContext.request.contextPath}/resources/image/Log in with NAVER_Icon_Green.PNG" width="30px">네이버 아이디로 로그인</button>
				<button><img src="${pageContext.request.contextPath}/resources/image/kakao_logo.png" width="30px" width="30px">카카오 아이디로 로그인</button>
			</div>

		</div>
	</form>
</body>
</html>