package com.company.controller;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.service.AllbaManageService;



@Controller
@RequestMapping("/allba/*")
public class AllbaController {
	 
	@Inject
	AllbaManageService service;
	//allba사이트 홈
	@RequestMapping(value = "/{sitename}", method = RequestMethod.GET)
	public String home(@PathVariable("sitename")String sitename, Model model, HttpServletRequest req) {
		model.addAttribute("sitename", sitename);
		List<Map<String,String>> category = service.category(sitename);
		List<Map<String,String>> detail = service.detailcategory(sitename);
		HttpSession session = req.getSession();
		session.setAttribute("category", category);
		session.setAttribute("detail", detail);
		
		return "allba/home";
	}
	
	//test
		@RequestMapping(value = "/{sitename}/test", method = RequestMethod.GET)
		public String test(@PathVariable("sitename")String sitename, Model model) {
			model.addAttribute("sitename", sitename);
			
			return "allba/test";
		}
	
} 
