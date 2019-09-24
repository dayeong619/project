package com.yi.controller;

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
	
	
	
	/*@RequestMapping(value="warehousingInsert", method=RequestMethod.GET) 
	public ResponseEntity<List<GoodsVO>> warehousingInsertGET() throws Exception { 
		logger.info("----- warehousingInsertGET 제품리스트 보낼꺼야");
		
		ResponseEntity<List<GoodsVO>> entity = null;
		
		try {
			List<GoodsVO> glist = gservice.selectByGoods();
			entity = new ResponseEntity<List<GoodsVO>>(glist, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}*/
	
	@RequestMapping(value="warehousing", method=RequestMethod.POST) 
	public ResponseEntity<String> warehousingInsertPOST(@RequestBody WarehousingVO wvo) { 
		ResponseEntity<String> entity = null;
		logger.info("----- warehousingInsertPOST");
		logger.info("--- wvo, "+wvo );
		
		try {
			wservice.insertWarehousing(wvo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value="warehousing/{wNo}", method=RequestMethod.PUT) 
	public ResponseEntity<String> warehousingdeletePOST(@PathVariable("wNo") int wNo) { 
		ResponseEntity<String> entity = null;
		logger.info("----- warehousingdeletePOST");
		logger.info("--- wNo는 "+wNo );
		
		try {
			wservice.deleteWarehousing(wNo);
			entity = new ResponseEntity<>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>("fail", HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	/*@RequestMapping(value="warehousing/do", method=RequestMethod.GET)
	public ResponseEntity<List<WarehousingVO>> listAllWarehousingGET(){
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
	}*/
}

















