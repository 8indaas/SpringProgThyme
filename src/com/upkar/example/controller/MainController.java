package com.upkar.example.controller;

import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.upkar.example.model.Person;
import com.upkar.example.service.PersonService;


@Controller
public class MainController {
	
	private static final Logger logger = Logger.getLogger(MainController.class.getSimpleName());
	
	@Autowired PersonService service;
	
	@Autowired MessageSource messageSource;
	
	@RequestMapping("/")
	public ModelAndView getMain(Locale locale){
		logger.severe("Welcome home! The client locale is ." + locale);
		
		String message = messageSource.getMessage("fundSourceTblHdr", null, "Default",null);
		logger.severe("message: " + message);
		
		List<Person> persons = service.generatePersons(1000);
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("persons", persons);
		return mv;
	}
}
