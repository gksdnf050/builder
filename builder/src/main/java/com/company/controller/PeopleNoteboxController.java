package com.company.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.company.dto.PeopleMemberDTO;
import com.company.dto.PeopleNoteboxDTO;
import com.company.service.PeopleNoteboxService;

@Controller
@RequestMapping("/people/*")
public class PeopleNoteboxController {

	@Inject
	PeopleNoteboxService service;

	//지원하기 get
	@RequestMapping(value = "/{sitename}/notebox/apply", method = RequestMethod.GET)
	public String getapply(@PathVariable("sitename") String sitename, HttpServletRequest req, Model model,
			@RequestParam("boardid") int boardid, @RequestParam("touserid") String touserid) throws Exception {

		model.addAttribute("boardid", boardid);
		model.addAttribute("touserid", touserid);
		return "people/notebox/apply";
	}

	//지원하기 post
	@RequestMapping(value = "/{sitename}/notebox/apply", method = RequestMethod.POST)
	public String postapply(@PathVariable("sitename") String sitename, PeopleNoteboxDTO dto, MultipartFile file)
			throws Exception {

		service.apply(sitename, dto);

		return "people/notebox/applycomplete";
	}
	//쪽지함
		@RequestMapping(value = "/{sitename}/notebox", method = RequestMethod.GET)
		public String notebox(@PathVariable("sitename") String sitename, Model model) throws Exception {

			
			model.addAttribute("sitename", sitename);
			return "people/notebox/notebox";
		}
		
	//받은쪽지함
	@RequestMapping(value = "/{sitename}/notebox/receivenotebox", method = RequestMethod.GET)
	public String receivenotebox(@PathVariable("sitename") String sitename, HttpServletRequest req, Model model) throws Exception {

		HttpSession session = req.getSession();
		PeopleMemberDTO m = (PeopleMemberDTO) session.getAttribute("peoplemember");
		List<PeopleNoteboxDTO> dto = service.receivenotebox(sitename, m.getUserid());
		
		model.addAttribute("dto", dto);
		return "people/notebox/receivenotebox";
	}
	
	//쪽지 보기
		@RequestMapping(value = "/{sitename}/notebox/view", method = RequestMethod.GET)
		public String viewnote(@PathVariable("sitename") String sitename, @RequestParam("noteboxid") int noteboxid, Model model) throws Exception {

			
			PeopleNoteboxDTO dto = service.viewnote(sitename, noteboxid);
			model.addAttribute("dto", dto);
			
			return "people/notebox/view";
		}
		//쪽지 삭제
		@RequestMapping(value = "/{sitename}/notebox/delete", method = RequestMethod.GET)
		public String deletenote(@PathVariable("sitename") String sitename, @RequestParam("noteboxid") int noteboxid) throws Exception {

			
			service.deletenote(sitename, noteboxid);
			
			return "people/notebox/notebox";
		}
		
}
