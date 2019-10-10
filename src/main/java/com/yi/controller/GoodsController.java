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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		logger.info("goodsGET");
		
		List<GoodsVO> glist = gservice.selectByGoods();
		logger.info("glist ->"+glist);
		model.addAttribute("glist", glist);
	}
	
	@ResponseBody
	@RequestMapping(value="goods/{gNo}", method=RequestMethod.PUT) 
	public ResponseEntity<List<GoodsVO>> goodsdeletePOST(@PathVariable("gNo") int gNo) { 
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
	
	@ResponseBody
	@RequestMapping(value="goodsinsert", method=RequestMethod.POST) 
	public ResponseEntity<List<GoodsVO>> goodsInsertPOST(@RequestBody GoodsVO vo) throws Exception { 
		ResponseEntity<List<GoodsVO>> entity = null;
		logger.info("----- goodsInsertPOST");
		logger.info("insert할 내용은 ->"+vo);
		try {
			gservice.insertGood(vo);
			List<GoodsVO> list = gservice.selectByGoods();
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="goods/{gNo}", method=RequestMethod.GET) 
	public ResponseEntity<List<GoodsVO>> selectgoodByGnoPOST(@PathVariable("gNo") int gNo) { 
		ResponseEntity<List<GoodsVO>> entity = null;
		logger.info("----- selectgoodByGnoPOST");
		logger.info("--- gNo는 "+gNo );
		
		try {
			List<GoodsVO> list = gservice.selectByGno(gNo);
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="goods/update/{gNo}", method=RequestMethod.PUT) 
	public ResponseEntity<List<GoodsVO>> modifyByGnoPUT(@PathVariable("gNo") int gNo, @RequestBody GoodsVO vo) { 
		ResponseEntity<List<GoodsVO>> entity = null;
		logger.info("----- warehousingdeletePOST vo는"+vo);
		logger.info("--- gNo는 "+gNo );
		vo.setgNo(gNo);
		try {
			logger.info(vo.getgClient());
			logger.info(vo.getgLocation());
			logger.info(vo.getgName());
			gservice.modifyByGno(vo);
			List<GoodsVO> list = gservice.selectByGoods();
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
