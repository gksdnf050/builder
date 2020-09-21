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

import com.company.service.AllbaBoardService;
import com.company.service.AllbaManageService;

@Controller
@RequestMapping("/{c}/*")
public class AllbaController {

	@Inject
	AllbaManageService service;

	@Inject
	AllbaBoardService service2;

	// allba사이트 홈
	@RequestMapping(value = "/{sitename}", method = RequestMethod.GET)
	public String home(@PathVariable("c") String c, @PathVariable("sitename") String sitename, Model model,
			HttpServletRequest req) {
		model.addAttribute("sitename", sitename);
		List<Map<String, String>> category = service.category(sitename);
		List<Map<String, String>> detail = service.detailcategory(sitename);
		String logo = service.getlogo(sitename);
		List list = service.listbanner(sitename);
		List<Map<String, String>> dto = service2.list(sitename, null, null, c, 0);

		model.addAttribute("list", list);
		model.addAttribute("dto", dto);

		HttpSession session = req.getSession();
		if (session.getAttribute("c") != null) {
			if (!session.getAttribute("c").equals(c)) {
				session.setAttribute("allbamember", null);
			}
		}
		session.setAttribute("c", c);
		session.setAttribute("category", category);
		session.setAttribute("detail", detail);
		session.setAttribute("logo", logo);
		if(c.equals("motel")) {
			return "allba/motelHome";
		}else if(c.equals("clothes")) {
			return "allba/clothesHome";
		}
		return "allba/home";
	}

	// test
	@RequestMapping(value = "/{sitename}/test", method = RequestMethod.GET)
	public String test(@PathVariable("sitename") String sitename, Model model) {
		model.addAttribute("sitename", sitename);

		return "allba/test";
	}

}
