package com.company.admin.mapper;

import java.util.ArrayList;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminVO;

public interface AdminMapper {
	
	public ArrayList<AdminVO> adPageList(AdminCriteria adcri);
	
	public ArrayList<AdminVO> adGetList();
	public void adRegister(AdminVO vo);
	public AdminVO adContent(int num);
	public void adUpdate(AdminVO vo);
	public void adDelete(int num);
	public int adTotala(int num1);
	public int adTotalf(int num1);
	
}
