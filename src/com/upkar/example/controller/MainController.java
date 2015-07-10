package com.upkar.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.upkar.example.model.Person;
import com.upkar.example.service.PersonService;


@Controller
public class MainController {
	
	@Autowired PersonService service;
	
	@RequestMapping("/")
	public ModelAndView getMain(){
		List<Person> persons = service.generatePersons(100);
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("persons", persons);
		return mv;
	}
}
