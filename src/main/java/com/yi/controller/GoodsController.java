package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.GoodsVO;
import com.yi.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class GoodsController {
	
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	@Autowired
	GoodsService gservice;
	
	@RequestMapping(value="goods", method=RequestMethod.GET)
	public void goodsGET(Model model) throws Exception {
		logger.info("goodsGET페이지");
		
		List<GoodsVO> glist = gservice.selectByGoods();
		logger.info("glist는 ->"+glist);
		model.addAttribute("glist", glist);
	}
	
}
