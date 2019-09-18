package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.ManagementVO;
import com.yi.service.ManagementService;

@RequestMapping("/auth")
@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	ManagementService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET) //로그인 로그인
	public void loginGET() { 
		logger.info("----- loginGET");
	}
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPOST(ManagementVO mvo, Model model) throws Exception { 
		logger.info("----- loginPOST, mvo는 "+mvo);
		/*ManagementVO dbMember = service.selectMemberByIdAndPw(mvo.getUserid(), mvo.getUserpw());
		
		if(dbMember == null) {//회원이 없으면 dto 안 만든당.
			logger.info("loginPost -> login fail, not member");
			return ;
		}
		LoginDto dto = new LoginDto();
		dto.setUserid(dbMember.getUserid());
		dto.setUsername(dbMember.getUsername());
		model.addAttribute("loginDto", dto);*/
		
		
		
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET) // 회원가입 회원가입 
	public void joinGET() { 
		logger.info("----- loginGET");
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPOST(ManagementVO vo) throws Exception { 
		logger.info("----- joinPOST, vo가 담겨졌음?"+vo);
		service.insertManagement(vo);
		
		
		
		
		
		return "";
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
}

















