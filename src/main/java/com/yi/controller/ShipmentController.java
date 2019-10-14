package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.ShipmentVO;
import com.yi.service.ShipmentService;


@Controller
public class ShipmentController {
	
	private static final Logger logger = LoggerFactory.getLogger(ShipmentController.class);
	
	@Autowired
	ShipmentService service;
	
	@RequestMapping(value = "shipment", method = RequestMethod.GET)
	public void shipmentGET(Model model) throws Exception {
		logger.info("goods");
		
		List<ShipmentVO> slist = service.selectShipment();
		logger.info("slist는->" +slist);
		model.addAttribute("slist", slist);
		
		
	}
	
	
	
	
	
}
