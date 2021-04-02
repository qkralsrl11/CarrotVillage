<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당 근 빌 리 지</title>
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

/*------------- 여기까지 고정 css 속성 -------------*/

#content_wrap {width:1200px; margin:0 auto}

#content_header {display:flex; justify-content:center}

#content_function {display:flex; justify-content:space-between}

#content_body {
	display:grid;
	grid-template-columns:1fr 1fr 1fr 1fr;
	column-gap:3%;
}

#content_body>div {
	background:silver;
	height:300px;
	border-radius:10%;
	opacity:0;
	margin-bottom:10%;
	position:relative;
	top:20px
}
</style>
<script>
$(document).ready(function() {
	function show_gradually(index) {
		
		if($('#content_body>div:nth-child('+index+')').length > 0) {
			$('#content_body>div:nth-child('+index+')').animate(
					{
						opacity : 1,
						top : 0
					}, 300, 'linear', function() {
				show_gradually(index+1);
			});
		}
	}
	show_gradually(1);
});
</script>
</head>
<body>
<div id="wrap">

	<jsp:include page = "/WEB-INF/views/main/header.jsp" />

	<div id="content_wrap">
		<div id=content_header>
			<b>중고 마켓</b>
		</div>
		<div id=content_function>
			<div></div>
			<div>
				<input type=text placeholder="검색어를 입력해주세요.">
				<button>검색</button>	
			</div>
			<div><button>판매하기</button></div>
		</div>
		<div id=content_body>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
			<div>내용</div>
		</div>
	</div>

	<jsp:include page = "/WEB-INF/views/main/footer.jsp" />
	
</div>
</body>
</html>