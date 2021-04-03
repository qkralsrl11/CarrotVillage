package com.naver.myhome.market.Controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.naver.myhome.market.Service.UsedItemService;
import com.naver.myhome.market.domain.UsedItem;

@Controller
@RequestMapping(value="/market")
public class MarketController {
	private static final Logger logger = LoggerFactory.getLogger(MarketController.class);
	
	@Autowired
	private UsedItemService usedItemService;
	
	@GetMapping(value = "/list")
	public String list() {
		return "market/list";
	}
	
	@GetMapping("/sell")
	public String sell() {
		return "market/sell";
	}
	
	@PostMapping("/sellProcess")
	public ModelAndView sellProcess(
			ModelAndView mv, UsedItem usedItem, HttpServletRequest request) throws Exception {
//		usedItemService.insert(usedItem);
		
		MultipartFile uploadfile = usedItem.getUploadfile();
		if(!uploadfile.isEmpty()) {
			String saveFolder =
					request.getSession().getServletContext().getRealPath("resources") + "/upload/market_image/";
//			uploadFile.transferTo(new File(saveFolder + usedItem.getNum() + ";")); 저장 하기
			int index = uploadfile.getOriginalFilename().lastIndexOf(".");
			System.out.println(uploadfile.getOriginalFilename().substring(index+1));
		}
		mv.setViewName("redirect:list");
		return mv;
	}
}
