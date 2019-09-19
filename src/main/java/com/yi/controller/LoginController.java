package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.DepartmentVO;
import com.yi.domain.LoginDto;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;
import com.yi.service.DepartmentService;
import com.yi.service.ManagementService;
import com.yi.service.TitleService;

@RequestMapping("/auth")
@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	ManagementService service;
	
	@Autowired
	DepartmentService dservice;
	
	@Autowired
	TitleService tservice;
	
	@RequestMapping(value="login", method=RequestMethod.GET) //로그인 로그인
	public void loginGET() { 
		logger.info("----- loginGET");
	}
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPOST(ManagementVO mvo, Model model) throws Exception { 
		logger.info("----- loginPOST, mvo는 "+mvo);
		
		ManagementVO dbMember = service.selectByIdAndPw(mvo.getmId(), mvo.getmPw());
		
		if(dbMember == null) {//회원이 없으면 dto 안 만든당.
			logger.info("loginPost -> login fail, not member");
			return ;
		}
		LoginDto dto = new LoginDto();
		dto.setUserid(dbMember.getmId());
		dto.setUsername(dbMember.getmPw());
		model.addAttribute("loginDto", dto);
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET) // 회원가입 회원가입 
	public void joinGET(Model model) throws Exception { 
		logger.info("----- loginGET");
		
		List<DepartmentVO> dlist = dservice.selectAllDepartment();
		List<TitleVO> tlist = tservice.selectAllTitle();
		model.addAttribute("dlist", dlist);
		model.addAttribute("tlist", tlist);
		
		
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPOST(ManagementVO vo) throws Exception { 
		logger.info("----- joinPOST, vo가 ?"+vo.toString());
		
//		logger.info("dNo는 "+dNo.toString());
//		logger.info("tNo는 "+tNo.toString());
//		 DepartmentVO dNo, TitleVO tNo
////		String mId, String mPw, String mName
//		ManagementVO vo = new ManagementVO();
//		vo.setmId(mId);
//		vo.setmPw(mPw);
//		vo.setmName(mName);
//		service.insertManagement(vo);
		
		service.insertManagement(vo);
		
		return "/home";
	}
	
	
	
	
	
	
	
	
	
}

















