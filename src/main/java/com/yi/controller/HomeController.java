package com.yi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.domain.GoodsVO;
import com.yi.domain.LoginDto;
import com.yi.domain.ManagementVO;
import com.yi.domain.ProductVO;
import com.yi.domain.ShipmentVO;
import com.yi.domain.WarehousingVO;
import com.yi.service.GoodsService;
import com.yi.service.ManagementService;
import com.yi.service.ProductService;
import com.yi.service.ShipmentService;
import com.yi.service.WarehousingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	WarehousingService wservice;
	
	@Autowired
	ManagementService mservice;
	
	@Autowired
	ProductService pservice;
	
	@Autowired
	ShipmentService sservice;
	
	@Autowired
	GoodsService gservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() throws Exception {
		logger.info("Welcome home! ");
		
		return "redirect:/auth/login";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypage(Model model, HttpServletRequest request) throws Exception {
		logger.info("Welcome home! ");
		/* Locale locale, 
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );*/

		List<WarehousingVO> wlist = wservice.selectWarehousingByAll(); 
		logger.info(wlist.toString());
		model.addAttribute("wlist", wlist);                                 //입고리스트 보낸다

		HttpSession session = request.getSession();
		LoginDto ld = (LoginDto) session.getAttribute("Auth");
		logger.info("mId는  "+ld.getUserid());
		String mId = ld.getUserid();
		List<ManagementVO> mlist = mservice.selectMyInformationById(mId);
		logger.info("리스트 나오냐?"+mlist);
		model.addAttribute("mlist", mlist);                                //사원리스트 보낸다
		 
		List<ProductVO> plist = pservice.selectProductByAll();
		logger.info("생산리스트다 자 봐라~~~~"+plist);
		model.addAttribute("plist", plist);                              //생산리스트 보낸다
		
		List<ShipmentVO> slist = sservice.selectShipmentByAll();
		logger.info("출고리스트 나가신다 길을 비켜랏"+slist.toString());
		System.out.println(slist.toString());
		model.addAttribute("slist", slist);
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="mypage/modify/{mNo}", method=RequestMethod.PUT) 
	public ResponseEntity<List<ManagementVO>> modifyByMnoPUT(@PathVariable("mNo") int mNo,@RequestBody ManagementVO vo) { 
		ResponseEntity<List<ManagementVO>> entity = null;
		logger.info("----- ManagementVO는"+vo);
		logger.info("--- mNo는 "+mNo );
		vo.setmNo(mNo);
		try {
			mservice.modifyManagementByMypage(vo);
			List<ManagementVO> mlist = mservice.selectByJoinInformation();
			entity = new ResponseEntity<>(mlist, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	
}
