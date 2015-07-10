package com.upkar.example.service;

import org.springframework.stereotype.Service;

import com.upkar.example.model.Person;

@Service
public class PersonService {
	public Person getPersonDetail(Integer id){
		Person p = new Person();
		p.setId(id);
		p.setLocation("Vancouver");
		p.setName("John");
		return p;
	}
}
