package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/attraction/*")
public class Site_AttractionController {
	
	@RequestMapping("/Attraction_Map")
	public String Attraction_Map() {
		return "/attraction/Attraction_Map";
	}
	
	@RequestMapping("/Udo_Attraction")
	public String Udo_Attraction() {
		return "/attraction/Udo_Attraction";
	}
	
	@RequestMapping("/Seongsan_Attraction")
	public String Seongsan_Attraction() {
		return "/attraction/Seongsan_Attraction";
	}
	
	@RequestMapping("/Pyoseon_Attraction")
	public String Pyoseon_Attraction() {
		return "/attraction/Pyoseon_Attraction";
	}
	
	@RequestMapping("/Namwon_Attraction")
	public String Namwon_Attraction() {
		return "/attraction/Namwon_Attraction";
	}
	
	@RequestMapping("/Seogwipo_Attraction")
	public String Seogwipo_Attraction() {
		return "/attraction/Seogwipo_Attraction";
	}
	
	@RequestMapping("/Jungmun_Attraction")
	public String Jungmun_Attraction() {
		return "/attraction/Jungmun_Attraction";
	}
	
	@RequestMapping("/Andeok_Attraction")
	public String Andeok_Attraction() {
		return "/attraction/Andeok_Attraction";
	}
	@RequestMapping("/Daejung_Attraction")
	public String Daejung_Attraction() {
		return "/attraction/Daejung_Attraction";
	}
	
	@RequestMapping("/Gapa_Attraction")
	public String Gapa_Attraction() {
		return "/attraction/Gapa_Attraction";
	}
	
	@RequestMapping("/Mara_Attraction")
	public String Mara_Attraction() {
		return "/attraction/Mara_Attraction";
	}
	
	@RequestMapping("/Hankyung_Attraction")
	public String Hankyung_Attraction() {
		return "/attraction/Hankyung_Attraction";
	}
	
	@RequestMapping("/Chagwi_Attraction")
	public String Chagwi_Attraction() {
		return "/attraction/Chagwi_Attraction";
	}
	
	@RequestMapping("/Biyang_Attraction")
	public String Biyang_Attraction() {
		return "/attraction/Biyang_Attraction";
	}
	
	@RequestMapping("/Hanlim_Attraction")
	public String Hanlim_Attraction() {
		return "/attraction/Hanlim_Attraction";
	}
	
	@RequestMapping("/Aewol_Attraction")
	public String Aewol_Attraction() {
		return "/attraction/Aewol_Attraction";
	}
	
	@RequestMapping("/Jeju_Attraction")
	public String Jeju_Attraction() {
		return "/attraction/Jeju_Attraction";
	}
	
	@RequestMapping("/Jocheon_Attraction")
	public String Jocheon_Attraction() {
		return "/attraction/Jocheon_Attraction";
	}
	
	@RequestMapping("/Gujwa_Attraction")
	public String Gujwa_Attraction() {
		return "/attraction/Gujwa_Attraction";
	}


}
