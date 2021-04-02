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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>t.js"></script>
<style>

html, body {
	margin:0;
}
#wrap {
	width: 100%;
    margin: 0;
}
#content_wrap {
	position: absolute;
    top: 176px;
    height: auto;
    width: 100%;
    display:flex;
    flex-direction:column;
}

content100 {
	width:100%;
}

#content {
	width: 1200px;
    margin: 0 auto;
}
/*------------- 여기까지 고정 css 속성 -------------*/

</style>
</head>
<body>
<div id="wrap">

	<jsp:include page="header.jsp"/>

	<div id="content_wrap">
		
		<div id="content100"> <!-- 콘텐츠의 width를 100%로 하고 싶은 경우 여기안에 넣어주세요 -->
			
			<div style="width:100%;height:1000px;background:pink"></div> <!-- test용 div -->
			
		</div>
		
		
		
		<div id="content"> <!-- 콘텐츠의 width를 1200px로 제한하고 싶은 경우 여기안에 넣어주세요 -->
		
			<div style="width:100%;height:1000px;background:silver"></div> <!-- test용 div -->
			
		</div>
		
		<jsp:include page="footer.jsp"/>
	
	</div>

</div>
</body>
</html>