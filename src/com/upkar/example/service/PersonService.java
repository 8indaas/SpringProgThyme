package com.upkar.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.upkar.example.model.Person;

@Service
public class PersonService {
	public Person generatePerson(Integer id){
		Person p = new Person();
		p.setId(id);
		p.setLocation("Vancouver");
		p.setName("John" + id);
		return p;
	}
	
	public List<Person> generatePersons(int count){
		List<Person> list = new ArrayList<Person>();
		for(int i = 0; i < count; i++){
			Person p = generatePerson(i);
			list.add(p);
		}
		return list ;
	}
}
