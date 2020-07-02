package com.company.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.service.AllbaManageService;

@Controller
@RequestMapping("/allba/*")
public class AllbaManageController {

	@Inject
	AllbaManageService service;

	// 카테고리 등록get
	@RequestMapping(value = "/{sitename}/manage/registercategory", method = RequestMethod.GET)
	public String getRegistercategory(@PathVariable("sitename") String sitename, Model model) {

		List<Map<String, String>> category = service.category(sitename);
		List<Map<String, String>> detail = service.detailcategory(sitename);
		
		model.addAttribute("sitename", sitename);
		model.addAttribute("category", category);
		model.addAttribute("detail", detail);

		return "/allba/manage/registercategory";
	}

	// 카테고리 등록post
	@RequestMapping(value = "/{sitename}/manage/registercategory", method = RequestMethod.POST)
	public String postRegistercategory(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) {
		boolean flag = false;
		List<Map<String, String>> category = service.category(sitename);
		List<Map<String, String>> detail = service.detailcategory(sitename);
		for(int i = 1; i < category.size()+1; i++) {
			
			if(req.getParameter("categoryname"+i).equals("")) {
				continue;
			}
			else {
				flag = true;
				service.registercategory(sitename, req.getParameter("categoryname"+i), req.getParameter("depth"+i),
						req.getParameter("parent"+i));
				break;

			}
		}
		
		if(!flag) {
			service.registercategory(sitename, req.getParameter("categoryname"), req.getParameter("depth"),
					req.getParameter("parent"));
		}

		return "redirect:/allba/{sitename}/manage/registercategory";
	}

	// 필드 등록get
	@RequestMapping(value = "/{sitename}/manage/registerfield", method = RequestMethod.GET)
	public String getRegisterfield(@PathVariable("sitename") String sitename, Model model) {
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		// List<Map<String, String>> selectlist = service.selectlist(sitename);

		model.addAttribute("sitename", sitename);
		model.addAttribute("fieldlist", fieldlist);

		return "/allba/manage/registerfield";
	}

	// 필드 등록post
	@RequestMapping(value = "/{sitename}/manage/registerfield", method = RequestMethod.POST)
	public String postRegisterfield(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) {
		
		service.registerfield(sitename, req.getParameter("fieldname"), req.getParameter("depth"), req.getParameter("fieldtype"),
				req.getParameter("parent"));
		
		return "redirect:/allba/{sitename}/manage/registerfield";
	}

}
