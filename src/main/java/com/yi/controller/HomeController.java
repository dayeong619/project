package com.yi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.WarehousingVO;
import com.yi.service.WarehousingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	WarehousingService wservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("product")
	public void product() {
		
	}
	
	@RequestMapping("release")
	public void release() {
		
	}
	
	@RequestMapping(value="warehousing", method=RequestMethod.GET)
	public void warehousing(Model model) throws Exception {
		logger.info("warehousingGET---");
		List<WarehousingVO> wlist = wservice.selectWarehousingByAll();
		model.addAttribute("wlist", wlist);
		
		
		
	}
	
}
