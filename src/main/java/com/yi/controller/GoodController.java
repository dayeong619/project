package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.service.GoodsService;

@RequestMapping("/goods")
@Controller
public class GoodController {

	private static final Logger logger = LoggerFactory.getLogger(GoodController.class);
	
	@Autowired
	GoodsService service;
	
	@RequestMapping(value="goodslist", method=RequestMethod.GET) 
	public void goodslistGET() { 
		logger.info("----- goodslistGET");
		
		
		
	}
	
	/*@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPOST(ManagementVO mvo, Model model) throws Exception { 
		
	}
	
	*/
	
	
	
	
	
	
}

















