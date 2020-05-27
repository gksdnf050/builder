package com.company.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/people/*")
public class PeopleController {
	
	
	//people사이트 홈
	@RequestMapping(value = "/{sitename}", method = RequestMethod.GET)
	public String home(@PathVariable("sitename")String sitename, Model model) {
		model.addAttribute("sitename", sitename);
		
		return "people/home";
	}
	
} 

