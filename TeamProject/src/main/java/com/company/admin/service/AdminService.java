package com.company.admin.service;

import java.util.ArrayList;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminVO;

public interface AdminService {
	public ArrayList<AdminVO> adGetList(AdminCriteria adcri);
	
	public void adRegister(AdminVO vo);
	public AdminVO adContent(int num);
	public void adUpdate(AdminVO vo);
	public void adDelete(int num);
	public int adTotala(int num1);
	public int adTotalf(int num1);
	
	

}
