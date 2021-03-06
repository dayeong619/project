package com.yi.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

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
import com.yi.domain.LineVO;
import com.yi.domain.ManagementVO;
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
	
	
	
	
	//selectJoinProductByPno 수정 하려는거
	@ResponseBody
	@RequestMapping(value="product/modifypNo/{pNo}", method=RequestMethod.GET) 
	public ResponseEntity<List<ProductVO>> selectJoinProductByPno(@PathVariable("pNo") int pNo) throws Exception { 
		ResponseEntity<List<ProductVO>> entity = null;
		logger.info("----- selectJoinProductByPno");
		
		try {
			logger.info("수정했음-");
			
			List<ProductVO> plist = pservice.selectJoinProductByPno(pNo);
			logger.info("리스트를 뿌리자->"+plist);
			entity = new ResponseEntity<>(plist, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	
	
	
	@RequestMapping(value="product", method=RequestMethod.GET)
	public void product(Model model) throws Exception {
	
		List<LineVO> Llist = pservice.selectByline();
		//logger.info("라인리스트~~~~"+Llist);
		model.addAttribute("Llist", Llist);                    //라인리스트
		
		List<WarehousingVO> wList = pservice.selectWGByJoin();
		//logger.info("생산번호,입고번호리스트~~~~"+wList);
		model.addAttribute("wList", wList);                    //입고번호리스트
		
		List<ManagementVO> mlist = pservice.selectByJoinInformation();
		logger.info("사람이름만 가져올꺼야"+mlist);
		model.addAttribute("mlist", mlist);						//사람이름 보여줄 리스트
		
		List<ProductVO> plist = pservice.selectMnoWnoPqyByProduct();
		logger.info("리스트를 뿌리자->"+plist);
		model.addAttribute("plist", plist);
	
		Set<Date> gubun = new TreeSet<>();
		for(ProductVO p : plist) {
			gubun.add(p.getpWorkday());
		}
		
		List<Date> gu = new ArrayList<Date>(gubun);
		
		model.addAttribute("gu", gu);
		for(Date d: gu) {
			System.out.printf("%tF%n", d);
		}

	}
	
	@ResponseBody
	@RequestMapping(value="product/ListAll", method=RequestMethod.GET)
	public ResponseEntity<List<ProductVO>> productListAll() throws Exception {		
		
		ResponseEntity<List<ProductVO>> entity = null;
		logger.info("----- productListAll");
		
		try {
			List<ProductVO> plist = pservice.selectMnoWnoPqyByProduct();
			logger.info("리스트를 뿌리자->"+plist);
			entity = new ResponseEntity<>(plist, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;		

	}
	
	
	// 해야됨.
	@RequestMapping(value="productSearch", method=RequestMethod.GET)
	public void productSearch(Model model) throws Exception {
	
		List<ProductVO> plist = pservice.selectProductByLine();
		logger.info("생산리스트다 자 봐라~~~~"+plist);
		model.addAttribute("plist", plist);                  //생산리스트
		
		List<WarehousingVO> wlist = pservice.selectWarehousing();
		model.addAttribute("wlist", wlist);                  //입고리스트
		
		List<GoodsVO> glist = pservice.selectByGoods();      //제품리스트
		logger.info("제품리스트 야 -> "+glist);
		model.addAttribute("glist", glist);
		
		List<ProductVO> pmlist = pservice.selectByManagementName(); //생산자이름리스트
		logger.info("pmlist를 봅시다"+pmlist);
		model.addAttribute("pmlist", pmlist);
	}
	
	@ResponseBody
	@RequestMapping(value="product", method=RequestMethod.POST) 
	public ResponseEntity<List<ProductVO>> productInsertPOST(@RequestBody ProductVO vo) throws Exception { 
		ResponseEntity<List<ProductVO>> entity = null;
		logger.info("----- productInsertPOST");
		logger.info("insert내용은 ->"+vo);
		
		try {
			pservice.insertProduct(vo);
			logger.info("들어갔어! 들어갔어!");
			List<ProductVO> plist = pservice.selectMnoWnoPqyByProduct();
			entity = new ResponseEntity<>(plist, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

}







