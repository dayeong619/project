package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.yi.domain.WarehousingVO;
import com.yi.service.GoodsService;
import com.yi.service.WarehousingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class WarehousingController {
	
	private static final Logger logger = LoggerFactory.getLogger(WarehousingController.class);
	
	@Autowired
	WarehousingService wservice;
	
	@Autowired
	GoodsService gservice;
	
	
	
	
	@RequestMapping(value="warehousing", method=RequestMethod.GET)
	public void warehousing(Model model) throws Exception {
		logger.info("warehousingGET---");
		List<WarehousingVO> wlist = wservice.selectWarehousingByAll(); //입고리스트
		logger.info("입리->"+wlist);
		model.addAttribute("wlist", wlist);
		
		List<GoodsVO> glist = gservice.selectByGoods();      //제품리스트
//		logger.info("제품리스트 야 -> "+glist);
		model.addAttribute("glist", glist);
		
	}
	
	@ResponseBody
	@RequestMapping(value="warehousing", method=RequestMethod.POST) 
	public ResponseEntity<Map<String, Object>> warehousingInsertPOST(@RequestBody WarehousingVO wvo) throws Exception { 
		
		ResponseEntity<Map<String, Object>> entity = null;
		logger.info("----- warehousingInsertPOST");
		logger.info("--- wvo, "+wvo.toString() );
		
		GoodsVO vo = gservice.selectAll(wvo.getgNo());
		wvo.setgNo(vo); 
		
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
	
	@ResponseBody
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
	
	@ResponseBody
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
	
	@ResponseBody
	@RequestMapping(value="warehousing/{gNo}", method=RequestMethod.GET)
	public ResponseEntity<List<WarehousingVO>> selectWarehousingByGNoGET(@PathVariable("gNo") int gNo){ 
		logger.info("selectWarehousingByGNoGET--> ");
		ResponseEntity<List<WarehousingVO>> entity = null;
		
		try {
			List<WarehousingVO> gNolist = wservice.selectWarehousingByGNo(gNo); 
			entity = new ResponseEntity<List<WarehousingVO>>(gNolist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="warehousing/{startday}/{endday}", method=RequestMethod.GET)
	public ResponseEntity<List<WarehousingVO>> selectWhByWDayGET(@PathVariable("startday") String startday, @PathVariable("endday") String endday){ 
		logger.info("selectWhByWDayGET--> ");
		logger.info("startday는 "+startday+"endday는 "+endday);
		
		ResponseEntity<List<WarehousingVO>> entity = null;
		
		try {
			List<WarehousingVO> gDatelist = wservice.selectWhByWDay(startday, endday);
			entity = new ResponseEntity<List<WarehousingVO>>(gDatelist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
//	차트 화면으로 갈거야
	@RequestMapping(value="warehousingChart", method=RequestMethod.GET)
	public void warehousingChartGET(Model model) throws Exception {
		logger.info("warehousingChartGET---");
		List<WarehousingVO> lists = wservice.ChartWarehousingByGno(); //select 해야 될듯
		logger.info("리스트 여기 "+lists.toString());
        model.addAttribute("lists", lists);
	}
	
/*//	차트 화면에 아작스
	 @RequestMapping(value="warehousingChart/ch", method=RequestMethod.POST)
	    public List<GoogleChartDto> chartData() {
	        List<GoogleChartDto> lists = new ArrayList<GoogleChartDto>(); //select 해야 될듯
	        String[] itme = {"test1", "test2", "test3", "test4", "test5", "test6"};
	        Random ran = new Random();
	        for (int i = 0; i < 6; i++) {
	            lists.add(new GoogleChartDto(itme[i], ran.nextInt(50)));
	        }
	        return lists;
	    }*/
	
	@ResponseBody
	@RequestMapping(value="warehousing/W/{wNo}", method=RequestMethod.GET)
	public ResponseEntity<List<WarehousingVO>> selectByWno(@PathVariable("wNo") int wNo){ 
		logger.info("selectByWnoGET--> ");
		ResponseEntity<List<WarehousingVO>> entity = null;
		
		try {
			List<WarehousingVO> list = wservice.selectByWno(wNo);
			entity = new ResponseEntity<List<WarehousingVO>>(list, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	
	
	
	
	
}
