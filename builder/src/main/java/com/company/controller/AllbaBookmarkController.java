package com.company.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.company.dto.AllbaBookmarkDTO;
import com.company.dto.AllbaMemberDTO;
import com.company.service.AllbaBookmarkService;

@Controller
@RequestMapping("/allba/*")
public class AllbaBookmarkController {
	@Inject
	AllbaBookmarkService service;
	
	// 즐겨찾기 목록
		@RequestMapping(value = "/{sitename}/bookmark", method = RequestMethod.GET)
		public String list(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) throws Exception {
			HttpSession session = req.getSession();
			AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");
			
			List<AllbaBookmarkDTO> bookmarkdto = service.getbookmark(sitename,m.getUserid());
			List<Map<String,String>> dto = new ArrayList<Map<String,String>>();
			for(AllbaBookmarkDTO i: bookmarkdto) {
				dto.add(service.list(sitename, i.getBoardid()));
			}
			model.addAttribute("bookmarkdto", bookmarkdto);
			model.addAttribute("sitename", sitename);
			model.addAttribute("dtos", dto);

			return "allba/bookmark/list";
		}
		
	// 즐겨찾기 삭제
		@RequestMapping(value = "/{sitename}/bookmark/delete", method = RequestMethod.GET)
		public String getDelete(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid ) throws Exception {

			service.delete(sitename, boardid);

			return "redirect:/allba/{sitename}/board";
		}
}