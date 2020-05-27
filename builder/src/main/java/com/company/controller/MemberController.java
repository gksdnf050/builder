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

import com.company.dto.MemberDTO;
import com.company.service.MemberService;

@Controller
public class MemberController {

	@Inject
	MemberService service;

	// 로그인 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(Model model) {

		return "/company/member/login";
	}

	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(MemberDTO dto, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		HttpSession session = req.getSession();

		MemberDTO login = service.login(dto);

		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login";
		} else {
			session.setAttribute("member", login);
		}

		return "redirect:/";
	}

	// 로그아웃 get
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}

	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {

		return "company/member/register";
	}

	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberDTO dto) throws Exception {

		service.register(dto);
		return "redirect:/login";
	}

	// 회원정보 수정get
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String getModify(HttpServletRequest req, Model model) throws Exception {

		HttpSession session = req.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("member");
		MemberDTO mo = service.getModify(m.getUserno());

		model.addAttribute("mo", mo);
		return "company/member/modify";
	}

	// 회원정보 수정 post
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(MemberDTO dto) throws Exception {

		service.postModify(dto);
		return "redirect:/";
	}

}
