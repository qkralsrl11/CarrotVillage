<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당 근 빌 리 지</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<style>
body {
	margin:0;
}
#wrap {
	position: relative;
    width: 100%;
    height:100%;
    min-width: 1200px;
    margin: 0;
}
.content {
	height:1200px;
}
</style>
</head>
<body>
<div id="wrap">

	<jsp:include page="header.jsp"/>

	<div class="content">
	
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</div>
</body>
</html>