package com.company.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminPageVO;
import com.company.admin.command.AdminVO;
import com.company.admin.service.AdminService;
import com.company.board.command.Criteria;

@Controller
@RequestMapping("/food/*")
public class Site_FoodController {

	@Autowired
	private AdminService service;

	@RequestMapping("/Food_Map")
	public String Food_Map() {
		return "/food/Food_Map";
	}

	@RequestMapping("/Udo_Food")
	public String Udo_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Udo_Food";
	}

	@RequestMapping("/Seongsan_Food")
	public String Seongsan_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Seongsan_Food";
	}

	@RequestMapping("/Pyoseon_Food")
	public String Pyoseon_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Pyoseon_Food";
	}

	@RequestMapping("/Namwon_Food")
	public String Namwon_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Namwon_Food";
	}

	@RequestMapping("/Seogwipo_Food")
	public String Seogwipo_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Seogwipo_Food";
	}

	@RequestMapping("/Jungmun_Food")
	public String Jungmun_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Jungmun_Food";
	}

	@RequestMapping("/Andeok_Food")
	public String Andeok_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Andeok_Food";
	}

	@RequestMapping("/Daejung_Food")
	public String Daejung_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Daejung_Food";
	}

	@RequestMapping("/Gapa_Food")
	public String Gapa_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Gapa_Food";
	}

	@RequestMapping("/Mara_Food")
	public String Mara_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Mara_Food";
	}

	@RequestMapping("/Hankyung_Food")
	public String Hankyung_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Hankyung_Food";
	}

	@RequestMapping("/Chagwi_Food")
	public String Chagwi_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Chagwi_Food";
	}

	@RequestMapping("/Biyang_Food")
	public String Biyang_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {

		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Biyang_Food";
	}

	@RequestMapping("/Hanlim_Food")
	public String Hanlim_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Hanlim_Food";
	}

	@RequestMapping("/Aewol_Food")
	public String Aewol_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Aewol_Food";
	}

	@RequestMapping("/Jeju_Food")
	public String Jeju_food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Jeju_Food";
	}

	@RequestMapping("/Jocheon_Food")
	public String Jocheon_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Jocheon_Food";
	}

	@RequestMapping("/Gujwa_Food")
	public String Gujwa_Food(@RequestParam("num1") int num1,Model model, AdminCriteria adcri) {
		ArrayList<AdminVO> falist = service.adGetList(adcri);

		model.addAttribute("fa_list", falist);
		// 게시글 전체 데이터 가져오기
		int total = service.adTotalf(num1); // 게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("adpageMaker", new AdminPageVO(adcri, total));
		return "/food/Gujwa_Food";
	}

	@RequestMapping("/adMapf")
	public String adMapf(@RequestParam("num") int num,
			Model model, @ModelAttribute("cri") Criteria cri){       //8.페이징에서 추가할 내용이 존재함."
		System.out.println("===컨트롤러===");
		System.out.println(num);
		
		
		//num(bno)을 가지고 있는 데이터(row)를 불러오는 메서드
		AdminVO vo = service.adContent(num);
		model.addAttribute("link", vo);	
		
		
		
		return "food/adMapf";
	}
	
}
