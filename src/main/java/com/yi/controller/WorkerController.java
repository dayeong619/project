package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		List<ManagementVO> list = mservice.selectByJoinInformation();
		model.addAttribute("list", list);
		
		
	}
	
	
	
	
	
	
}
