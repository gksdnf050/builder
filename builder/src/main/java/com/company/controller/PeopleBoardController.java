package com.company.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
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

import com.company.dto.PeopleBoardDTO;
import com.company.dto.PeopleMemberDTO;
import com.company.service.PeopleBoardService;
import com.company.utils.PeopleUploadFileUtils;

@Controller
@RequestMapping("/people/*")
public class PeopleBoardController {

	@Inject
	PeopleBoardService service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 게시물 목록
	@RequestMapping(value = "/{sitename}/board", method = RequestMethod.GET)
	public String list(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req)
			throws Exception {
		HttpSession session = req.getSession();
		PeopleMemberDTO m = (PeopleMemberDTO) session.getAttribute("peoplemember");

		String category = req.getParameter("category");
		String value = req.getParameter("value");
		List<PeopleBoardDTO> dto = service.list(sitename, category, value);

		if (m != null) {
			List<Integer> bi = service.getbookmarkid(sitename, m.getUserid());
			model.addAttribute("bi", bi);
		}

		model.addAttribute("sitename", sitename);
		model.addAttribute("dtos", dto);

		return "people/board/list";
	}

	// 게시물 작성get
	@RequestMapping(value = "/{sitename}/board/write", method = RequestMethod.GET)
	public String getWrite(@PathVariable("sitename") String sitename, HttpServletRequest req, Model model)
			throws Exception {
		HttpSession session = req.getSession();
		PeopleMemberDTO m = (PeopleMemberDTO) session.getAttribute("peoplemember");
		model.addAttribute("sitename", sitename);
		if (m == null) {
			return "redirect:/{sitename}/login";
		}
		return "people/board/write";
	}

	// 게시물 작성post
	@RequestMapping(value = "/{sitename}/board/write", method = RequestMethod.POST)
	public String postWrite(@PathVariable("sitename") String sitename, PeopleBoardDTO dto, MultipartFile file)
			throws Exception {

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = PeopleUploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = PeopleUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
					ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);

		service.write(sitename, dto);
		return "redirect:/people/{sitename}/board";

	}

	// 게시물 조회
	@RequestMapping(value = "/{sitename}/board/view", method = RequestMethod.GET)
	public String getView(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid, Model model)
			throws Exception {

		PeopleBoardDTO dto = service.view(sitename, boardid);
		model.addAttribute("sitename", sitename);
		model.addAttribute("view", dto);
		return "people/board/view";
	}

	// 게시물 수정get
	@RequestMapping(value = "/{sitename}/board/modify", method = RequestMethod.GET)
	public String getModify(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid,
			Model model) throws Exception {

		PeopleBoardDTO dto = service.view(sitename, boardid);
		model.addAttribute("sitename", sitename);
		model.addAttribute("view", dto);
		return "people/board/modify";
	}

	// 게시물 수정post
	@RequestMapping(value = "/{sitename}/board/modify", method = RequestMethod.POST)
	public String postModify(@PathVariable("sitename") String sitename, PeopleBoardDTO dto, MultipartFile file,
			HttpServletRequest req) throws Exception {
		// 새로운 파일이 등록되었는지 확인
		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일을 삭제
			new File(uploadPath + req.getParameter("iamge")).delete();

			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = PeopleUploadFileUtils.calcPath(imgUploadPath);
			String fileName = PeopleUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(),
					file.getBytes(), ymdPath);

			dto.setImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);

		} else { // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			dto.setImage(req.getParameter("image"));

		}

		service.modify(sitename, dto);

		return "redirect:/people/{sitename}/board";
	}

	// 게시물 삭제
	@RequestMapping(value = "/{sitename}/board/delete", method = RequestMethod.GET)
	public String getDelete(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid)
			throws Exception {

		service.delete(sitename, boardid);

		return "redirect:/people/{sitename}/board";
	}

	// 게시물 검색
	@RequestMapping(value = "/{sitename}/board/search", method = RequestMethod.GET)
	public String getSearch(@PathVariable("sitename") String sitename, @RequestParam("keyword") String keyword,
			Model model) throws Exception {

		List<PeopleBoardDTO> dto = service.search(sitename, keyword);
		model.addAttribute("sitename", sitename);
		model.addAttribute("dtos", dto);

		return "people/board/searchresult";
	}

	// 게시물 즐겨찾기 등록
	@RequestMapping(value = "/{sitename}/board/regbookmark", method = RequestMethod.GET)
	public String getRegfavorites(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid,
			HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		PeopleMemberDTO m = (PeopleMemberDTO) session.getAttribute("peoplemember");

		if (m == null) {
			return "redirect:/people/{sitename}/login";
		} else {

			service.regbookmark(sitename, boardid, m.getUserid());
			return "redirect:/people/{sitename}/board";
		}

	}


}
