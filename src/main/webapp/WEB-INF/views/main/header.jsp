<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="${pageContext.request.contextPath}/resources/js/jquery.cookie.js"></script>
<script>
	$(document).ready(function() {
		
		var msg_state = sessionStorage.getItem('msg_state');
		console.log(msg_state);
		
		if (msg_state == 1) {
			$("#msg_wrap").addClass("show");
		}
		
		$('#top_btn').on('click', function(e) {
			e.preventDefault();
			$('html,body').animate({
				scrollTop : 0
			}, 600);
		});

		$(window).scroll(function() {
			var height = $(document).scrollTop();
			if (height > 90) {
				$('#nav_wrap').addClass('fixed');
				$('#top_btn').addClass('show');
				$("#logo_wrap").css("display", "none");

			} else if (height < 90) {
				$('#nav_wrap').removeClass('fixed');
				$('#top_btn').removeClass('show');
				$("#logo_wrap").css("display", "block");
			}
		});

		$('#line-wrapper').click(function() {
			$('.line').removeClass('init');
			$('#line-top').toggleClass('line-top').toggleClass('top-reverse');
			$('#line-mid').toggleClass('line-mid').toggleClass('mid-reverse');
			$('#line-bot').toggleClass('line-bot').toggleClass('bot-reverse');

			$("#nav_all").toggleClass("show");
		});

		$("#login_btn").click(function(e) {
			e.preventDefault();
			var nWidth = "490";
			var nHeight = "630";			  

			var xPos = (document.body.clientWidth / 2) - (nWidth / 2); 
			xPos += window.screenLeft;	 //듀얼 모니터
			var yPos = (screen.availHeight / 2) - (nHeight / 2);

			window.open("login","login/join_pop","width="+nWidth+",height="+nHeight+", left="+xPos+", top="+yPos+", toolbars=no, resizable=yes, scrollbars=no");
		});
		
		$("#msg_btn").click(function() {
			$('#msg_wrap').toggleClass('show');
			
			if (msg_state == 0 || msg_state == null) {
				sessionStorage.setItem('msg_state', 1);
			} else if (msg_state == 1) {
				sessionStorage.setItem('msg_state', 0);
			}
		});
		
	});
</script>

<a id="top_btn"> 
	<img src="${pageContext.request.contextPath}/resources/image/arrowup.png">
</a>
<a id="msg_btn"> 
	<img src="${pageContext.request.contextPath}/resources/image/msg5.png">
</a>

<div id="msg_wrap">
</div>

<div id="header">
	<div id="top_wrap">
		<div id="top_bar">

			<div class="left">
				<img src="${pageContext.request.contextPath}/resources/image/pin2.png">
			</div>

			<div class="right">
				<ul>
					<li><a id="login_btn">로그인</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>

		</div>
	</div>


	<div id="logo_wrap">
		<div id="logo_bar">
			<a href="main">당근빌리지</a>
		</div>
	</div>


	<div id="nav_wrap">

		<div id="nav_bar">

			<div id="hbg_btn">
				<div id="line-wrapper">
					<div id="line-top" class="line init top-reverse"></div>
					<div id="line-mid" class="line init mid-reverse"></div>
					<div id="line-bot" class="line init bot-reverse"></div>
				</div>
			</div>

			<div id="nav_lst">
				<ul>
					<li><a href="template">navi1</a></li>
					<li><a href="#">navi2</a></li>
					<li><a href="#">navi3</a></li>
					<li><a href="#">navi4</a></li>
				</ul>
			</div>
			
			<div id="nav_all">
				<div>
					<ul>
						<li><a>nav1-1</a></li>
						<li><a>nav1-2</a></li>
						<li><a>nav1-3</a></li>
						<li><a>nav1-4</a></li>
						<li><a>nav1-5</a></li>
					</ul>
					<ul>
						<li><a>nav2-1</a></li>
						<li><a>nav2-2</a></li>
						<li><a>nav2-3</a></li>
						<li><a>nav2-4</a></li>
						<li><a>nav2-5</a></li>
						<li><a>nav2-6</a></li>
						<li><a>nav2-7</a></li>
					</ul>
					<ul>
						<li><a>nav3-1</a></li>
						<li><a>nav3-2</a></li>
						<li><a>nav3-3</a></li>
						<li><a>nav3-4</a></li>
					</ul>
					<ul>
						<li><a>nav4-1</a></li>
						<li><a>nav4-2</a></li>
						<li><a>nav4-3</a></li>
						<li><a>nav4-4</a></li>
						<li><a>nav4-5</a></li>
						<li><a>nav4-6</a></li>
					</ul>
				</div>
			</div>
			
		</div><!-- #nav_bar end -->
		

	</div><!-- #nav_wrap end -->
</div>