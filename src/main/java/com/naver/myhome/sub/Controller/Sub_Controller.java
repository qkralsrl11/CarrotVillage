package com.naver.myhome.sub.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/sub")
public class Sub_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Sub_Controller.class);
	
	@GetMapping(value="/submarket")
	public String submain() {
		logger.info("sub_main도달");
		return "sub/submain";
	}
	@RequestMapping(value ="/loc")
	public String loc() {
		logger.info("loc도달");
		return "sub/loce";
		
	}
	@GetMapping("/detail")
	public String detail() {
		logger.info("detail도달");
		return "sub/sub_detail";
	}
}
