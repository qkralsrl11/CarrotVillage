<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당 근 빌 리 지 - 중고마켓</title>
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

html, body {
	margin:0;
	height:100%;
}
#wrap {
	height:100%;
	width: 100%;
    display:grid;
    grid-template-rows: 175px auto 150px;
}
#content_wrap {
	width:1200px;
	margin:0 auto;
}

/*------------- 여기까지 고정 css 속성 -------------*/

#content_wrap {margin-top:20px}

#content_header {
	display:flex;
	justify-content:center;
}

#content_body>b {font-size:30px}

form>input[type=text] {margin:20px 0}

label {width:50px}

</style>
</head>
<body>
<div id="wrap">

	<jsp:include page = "/WEB-INF/views/main/header.jsp" />

	<div id="content_wrap">
		<h2 id=content_header>
			중고 마켓
		</h2>
		<div id=content_body>
			<b>판매글 등록</b><hr>
			<form method=post action=sellProcess enctype="multipart/form-data">
				<label for=id>작성자</label>
				<input type=text id=id name=id value=작성자 readonly><br>
				
				<label for=subject>제목</label>
				<input type=text id=subject name=subject><br>
				
				<label for=price>가격</label>
				<input type=text id=price name=price>
				<label for=location>위치</label>
				<input type=text id=location name=location value=위치 readonly>
				<button>변경</button><br>
				<label for=content>내용</label>
				<textarea id=content name=content></textarea><br>
				<input type=file id=uploadfile name=uploadfile>
				<div id=image_area>이미지 영역</div>
				<input type=hidden name=image>
				<div>
					<input type=submit value=등록>
					<input type=reset value=취소>				
				</div>
			</form>
		</div>
	</div>

	<jsp:include page = "/WEB-INF/views/main/footer.jsp" />
	
</div>
</body>
</html>