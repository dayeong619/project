package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.domain.GoodsVO;
import com.yi.domain.WarehousingVO;
import com.yi.service.GoodsService;
import com.yi.service.WarehousingService;

@RestController
public class JsonController {

	private static final Logger logger = LoggerFactory.getLogger(JsonController.class);
	
	@Autowired
	WarehousingService wservice;
	
	@Autowired
	GoodsService gservice;
	
	
	
	@RequestMapping(value="warehousing", method=RequestMethod.POST) 
	public ResponseEntity<Map<String, Object>> warehousingInsertPOST(@RequestBody WarehousingVO wvo) throws Exception { 
		
		ResponseEntity<Map<String, Object>> entity = null;
		logger.info("----- warehousingInsertPOST");
		logger.info("--- wvo, "+wvo.toString() );
		
		GoodsVO vo = gservice.selectAll(wvo.getgNo());
		wvo.setgNo(vo); //
		
		
		try {
			wservice.insertWarehousing(wvo);
			List<WarehousingVO> list = wservice.selectWarehousingByAll();
			List<GoodsVO> glist = gservice.selectByGoods();
			
			Map<String, Object> map = new HashMap<>();
			map.put("list", list);
			map.put("glist", glist);
			
			entity = new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value="warehousing/{wNo}", method=RequestMethod.PUT) 
	public ResponseEntity<List<WarehousingVO>> warehousingdeletePOST(@PathVariable("wNo") int wNo) { 
		ResponseEntity<List<WarehousingVO>> entity = null;
		logger.info("----- warehousingdeletePOST");
		logger.info("--- wNo는 "+wNo );
		
		try {
			wservice.deleteWarehousing(wNo);
			List<WarehousingVO> list = wservice.selectWarehousingByAll();
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="warehousing/do", method=RequestMethod.GET)
	public ResponseEntity<List<WarehousingVO>> listAllWarehousingGET(){ //입고리스트, 제품리스트 가지고 오면됨
		logger.info("listAllWarehousingGETㅡ> ");
		
		ResponseEntity<List<WarehousingVO>> entity = null;
		
		try {
			List<WarehousingVO> list = wservice.selectWarehousingByAll();
			entity = new ResponseEntity<List<WarehousingVO>>(list, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		
		return entity;
	}
}

















