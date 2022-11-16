package com.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminPageVO;
import com.company.admin.command.AdminVO;
import com.company.admin.service.AdminService;
import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;

@Controller
@RequestMapping("/admin/")
public class AdminContoller {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("/adRegister")
	public String adRegist(HttpSession session) {
		int result = (int)session.getAttribute("user_admin");
		if(result == 1) {
			return "/admin/adRegister";
		}
		return "redirect:/";
		
	}
	
		
	
	@PostMapping("/adRegist")
	public String adRegister(AdminVO vo,HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		
		//서비스 처리 ... 
		service.adRegister(vo);
		
		return "redirect:"+referer;
	}
	
	@RequestMapping("/adMap")
	public String adMap(@RequestParam("num") int num,
			Model model, @ModelAttribute("cri") Criteria cri){       //8.페이징에서 추가할 내용이 존재함."
		System.out.println("===컨트롤러===");
		System.out.println(num);
		
		
		//num(bno)을 가지고 있는 데이터(row)를 불러오는 메서드
		AdminVO vo = service.adContent(num);
		model.addAttribute("link", vo);	
		
		
		
		return "admin/adMap";
	}
	
}
