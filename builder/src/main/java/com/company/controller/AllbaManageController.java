package com.company.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.company.service.AllbaManageService;
import com.company.utils.AllbaUploadFileUtils;

@Controller
@RequestMapping("/{c}/*")
public class AllbaManageController {
	@Resource(name = "uploadPath")
	private String uploadPath;
	
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
		for (int i = 1; i < category.size() + 1; i++) {

			if (req.getParameter("categoryname" + i).equals("")) {
				continue;
			} else {
				flag = true;
				service.registercategory(sitename, req.getParameter("categoryname" + i), req.getParameter("depth" + i),
						req.getParameter("parent" + i));
				break;

			}
		}

		if (!flag) {
			service.registercategory(sitename, req.getParameter("categoryname"), req.getParameter("depth"),
					req.getParameter("parent"));
		}

		return "redirect:/allba/{sitename}/manage/registercategory";
	}

	// 필드 등록get
	@RequestMapping(value = "/{sitename}/manage/registerfield", method = RequestMethod.GET)
	public String getRegisterfield(@PathVariable("sitename") String sitename, Model model) {
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<Map<String, String>> selectlist = service.selectlist(sitename);

		model.addAttribute("sitename", sitename);
		model.addAttribute("fieldlist", fieldlist);
		model.addAttribute("selectlist", selectlist);

		return "/allba/manage/registerfield";
	}

	// 필드 등록post
	@RequestMapping(value = "/{sitename}/manage/registerfield", method = RequestMethod.POST)
	public String postRegisterfield(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) {
		boolean flag = false;
		List<Map<String, String>> fieldlist = service.fieldlist(sitename);
		List<Map<String, String>> selectlist = service.selectlist(sitename);
		for (int i = 1; i < fieldlist.size() + 1; i++) {
			if (req.getParameter("fieldname" + i).equals("") || req.getParameter("fieldname" + i) == null) {

				continue;
			} else {
				flag = true;
				service.registerfield(sitename, req.getParameter("fieldname" + i), req.getParameter("depth" + i),
						req.getParameter("fieldtype" + i), req.getParameter("parent" + i));
				break;

			}
		}

		if (!flag) {
			service.registerfield(sitename, req.getParameter("fieldname"), req.getParameter("depth"),
					req.getParameter("fieldtype"), req.getParameter("parent"));
		}

		return "redirect:/allba/{sitename}/manage/registerfield";
	}

	// 필드 삭제
	@RequestMapping(value = "/{sitename}/manage/deletefield", method = RequestMethod.GET)
	public String deletefield(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) {
		int fieldid = Integer.parseInt(req.getParameter("fieldid"));
		String fieldname = req.getParameter("fieldname");

		service.deletefield(sitename, fieldid, fieldname);

		return "redirect:/allba/{sitename}/manage/registerfield";
	}

	// 카테고리 삭제
	@RequestMapping(value = "/{sitename}/manage/deletecategory", method = RequestMethod.GET)
	public String deletecategory(@PathVariable("sitename") String sitename, Model model, HttpServletRequest req) {
		int categoryid = Integer.parseInt(req.getParameter("categoryid"));
		String categoryname = req.getParameter("categoryname");

		service.deletecategory(sitename, categoryid, categoryname);

		return "redirect:/allba/{sitename}/manage/registercategory";
	}

	// 이벤트 페이지
	@RequestMapping(value = "/{sitename}/event", method = RequestMethod.GET)
	public String eventList(@PathVariable("sitename") String sitename, Model model) {
		model.addAttribute("sitename", sitename);
		return "/allba/event/eventList";
	}

	// 이벤트 등록 페이지 get
	@RequestMapping(value = "/{sitename}/event/register", method = RequestMethod.GET)
	public String geteventRegister(@PathVariable("sitename") String sitename, Model model) {
		model.addAttribute("sitename", sitename);

		return "/allba/event/eventRegister";
	}

	// 이벤트 등록 페이지 post
	@RequestMapping(value = "/{sitename}/event/register", method = RequestMethod.POST)
	public String posteventRegister(@PathVariable("sitename") String sitename, HttpServletRequest req, MultipartFile file)throws Exception {
		System.out.println( req.getSession().getServletContext().getRealPath("/"));

		 
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = AllbaUploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = AllbaUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
					ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		String file2 = (File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		String title = req.getParameter("title");
		
		
		service.registerevent(sitename, file2, title);
		return "redirect:/allba/{sitename}/event/register";
	}

	// q&a 페이지 get
	@RequestMapping(value = "/{sitename}/qna", method = RequestMethod.GET)
	public String qnaList(@PathVariable("sitename") String sitename, Model model) {
		String siteemail = service.getsiteemail(sitename);
		model.addAttribute("siteemail", siteemail);
		model.addAttribute("sitename", sitename);
		return "/allba/qna/qna";
	}
	
	// change
		@RequestMapping(value = "/{sitename}/manage/changefield", method = RequestMethod.GET)
		public String changefield(@PathVariable("sitename") String sitename, Model model) {
			
			List<Map<String, String>> fieldlist = service.fieldlist(sitename);
			model.addAttribute("fieldlist",fieldlist);
			model.addAttribute("sitename", sitename);
			return "/allba/manage/change";
		}
		
		//리스트 바꾸기
		@RequestMapping(value = "/{sitename}/manage/changefield", method = RequestMethod.POST)
		@ResponseBody
		public void changefield(@PathVariable("sitename") String sitename, Model model, @RequestParam(value="main[]") List<String> vals)
				throws Exception {
			List<Map<String, String>> selectlist = service.selectlist(sitename);
			service.change(sitename,vals,selectlist);

			
			
		}
/*
	// 1대1 문의
	@RequestMapping(value = "/{sitename}/qna/question", method = RequestMethod.GET)
	public String question(@PathVariable("sitename") String sitename, Model model) {

		String siteemail = service.getsiteemail(sitename);
		model.addAttribute("siteemail", siteemail);

		return "/allba/qna/question";
	} */

}