package com.yi.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShipmentController {
	
	private static final Logger logger = LoggerFactory.getLogger(ShipmentController.class);
	
	@Autowired
	GoodsService gservice;
	
	@RequestMapping(value = "shipment", method = RequestMethod.GET)
	public void shipmentGET(Model model, HttpServletRequest request) throws Exception {
		logger.info("goods");
		
	}
	
}
