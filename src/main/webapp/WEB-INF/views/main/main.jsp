<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당 근 빌 리 지</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/header.css?1" rel="stylesheet" type="text/css">
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<style>
html, body {
	margin:0;
	height:100%;
}
#wrap {
	position: relative;
    width: 100%;
    height:100%;
    min-width: 1200px;
    margin: 0;
    display:flex;
    flex-direction:column;
}

#nav_bar.fixed {
	visibility:visible;
}
#cnt_wrap {
	position:absolute;
	z-index:1;
	top:0;
	width:100%;
}


</style>
<script>
	$(document).ready(function() {
		
		$("#header").mouseenter(function() {
			var height = $(document).scrollTop();
			if (height < 80) {
				$('#nav_bar').addClass('fixed');
			}
		});
		$("#header").mouseleave(function() {
			var height = $(document).scrollTop();
			if (height < 80) {
				$('#nav_bar').removeClass('fixed');
			}
		});
		
	});
	
	
	var scroll = function(){
	    
	    var $nav = null,
	        $cnt = null,
	        moveCnt = null,
	        moveIndex = 0,
	        moveCntTop = 0,
	        winH = 0,
	        time = false;

	    $(document).ready(function(){
	        init();
	        initEvent();
	    });
	    
	    var init = function(){
	        $cnt = $(".content");
	    };
	    
	    var initEvent = function(){
	        $("html ,body").scrollTop(0);
	        winResize();
	        $(window).resize(function(){
	            winResize();
	        });
	       
	        $cnt.on("mousewheel", function(e){
	        	if (moveIndex != 3) {
		        	e.preventDefault();
	        	}
	            if(time === false){
	              wheel(e);
	            }
	        });
	    };
	        
	    var winResize = function(){
	        winH = $(window).height();
	        $cnt.children("div").height(winH);
	        $("html ,body").scrollTop(moveIndex.scrollTop);
	    };
	    
	    var wheel = function(e){
	        if(e.originalEvent.wheelDelta < 0){
	            if(moveIndex < 3){
	                moveIndex += 1;
	                moving(moveIndex);
	            };
	        }else{
	            if(moveIndex > 0){
	                moveIndex -= 1;
	                moving(moveIndex);
	            };
	        };
	    };
	    
	    var moving = function(index){
	        time = true
	        moveCnt = $cnt.children("div").eq(index);
	        moveCntTop = moveCnt.offset().top;
	        $("html ,body").stop().animate({
	            scrollTop: moveCntTop
	        }, 600, function(){
	          time = false;
	        });
	    };
	    
	};

	scroll();
</script>
</head>
<body>
<div id="wrap">

	<jsp:include page="header.jsp"/>
	
	<div id="cnt_wrap">
	
		<div class="content">
			<div class="cnt01" style="background-color:skyblue;height:100%;"></div>
    		<div class="cnt02" style="background-color:silver;height:100%;"></div>
    		<div class="cnt03" style="background-color:yellow;height:100%;"></div>
    		<div class="cnt04" style="background-color:green;height:100%;"></div>
		</div>
		
		<jsp:include page="footer.jsp"/>
		
	</div>
	
</div>

</body>
</html>