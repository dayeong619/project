package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.domain.GoodsVO;
import com.yi.domain.WarehousingVO;
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
		logger.info("goodsGET");
		
		List<GoodsVO> glist = gservice.selectByGoods();
		logger.info("glist ->"+glist);
		model.addAttribute("glist", glist);
	}
	
	@ResponseBody
	@RequestMapping(value="goods/{gNo}", method=RequestMethod.PUT) 
	public ResponseEntity<List<GoodsVO>> warehousingdeletePOST(@PathVariable("gNo") int gNo) { 
		ResponseEntity<List<GoodsVO>> entity = null;
		logger.info("----- warehousingdeletePOST");
		logger.info("--- gNo는 "+gNo );
		
		try {
			gservice.deleteGood(gNo);
			List<GoodsVO> list = gservice.selectByGoods();
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
