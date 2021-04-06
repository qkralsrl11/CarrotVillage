<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당 근 빌 리 지</title>
<link href="${pageContext.request.contextPath}/resources/css/header.css"
	rel="stylesheet" type="text/css">
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
html, body {
	margin: 0;
	height: 100%;
}

#wrap {
	height: 100%;
	width: 100%;
	display: grid;
	grid-template-rows: 175px auto 150px;
}

#content_wrap {
	width: 1200px;
	margin: 0 auto;
}

/*------------- 여기까지 고정 css 속성 -------------*/
#int_wrap {
	text-align: center;
	padding: 20px;
	font-size: 3em;
}

#martlist_wrap {
	text-align: center;
	font-size: 2em;
}

#mart_list {
	height: 100px;
	width: 1200px;
	margin: 0 auto;
}

#mart_list>ul li {
	list-style-type: none;
	float: left;
	margin: 30px;
	font-size: 1.5em;
}

.mart_ul {
	float: left;
	text-align: center;
	width: 1200px;
	display: flex;
	justify-content: center;
}

#int_message {
	text-align: center;
}

.local_mart {
	display: flex;
	border-bottom: 1px
}

#pmart {
	font-size: 2.5em;
	padding: 50px 100px 50px 400px
}

#delinfo {
	border: 1px gray solid;
	padding: 50px;
	margin-left: 100px;
	boarder-bottom: 1px gray;
}

.mar_contet {
	display: flex;
	padding: 0
}

.mar_content ul {
	list-style-type: none;
	display: flex;
	text-align: center;
	padding: 0
}

img {
	display: block;
}

.mar_content li {
	padding: 12px 10px 12px 25px;
}
</style>
</head>
<body>
	<div id="wrap">

		<jsp:include page="/WEB-INF/views/main/header.jsp" />

		<div id="content_wrap">

			<div id="int_wrap">Carrot Mart</div>
			<hr>
			<div id="mart_list">
				<ul class="mart_ul">
					<li><a href="#">mart1</a></li>
					<li><a href="#">mart2</a></li>
					<li><a href="#">mart3</a></li>
					<li><a href="#">mart4</a></li>
					<li><a href="#">mart5</a></li>
					<li><a href="#">mart6</a></li>
				</ul>
			</div>
			<hr>
			<div class="local_mart">
				<div id="pmart">mart1</div>

				<div id="delinfo">
					<table>
						<tr>
							<th>배달지역 :</th>
							<td>서울시</td>
						</tr>
						<tr>
							<th>배달시간 :</th>
							<td>매일 10:00 ~ 18:00 (2시간 이내 배달)</td>
						</tr>
						<tr>
							<th>배달비용 :</th>
							<td>4000원</td>
						</tr>

					</table>

				</div>



			</div>
			<hr>
			<div class="mar_content">
				<ul>
					<li><a href="#" id="thumbnail"><img
							src="<%=request.getContextPath()%>\resources\image\pjh_sum.JPG">
							지훈네 반찬가게</a>
					</li>
					<li><a href="#" id="thumbnail"><img
							src="<%=request.getContextPath()%>\resources\image\pjh_sum.JPG">
							지훈네 반찬가게</a>
					</li>
					<li><a href="#" id="thumbnail"><img
							src="<%=request.getContextPath()%>\resources\image\pjh_sum.JPG">
							지훈네 반찬가게</a>
					</li>
					<li><a href="#" id="thumbnail"><img
							src="<%=request.getContextPath()%>\resources\image\pjh_sum.JPG">
							지훈네 반찬가게</a>
					</li>
					
					
					
			
					
					
				</ul>



			</div>












		</div>

		<jsp:include page="/WEB-INF/views/main/footer.jsp" />

	</div>
</body>
</html>