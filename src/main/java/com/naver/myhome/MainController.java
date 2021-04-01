package com.naver.myhome;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/main")
	public String main(Model m) {
		return "main/main";
	}
	
	@RequestMapping(value="/template")
	public String navi1(Model m) {
		return "main/template";
	}
	
	@RequestMapping(value="/login")
	public String login(Model m) {
		return "main/login";
	}
	
}
