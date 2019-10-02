package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yi.domain.GoodsVO;
import com.yi.domain.ProductVO;
import com.yi.domain.WarehousingVO;
import com.yi.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	ProductService pservice;
	
	
	
	
	@RequestMapping(value="product", method=RequestMethod.GET)
	public void product(Model model) throws Exception {
		List<ProductVO> plist = pservice.selectProductByLine();
		logger.info("생산리스트다 자 봐라~~~~"+plist);
		
		/*for (ProductVO productVO : plist) { badness에 bno가 안왕.
			System.out.println(productVO.getbNo());
		}*/
		
		model.addAttribute("plist", plist);                  //생산리스트
		
		List<WarehousingVO> wlist = pservice.selectWarehousing();
		model.addAttribute("wlist", wlist);
		
		List<GoodsVO> glist = pservice.selectByGoods();      //제품리스트
		logger.info("제품리스트 야 -> "+glist);
		model.addAttribute("glist", glist);
		
		List<ProductVO> pmlist = pservice.selectByManagementName();
		logger.info("pmlist를 봅시다"+pmlist);
		model.addAttribute("pmlist", pmlist);
		
	}
	
	@ResponseBody
	@RequestMapping(value="productInsert", method=RequestMethod.POST) 
	public ResponseEntity<List<ProductVO>> productInsertPOST(@RequestBody ProductVO vo) throws Exception { 
		
		ResponseEntity<List<ProductVO>> entity = null;
		logger.info("----- productInsertPOST");
		return entity;
	}
	
	

}
