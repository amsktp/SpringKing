package com.edu.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

//	org.slf4j.Logger
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
	
	@RequestMapping(value="home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("특이하네?");
		logger.info("Welcome home! The client locale is {}.", locale);
		
//		level이 debug 이하여야만 출력된다.
//		logger.debug("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		
		DateFormat dateFormat = 
			DateFormat.getDateTimeInstance(DateFormat.LONG
				, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		String name = "이찬양   이건 GET입니다";
		
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
