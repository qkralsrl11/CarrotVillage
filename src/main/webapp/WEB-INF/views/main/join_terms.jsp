<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
	margin: 0;
}

form {
	width: 490px;
	margin: 0;
}

#terms_wrap {
	padding: 20px;
}

h3 {
	padding: 0 0 10px 0;
	font-size: 15px;
	color: black;
	font-weight: 600;
	border-bottom: 2px solid orange;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label {
	display: inline-block;
	margin-bottom: .5rem;
	width: 100%;
	font-size: 14px;
	cursor: pointer;
}

input[type="checkbox"]+label span {
	display: inline-block;
	width: 18px;
	height: 18px;
	margin: 1px 10px 0 0;
	vertical-align: middle;
	background: white;
	cursor: pointer;
	float: right;
	border-radius: 9px;
	border: 1px solid silver;
}

input[type="checkbox"]:checked+label span {
	background:url() no-repeat;
	border: none;
	background-size:18px 18px;
}
#chk_all_wrap
</style>
</head>
<body>
	<form action="main/join">
		<div id="terms_wrap">

			<div>
				<h3>약관 동의</h3>
			</div>


			<div id="chk_all_wrap">
				<input type="checkbox" id="chk_all" name="chk_all"> <label
					for="chk_all">회원가입 약관에 모두 동의합니다 <span></span>
				</label>
			</div>


			<div>
				<div></div>
				<div></div>
			</div>


			<div>
				<div></div>
				<div></div>
			</div>


			<div></div>

		</div>
	</form>



</body>
</html>