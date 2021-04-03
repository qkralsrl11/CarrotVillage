package com.naver.myhome.main;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="main")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="mainPage")
	public String main() {
		return "main/main";
	}
	
	@RequestMapping(value="login")
	public String login() {
		return "main/login";
	}
	
	@RequestMapping(value="naverLoginProcess")
	public String naverLoginProcess() {
		return "main/naverLoginProcess";
	}
	
	@ResponseBody
	@RequestMapping(value="loginProcess")
	public String NaverLoginProcess(HttpSession session,
									@RequestParam(value = "email", required = false) String email,
									@RequestParam(value = "name", required = false) String name,
									@RequestParam(value = "profile_image", required = false) String profile_image) {
		String message = "name = " + name + ", email = " + email + ", profile_image = " + profile_image;
		logger.info(message);
		session.setAttribute("user_email", email);
		session.setAttribute("user_name", name);
		session.setAttribute("user_profile_image", profile_image);
		return "redirect:main/main";
	}
	
	@RequestMapping(value="joinTerms")
	public String joinTerms() {
		return "main/join_terms";
	}
	
	@RequestMapping(value="join")
	public String join() {
		return "main/join";
	}
	
}
