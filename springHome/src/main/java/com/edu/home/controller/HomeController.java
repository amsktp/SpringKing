package com.edu.home.controller;

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

import com.edu.home.model.HomeDto;
import com.edu.home.service.HomeService;

@Controller
public class HomeController {

//	org.slf4j.Logger
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeService;
		
	
	@RequestMapping(value="home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("특이하네?");
		logger.info("HOMECONTROLLER 입니다.", locale);
		
//		level이 debug 이하여야만 출력된다.
//		logger.debug("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		
		DateFormat dateFormat = 
			DateFormat.getDateTimeInstance(DateFormat.LONG
				, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		String name = "이찬양   이건 GET입니다 HOME.DO입니다";
		
		logger.info("에러 전");
		
		
		List<HomeDto> homeList = homeService.homeSelectList();

		logger.info("에러 후");
		model.addAttribute("homeList", homeList);
		
		model.addAttribute("name", name);
		
		return "home";
		
	}

	@RequestMapping(value="home.do", method = RequestMethod.POST)
	public String postHome(Locale locale, Model model) {
		
		String name = "이건 POST home 입니다";
		
		model.addAttribute("name", name);
		
		return "home";
		
	}
	
	
}
