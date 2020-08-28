package com.company.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.company.dto.MemberDTO;
import com.company.dto.SiteDTO;
import com.company.service.SiteService;
import com.company.utils.AllbaUploadFileUtils;

@Controller
public class SiteController {
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	SiteService service;

	// 사이트 목록
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String list(HttpServletRequest req, Model model) throws Exception {
		HttpSession session = req.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("member");
		if (m == null) {
			return "redirect:/login";
		}
		List<SiteDTO> dto = service.list(m.getUserid());
		model.addAttribute("dtos", dto);

		return "company/dashboard/dashboard";
	}

	// 사이트 만들기 get요청
	@RequestMapping(value = "/dashboard/createsite", method = RequestMethod.GET)
	public String getCreateSite(HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("member");
		if (m == null) {
			return "redirect:/login";
		}
		return "company/dashboard/createsite";
	}

	// 사이트 만들기 post요청
	@RequestMapping(value = "/dashboard/createsite", method = RequestMethod.POST)
	public String postCreateSite(HttpServletRequest req, MultipartFile file) throws Exception {
		HttpSession session = req.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("member");

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = AllbaUploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		
		if (file != null) {
			fileName = AllbaUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
					ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		String logo = (File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		
		String userid = m.getUserid();
		String userpass = m.getUserpass();
		String sitename = req.getParameter("sitename");
		String topcategory = req.getParameter("topcategory");
		String category = req.getParameter("category");
		String status = req.getParameter("status");
		String siteemail = req.getParameter("siteemail");
		service.create(userid, userpass, sitename, category, status, topcategory, siteemail, logo);

		return "redirect:/dashboard";

	}

	// 사이트 삭제
	@RequestMapping(value = "/dashboard/deletesite", method = RequestMethod.GET)
	public String deleteSite(HttpServletRequest req, Model model) throws Exception {

		int siteid = Integer.parseInt(req.getParameter("siteid"));
		String sitename = req.getParameter("sitename");
		String status = req.getParameter("status");
		service.delete(siteid, sitename, status);

		return "redirect:/dashboard";

	}

	// 사이트 수정get
	@RequestMapping(value = "/dashboard/modifysite", method = RequestMethod.GET)
	public String getModifySite(HttpServletRequest req, Model model) throws Exception {

		int siteid = Integer.parseInt(req.getParameter("siteid"));

		SiteDTO dto = service.view(siteid);
		model.addAttribute("sitedto", dto);
		return "company/dashboard/modify";

	}

	// 사이트 수정post
	@RequestMapping(value = "/dashboard/modifysite", method = RequestMethod.POST)
	public String postModifySite(HttpServletRequest req, MultipartFile file) throws Exception {
		HttpSession session = req.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("member");
		
		int siteid = Integer.parseInt(req.getParameter("siteid"));
		String userid = m.getUserid();
		String userpass = m.getUserpass();
		String sitename = req.getParameter("sitename");
		String topcategory = req.getParameter("topcategory");
		String category = req.getParameter("category");
		String status = req.getParameter("status");
		String siteemail = req.getParameter("siteemail");
		String logo;
		
		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일을 삭제
			new File(uploadPath + req.getParameter("logo")).delete();

			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = AllbaUploadFileUtils.calcPath(imgUploadPath);
			String fileName = AllbaUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(),
					file.getBytes(), ymdPath);

			 logo = (File.separator + "imgUpload" + ymdPath + File.separator + fileName);

		} else { // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			 logo = req.getParameter("logo");

		}
		service.modify(userid, userpass, sitename, category, status, topcategory, siteemail, logo, siteid);

		return "redirect:/dashboard";

	}
}
