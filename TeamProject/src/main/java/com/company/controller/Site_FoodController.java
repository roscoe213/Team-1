package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/food/*")
public class Site_FoodController {
	
	@RequestMapping("/Food_Map")
	public String Food_Map() {
		return "/food/Food_Map";
	}
	
	@RequestMapping("/Udo_Food")
	public String Udo_Food() {
		return "/food/Udo_Food";
	}
	
	@RequestMapping("/Seongsan_Food")
	public String Seongsan_Food() {
		return "/food/Seongsan_Food";
	}
	
	@RequestMapping("/Pyoseon_Food")
	public String Pyoseon_Food() {
		return "/food/Pyoseon_Food";
	}
	
	@RequestMapping("/Namwon_Food")
	public String Namwon_Food() {
		return "/food/Namwon_Food";
	}
	
	@RequestMapping("/Seogwipo_Food")
	public String Seogwipo_Food() {
		return "/food/Seogwipo_Food";
	}
	
	@RequestMapping("/Jungmun_Food")
	public String Jungmun_Food() {
		return "/food/Jungmun_Food";
	}
	
	@RequestMapping("/Andeok_Food")
	public String Andeok_Food() {
		return "/food/Andeok_Food";
	}
	@RequestMapping("/Daejung_Food")
	public String Daejung_Food() {
		return "/food/Daejung_Food";
	}
	
	@RequestMapping("/Gapa_Food")
	public String Gapa_Food() {
		return "/food/Gapa_Food";
	}
	
	@RequestMapping("/Mara_Food")
	public String Mara_Food() {
		return "/food/Mara_Food";
	}
	
	@RequestMapping("/Hankyung_Food")
	public String Hankyung_Food() {
		return "/food/Hankyung_Food";
	}
	
	@RequestMapping("/Chagwi_Food")
	public String Chagwi_Food() {
		return "/food/Chagwi_Food";
	}
	
	@RequestMapping("/Biyang_Food")
	public String Biyang_Food() {
		return "/food/Biyang_Food";
	}
	
	@RequestMapping("/Hanlim_Food")
	public String Hanlim_Food() {
		return "/food/Hanlim_Food";
	}
	
	@RequestMapping("/Aewol_Food")
	public String Aewol_Food() {
		return "/food/Aewol_Food";
	}
	
	@RequestMapping("/Jeju_Food")
	public String Jeju_food() {
		return "/food/Jeju_Food";
	}
	
	@RequestMapping("/Jocheon_Food")
	public String Jocheon_Food() {
		return "/food/Jocheon_Food";
	}
	
	@RequestMapping("/Gujwa_Food")
	public String Gujwa_Food() {
		return "/food/Gujwa_Food";
	}

}
