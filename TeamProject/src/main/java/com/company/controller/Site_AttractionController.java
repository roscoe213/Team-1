package com.company.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminPageVO;
import com.company.admin.command.AdminVO;
import com.company.admin.service.AdminService;

@Controller
@RequestMapping("/attraction/*")
public class Site_AttractionController {

	@Autowired
	private AdminService service;

	@RequestMapping("/Attraction_Map")
	public String Attraction_Map(Model model,AdminCriteria adcri) {
		model.addAttribute("adcri", adcri);
		return "/attraction/Attraction_Map";
	}

	@RequestMapping("/Udo_Attraction")
	public String Udo_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Udo_Attraction";
	}

	@RequestMapping("/Seongsan_Attraction")
	public String Seongsan_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Seongsan_Attraction";
	}

	@RequestMapping("/Pyoseon_Attraction")
	public String Pyoseon_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Pyoseon_Attraction";
	}

	@RequestMapping("/Namwon_Attraction")
	public String Namwon_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Namwon_Attraction";
	}

	@RequestMapping("/Seogwipo_Attraction")
	public String Seogwipo_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Seogwipo_Attraction";
	}

	@RequestMapping("/Jungmun_Attraction")
	public String Jungmun_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Jungmun_Attraction";
	}

	@RequestMapping("/Andeok_Attraction")
	public String Andeok_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Andeok_Attraction";
	}

	@RequestMapping("/Daejung_Attraction")
	public String Daejung_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Daejung_Attraction";
	}

	@RequestMapping("/Gapa_Attraction")
	public String Gapa_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Gapa_Attraction";
	}

	@RequestMapping("/Mara_Attraction")
	public String Mara_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Mara_Attraction";
	}

	@RequestMapping("/Hankyung_Attraction")
	public String Hankyung_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Hankyung_Attraction";
	}

	@RequestMapping("/Chagwi_Attraction")
	public String Chagwi_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Chagwi_Attraction";
	}

	@RequestMapping("/Biyang_Attraction")
	public String Biyang_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Biyang_Attraction";
	}

	@RequestMapping("/Hanlim_Attraction")
	public String Hanlim_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Hanlim_Attraction";
	}

	@GetMapping("/Aewol_Attraction")
	public String Aewol_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);

		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Aewol_Attraction";
	}

	@RequestMapping("/Jeju_Attraction")
	public String Jeju_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Jeju_Attraction";
	}

	@RequestMapping("/Jocheon_Attraction")
	public String Jocheon_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Jocheon_Attraction";
	}

	@RequestMapping("/Gujwa_Attraction")
	public String Gujwa_Attraction(@RequestParam("num1") int num1, Model model,@RequestParam("adpageStart")int adpageStart,@RequestParam("count_oracle")int count_oracle, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(count_oracle,adpageStart,num1);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotala(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/attraction/Gujwa_Attraction";
	}

	@RequestMapping("/adMapa")
	public String adMap(@RequestParam("num") int num, Model model, @ModelAttribute("adcri") AdminCriteria adcri) { // 8.페이징에서
																											
		System.out.println("===컨트롤러===");
		System.out.println(num);

		// num(bno)을 가지고 있는 데이터(row)를 불러오는 메서드
		AdminVO vo = service.adContent(num);
		model.addAttribute("link", vo);

		return "attraction/adMapa";
	}
}
