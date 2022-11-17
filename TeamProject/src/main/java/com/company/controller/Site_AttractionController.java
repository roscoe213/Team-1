package com.company.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminVO;
import com.company.admin.service.AdminService;
import com.company.board.command.Criteria;

@Controller
@RequestMapping("/attraction/*")
public class Site_AttractionController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("/Attraction_Map")
	public String Attraction_Map(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Attraction_Map";
	}
	
	@RequestMapping("/Udo_Attraction")
	public String Udo_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Udo_Attraction";
	}
	
	@RequestMapping("/Seongsan_Attraction")
	public String Seongsan_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Seongsan_Attraction";
	}
	
	@RequestMapping("/Pyoseon_Attraction")
	public String Pyoseon_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Pyoseon_Attraction";
	}
	
	@RequestMapping("/Namwon_Attraction")
	public String Namwon_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Namwon_Attraction";
	}
	
	@RequestMapping("/Seogwipo_Attraction")
	public String Seogwipo_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Seogwipo_Attraction";
	}
	
	@RequestMapping("/Jungmun_Attraction")
	public String Jungmun_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Jungmun_Attraction";
	}
	
	@RequestMapping("/Andeok_Attraction")
	public String Andeok_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Andeok_Attraction";
	}
	@RequestMapping("/Daejung_Attraction")
	public String Daejung_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Daejung_Attraction";
	}
	
	@RequestMapping("/Gapa_Attraction")
	public String Gapa_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Gapa_Attraction";
	}
	
	@RequestMapping("/Mara_Attraction")
	public String Mara_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Mara_Attraction";
	}
	
	@RequestMapping("/Hankyung_Attraction")
	public String Hankyung_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Hankyung_Attraction";
	}
	
	@RequestMapping("/Chagwi_Attraction")
	public String Chagwi_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Chagwi_Attraction";
	}
	
	@RequestMapping("/Biyang_Attraction")
	public String Biyang_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Biyang_Attraction";
	}
	
	@RequestMapping("/Hanlim_Attraction")
	public String Hanlim_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Hanlim_Attraction";
	}
	
	@RequestMapping("/Aewol_Attraction")
	public String Aewol_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Aewol_Attraction";
	}
	
	@RequestMapping("/Jeju_Attraction")
	public String Jeju_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Jeju_Attraction";
	}
	
	@RequestMapping("/Jocheon_Attraction")
	public String Jocheon_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Jocheon_Attraction";
	}
	
	@RequestMapping("/Gujwa_Attraction")
	public String Gujwa_Attraction(Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		return "/attraction/Gujwa_Attraction";
	}
	
	@RequestMapping("/adMapa")
	public String adMap(@RequestParam("num") int num,
			Model model, @ModelAttribute("cri") Criteria cri){       //8.페이징에서 추가할 내용이 존재함."
		System.out.println("===컨트롤러===");
		System.out.println(num);
		
		
		//num(bno)을 가지고 있는 데이터(row)를 불러오는 메서드
		AdminVO vo = service.adContent(num);
		model.addAttribute("link", vo);	
		
		
		
		return "attraction/adMapa";
	}

}
