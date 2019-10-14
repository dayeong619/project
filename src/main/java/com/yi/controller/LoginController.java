package com.yi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.yi.service.LoginService;

@RequestMapping("/auth")
@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService loginservice;
	
	@RequestMapping(value="login", method=RequestMethod.GET) //로그인 GET
	public void loginGET() { 
		logger.info("----- loginGET");
	}
	
	
	@RequestMapping(value="logout", method=RequestMethod.GET) //로그아웃! 
	public String  logoutGET(HttpServletRequest req) {
		logger.info("----- logoutGET"); 
		req.getSession().invalidate();
		return "redirect:/auth/login";
	}
	 
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPOST(ManagementVO mvo, Model model) throws Exception { //로그인 POST
		logger.info("----- loginPOST, mvo는 "+mvo);
		//그 아이디가 
		
		//여기서 직책 받아가지고 그 직책이 1이면 사장, 2면 부장 그래서 
		ManagementVO dbMember = loginservice.selectByIdAndPw(mvo.getmId(), mvo.getmPw()); //여기서 tNo 우에 받지?
		logger.info("dbmember는"+dbMember);
//		logger.info("id는"+dbMember.toString());
		
		if(dbMember == null) {//회원이 없으면 dto 안 만든당.
			logger.info("loginPost -> login fail, not member");
			return ;
		}
		
		LoginDto dto = new LoginDto();
		dto.setUserid(dbMember.getmId());
		dto.setUsername(dbMember.getmPw());
		model.addAttribute("loginDto", dto);
		
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET) // 회원가입 GET
	public void joinGET(Model model) throws Exception { 
		logger.info("----- loginGET");
		
		List<DepartmentVO> dlist = loginservice.selectAllDepartment();
		List<TitleVO> tlist = loginservice.selectAllTitle();
		model.addAttribute("dlist", dlist);
		model.addAttribute("tlist", tlist);
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPOST(ManagementVO vo) throws Exception { // 회원가입 POST
		logger.info("----- joinPOST, vo가 ?"+vo.toString());
		
		loginservice.insertManagement(vo);
		
		return "redirect:/auth/login";
	}
	
	
	
	
	
	
	
	
	
}

















