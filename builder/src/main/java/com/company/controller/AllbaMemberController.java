package com.company.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.dto.AllbaMemberDTO;
import com.company.service.AllbaMemberService;

@Controller
@RequestMapping("/{c}/*")
public class AllbaMemberController {

	@Inject
	AllbaMemberService service;

	// 로그인 get
	@RequestMapping(value = "/{sitename}/login", method = RequestMethod.GET)
	public String getLogin(@PathVariable("sitename") String sitename, Model model) {

		model.addAttribute("sitename", sitename);
		return "/allba/member/login";
	}

	// 로그인 post
	@RequestMapping(value = "/{sitename}/login", method = RequestMethod.POST)
	public String postLogin(@PathVariable("sitename") String sitename, AllbaMemberDTO dto, HttpServletRequest req,
			RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();

		AllbaMemberDTO login = service.login(sitename, dto);

		if (login == null) {
			session.setAttribute("allbamember", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/allba/{sitename}/login";
		} else {
			session.setAttribute("allbamember", login);
		}

		return "redirect:/allba/{sitename}";
	}

	// 로그아웃 get
	@RequestMapping(value = "/{sitename}/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {

		session.invalidate();
		return "redirect:/allba/{sitename}";
	}

	// 회원가입 get
	@RequestMapping(value = "/{sitename}/register", method = RequestMethod.GET)
	public String getRegister(@PathVariable("sitename") String sitename, Model model) throws Exception {

		model.addAttribute("sitename", sitename);
		return "allba/member/register";
	}

	// 회원가입 post
	@RequestMapping(value = "/{sitename}/register", method = RequestMethod.POST)
	public String postRegister(@PathVariable("sitename") String sitename, AllbaMemberDTO dto) throws Exception {

		service.register(sitename, dto);
		return "redirect:/allba/{sitename}/login";
	}

	// 회원정보 수정get
	@RequestMapping(value = "/{sitename}/modify", method = RequestMethod.GET)
	public String getModify(@PathVariable("sitename") String sitename, HttpServletRequest req, Model model)
			throws Exception {

		HttpSession session = req.getSession();
		AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");
		AllbaMemberDTO mo = service.getModify(sitename, m.getUserno());

		model.addAttribute("sitename", sitename);
		model.addAttribute("mo", mo);
		return "allba/member/modify";
	}

	// 회원정보 수정 post
	@RequestMapping(value = "/{sitename}/modify", method = RequestMethod.POST)
	public String postModify(@PathVariable("sitename") String sitename, AllbaMemberDTO dto) throws Exception {

		service.postModify(sitename, dto);
		return "redirect:/allba/{sitename}/login";
	}
}
