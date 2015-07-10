package com.upkar.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.upkar.example.model.Person;
import com.upkar.example.service.PersonService;

@RestController
@RequestMapping("/data")
public class PersonController {
	@Autowired PersonService service;
	
	@RequestMapping("person")
	public Person getPersonDetail(@RequestParam(value="id", required=false, defaultValue="0") Integer id){
		Person p = service.getPersonDetail(id);
		return p;
	}
	
	@RequestMapping("persons")
	public List<Person> getAllPersons(){
		
		List<Person> personList = new ArrayList<Person>();
		for(int i = 0; i< 100; i++){
			Person p = service.getPersonDetail(i);
			personList.add(p);
		}
		return personList;
	}
}
