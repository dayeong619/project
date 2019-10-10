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

import com.yi.domain.DepartmentVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;
import com.yi.service.ManagementService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(ManagementController.class);
	
	@Autowired
	ManagementService mservice;
	
	
	
	@RequestMapping(value="management", method=RequestMethod.GET)          //사원관리 화면보여주는 메서드
	public void managementGET(Model model) throws Exception { 
		logger.info("사원관리야ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ"); 
		
		List<ManagementVO> list = mservice.selectByJoinInformation();
		logger.info("사원리스트->"+list);
		model.addAttribute("list", list);
		
		List<TitleVO> tlist = mservice.selectAllTitle();
		model.addAttribute("tlist", tlist);
		
		List<DepartmentVO> dlist = mservice.selectAllDepartment();
		model.addAttribute("dlist", dlist);
	}
	
	@ResponseBody
	@RequestMapping(value="management/modify/{mNo}", method=RequestMethod.PUT)   //사원관리 수정하는 메서드
	public ResponseEntity<List<ManagementVO>> managementWorkerByMno(@PathVariable("mNo") int mNo, @RequestBody ManagementVO vo){ 
		logger.info("modifyWorkerByMno--> 수정할 번호는 "+mNo);
		logger.info("vo를 보여줄게"+vo.toString());
		ResponseEntity<List<ManagementVO>> entity = null;
		
		try {
			 mservice.modifyEmployee(vo);
			 List<ManagementVO> mlist = mservice.selectByJoinInformation();
			 
			entity = new ResponseEntity<List<ManagementVO>>(mlist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="management/{dNo}", method=RequestMethod.GET)
	public ResponseEntity<List<ManagementVO>> selectThreeJoinByDno(@PathVariable("dNo") int dNo){ 
		logger.info("selectThreeJoinByDno--> 찾으려는 부서번호 "+dNo);
		
		ResponseEntity<List<ManagementVO>> entity = null;
		
		try {
			List<ManagementVO> mlist = mservice.selectThreeJoinByDno(dNo);
			entity = new ResponseEntity<List<ManagementVO>>(mlist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	
	
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
	
	//작업자 삭제
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
	
	//작업자 수정
	@ResponseBody
	@RequestMapping(value="worker/modify/{mNo}", method=RequestMethod.PUT)
	public ResponseEntity<List<ManagementVO>> modifyWorkerByMno(@PathVariable("mNo") int mNo, @RequestBody ManagementVO vo){ 
		logger.info("modifyWorkerByMno--> 수정할 번호는 "+mNo);
		logger.info("vo를 보여줄게"+vo.toString());
		ResponseEntity<List<ManagementVO>> entity = null;
		vo.setmNo(mNo);
		
		try {
			 mservice.modifyWorkerByMno(vo);
			 List<ManagementVO> mlist = mservice.selectByDno();
			entity = new ResponseEntity<List<ManagementVO>>(mlist, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}
	
	
	
	/*@ResponseBody
	@RequestMapping(value="management/modify/{mNo}", method=RequestMethod.PUT)
	public ResponseEntity<Map<String,Object>> managementWorkerByMno(@PathVariable("mNo") int mNo, @RequestBody ManagementVO vo){ 
		logger.info("modifyWorkerByMno--> 수정할 번호는 "+mNo);
		logger.info("vo를 보여줄게"+vo.toString());
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			mservice.modifyEmployee(vo);
			List<ManagementVO> mlist = mservice.selectByJoinInformation();
			List<TitleVO> tlist = mservice.selectAllTitle();
				
			List<DepartmentVO> dlist = mservice.selectAllDepartment();
			
			Map<String, Object> map = new HashMap<>();
			map.put("tlist", tlist);
			map.put("dlist", dlist);
			map.put("mlist", mlist);
			
			entity = new ResponseEntity<>(map, HttpStatus.OK); //200
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); //400 error
		}
		return entity;
	}*/
	
	
}





















