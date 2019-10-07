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

import com.yi.domain.ManagementVO;
import com.yi.service.ManagementService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class WorkerController {
	
	private static final Logger logger = LoggerFactory.getLogger(WorkerController.class);
	
	@Autowired
	ManagementService mservice;
	
	@RequestMapping(value="worker", method=RequestMethod.GET) 
	public void workerGET(Model model) throws Exception { 
		logger.info("worker야"); 
		
		List<ManagementVO> list = mservice.selectByDno();
		model.addAttribute("list", list);
		
		
		
	}
	
	//이름으로 검색 selectWorkerByWorkerName
	@ResponseBody
	@RequestMapping(value="worker/{mName}", method=RequestMethod.GET)
	public ResponseEntity<List<ManagementVO>> selectWorkerByWorkerName(@PathVariable("mName") String mName){ 
		logger.info("selectWorkerByWorkerName--> 입력한 이름은 "+mName);
		
		ResponseEntity<List<ManagementVO>> entity = null;
		
		try {
			List<ManagementVO> mlist = mservice.selectWorkerByWorkerName(mName);
			entity = new ResponseEntity<List<ManagementVO>>(mlist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	//작업자 등록 insertWorker
	@ResponseBody
	@RequestMapping(value="workerinsert", method=RequestMethod.POST) 
	public ResponseEntity<List<ManagementVO>> workerinsertPOST(@RequestBody ManagementVO vo) throws Exception { 
		
		ResponseEntity<List<ManagementVO>> entity = null;
		logger.info("----- workerinsertPOST");
		
		try {
			mservice.insertWorker(vo);
			List<ManagementVO> mlist = mservice.selectByDno();
			
			entity = new ResponseEntity<>(mlist, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	//번호로 상세보기 selectDetailByMno
	@ResponseBody
	@RequestMapping(value="worker/{mNo}", method=RequestMethod.PUT)
	public ResponseEntity<List<ManagementVO>> deleteWorkerByMno(@PathVariable("mNo") int mNo){ 
		logger.info("deleteWorkerByMno--> 삭제할 번호는 "+mNo);
		
		ResponseEntity<List<ManagementVO>> entity = null;
		
		try {
			 mservice.deleteWorkerByMno(mNo);
			 List<ManagementVO> mlist = mservice.selectByDno();
			entity = new ResponseEntity<List<ManagementVO>>(mlist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	
	
	
}
