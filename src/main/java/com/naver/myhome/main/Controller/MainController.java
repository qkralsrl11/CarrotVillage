package com.naver.myhome.main.Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naver.myhome.main.Service.MemberService;

@Controller
@RequestMapping(value="main")
public class MainController {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
    MemberService memberservice;
	
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
	public void NaverLoginProcess(HttpSession session,
									@RequestParam(value = "email", required = false) String email,
									@RequestParam(value = "name", required = false) String name,
									@RequestParam(value = "profile_image", required = false) String profile_image) {
		String message = "name = " + name + ", email = " + email + ", profile_image = " + profile_image;
		logger.info(message);
		session.setAttribute("user_email", email);
		session.setAttribute("user_name", name);
		session.setAttribute("user_profile_image", profile_image);
	}
	
	@RequestMapping(value="joinTerms")
	public String joinTerms() {
		return "main/join_terms";
	}
	
	@RequestMapping(value="join")
	public String join() {
		return "main/join";
	}
	
	@RequestMapping(value="joinProcess")
	public String joinProcess() {
		return "main/login";
	}
	
	@ResponseBody
	@RequestMapping(value="logout")
	public Map<String,Object> logout(HttpSession session) throws IOException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("logout_name", session.getAttribute("user_name"));
		session.invalidate();
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "emailAuth")
    public Map<String,Object> mailSend(@RequestParam(value="email") String email) throws IOException {
		System.out.println(email);
        Random random = new Random();
        int authKey = random.nextInt(4589362) + 49311;
        
        String title = "회원가입 인증 이메일 입니다.";
        String content = "인증번호 = " + authKey;
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            logger.info(message.toString());
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

            messageHelper.setFrom("project.sender.21@gamil.com");
            messageHelper.setTo(email);
            messageHelper.setSubject(title);
            messageHelper.setText(content);
            
            mailSender.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("authKey", authKey);
        
        return map;  
    }
    
}
