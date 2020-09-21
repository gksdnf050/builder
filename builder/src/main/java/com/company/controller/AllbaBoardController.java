package com.company.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.company.dto.AllbaMemberDTO;
import com.company.service.AllbaBoardService;
import com.company.utils.AllbaUploadFileUtils;

@Controller
@RequestMapping("/{c}/*")
public class AllbaBoardController {
  
	@Inject
	AllbaBoardService service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 게시물 목록
	@RequestMapping(value = "/{sitename}/board", method = RequestMethod.GET)
	public String list(@PathVariable("c")String c, @PathVariable("sitename") String sitename, @RequestParam(name = "start", defaultValue = "1") int start, Model model, HttpServletRequest req)
			throws Exception {
		HttpSession session = req.getSession();
		AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");

		String category = req.getParameter("category");
		String value = req.getParameter("value");
		final int stratValue = (start - 1) * 8;
		List<Map<String, String>> dto = service.list(sitename, category, value,c, stratValue);
		int totalCount = service.getTotalCount(sitename,category,value);
		if (m != null) {
			List<Integer> bi = service.getbookmarkid(sitename, m.getUserid());
			model.addAttribute("bi", bi);
		}
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("sitename", sitename);
		model.addAttribute("dtos", dto);
		model.addAttribute("cate", category);
		model.addAttribute("val", value);
		int pagingCount = 0;
		if(totalCount % 8 != 0) {
			pagingCount = totalCount / 8 + 1;
		}else {
			pagingCount = totalCount / 8;
		}
		model.addAttribute("pagingCount", pagingCount);
		
		return "allba/board/list";
	}

	// 게시물 작성get
	@RequestMapping(value = "/{sitename}/board/write", method = RequestMethod.GET)
	public String getWrite(@PathVariable("sitename") String sitename, HttpServletRequest req, Model model)
			throws Exception {
		HttpSession session = req.getSession();
		AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<Map<String, String>> selectlist = service.selectlist(sitename);
		model.addAttribute("fieldlist", fieldlist);
		model.addAttribute("selectlist", selectlist);
		model.addAttribute("sitename", sitename);
		if (m == null) {
			return "redirect:/{c}/{sitename}/login";
		}
		return "allba/board/write";
	}

	// 게시물 작성post
	@RequestMapping(value = "/{sitename}/board/write", method = RequestMethod.POST)
	public String postWrite(@PathVariable("c")String c, @PathVariable("sitename") String sitename, HttpServletRequest req, MultipartFile file)
			throws Exception {
		
		int temp = 0;
		String[] str;
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<String> list = new ArrayList();
		str = new String[fieldlist.size()];
		for (Map<String, String> i : fieldlist) {
			list.add(i.get("fieldname"));
		}
		for (int i = 0; i < fieldlist.size(); i++) {
			if (list.get(i).equals("image")) {
				temp = i;
				continue;
			}
			str[i] = req.getParameter(list.get(i));
		}
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = AllbaUploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = AllbaUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
					ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		str[temp] = (File.separator + "imgUpload" + ymdPath + File.separator + fileName);

		service.write(sitename, list, str);
		
		return "redirect:/{c}/{sitename}/board";

	}

	// 게시물 조회
	@RequestMapping(value = "/{sitename}/board/view", method = RequestMethod.GET)
	public String getView(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid, Model model)
			throws Exception {

		Map<String, String> dto = service.view(sitename, boardid);
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<Map<String, String>> selectlist = service.selectlist(sitename);
		model.addAttribute("sitename", sitename);
		model.addAttribute("view", dto);
		model.addAttribute("fieldlist", fieldlist);
		model.addAttribute("selectlist", selectlist);
		return "allba/board/view";
	}

	// 게시물 수정get
	@RequestMapping(value = "/{sitename}/board/modify", method = RequestMethod.GET)
	public String getModify(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid,
			Model model) throws Exception {

		Map<String, String> dto = service.view(sitename, boardid);
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<Map<String, String>> selectlist = service.selectlist(sitename);
		model.addAttribute("sitename", sitename);
		model.addAttribute("view", dto);
		model.addAttribute("fieldlist", fieldlist);
		model.addAttribute("selectlist", selectlist);
		return "allba/board/modify";
	}

	// 게시물 수정post
	@RequestMapping(value = "/{sitename}/board/modify", method = RequestMethod.POST)
	public String postModify(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid,
			MultipartFile file, HttpServletRequest req) throws Exception {
		int temp = 0;
		String[] str;
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<String> list = new ArrayList();
		str = new String[fieldlist.size()];
		for (Map<String, String> i : fieldlist) {

			list.add(i.get("fieldname"));
		}
		for (int i = 0; i < fieldlist.size(); i++) {
			if (list.get(i).equals("image")) {
				temp = i;
				continue;
			}
			str[i] = req.getParameter(list.get(i));
		}
		// 새로운 파일이 등록되었는지 확인
		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일을 삭제
			new File(uploadPath + req.getParameter("image")).delete();

			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = AllbaUploadFileUtils.calcPath(imgUploadPath);
			String fileName = AllbaUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(),
					file.getBytes(), ymdPath);

			str[temp] = (File.separator + "imgUpload" + ymdPath + File.separator + fileName);

		} else { // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			str[temp] = req.getParameter("image");

		}

		service.modify(sitename, list, str, boardid);

		return "redirect:/{c}/{sitename}/board";
	}

	// 게시물 삭제
	@RequestMapping(value = "/{sitename}/board/delete", method = RequestMethod.GET)
	public String getDelete(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid)
			throws Exception {

		service.delete(sitename, boardid);

		return "redirect:/{c}/{sitename}/board";
	}

	// 게시물 검색
	@RequestMapping(value = "/{sitename}/board/search", method = RequestMethod.GET)
	public String getSearch(@PathVariable("sitename") String sitename,@RequestParam(name = "start", defaultValue = "1") int start, @RequestParam("keyword") String keyword,
			Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");
		final int stratValue = (start - 1) * 8;
		

		List<Map<String, String>> dto = service.search(sitename, keyword, stratValue);

		if (m != null) {
			List<Integer> bi = service.getbookmarkid(sitename, m.getUserid());
			model.addAttribute("bi", bi);
		}

		model.addAttribute("sitename", sitename);
		model.addAttribute("dtos", dto);
		model.addAttribute("keyword", keyword);
		
		int totalCount = service.getSearchCount(sitename,keyword);
		int pagingCount = 0;
		if(totalCount % 8 != 0) {
			pagingCount = totalCount / 8 + 1;
		}else {
			pagingCount = totalCount / 8;
		}
		
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("pagingCount", pagingCount);
		
		return "allba/board/list";
	}

	// 게시물 즐겨찾기 등록
	@RequestMapping(value = "/{sitename}/board/regbookmark", method = RequestMethod.GET)
	public String getRegfavorites(@PathVariable("sitename") String sitename, @RequestParam("boardid") int boardid,
			HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		AllbaMemberDTO m = (AllbaMemberDTO) session.getAttribute("allbamember");

		if (m == null) {
			return "redirect:/{c}/{sitename}/login";
		} else {

			service.regbookmark(sitename, boardid, m.getUserid());
			return "redirect:/{c}/{sitename}/board";
		}

	}
	

}