<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
		var naver_id_login = new naver_id_login("ac6ZedX0lErobHrFaU_k", "http://localhost:8088/carrotvillage/naverLoginProcess"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
		
		// 접근 토큰 값 출력
		//alert(naver_id_login.oauthParams.access_token);
		
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			//alert(naver_id_login.getProfileData('email'));
			
			var email = naver_id_login.getProfileData('email');
			var name = naver_id_login.getProfileData('name');
			var profile_image = naver_id_login.getProfileData('profile_image');
			
			$.ajax({
				type : "post",
				url : "loginProcess",
				data : {"email" : email,
						"name" : name,
						"profile_image" : profile_image
					   },
				success : function(result) {
					alert(result);
				}
			});
			
			opener.parent.location.reload();
			window.close();
		}
		
</script>
</head>
<body>

</body>
</html>