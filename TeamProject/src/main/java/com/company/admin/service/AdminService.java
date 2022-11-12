package com.company.admin.service;

import java.util.ArrayList;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminVO;

public interface AdminService {
	public ArrayList<AdminVO> adGetList(AdminCriteria adcri);
	
	public void adRegister(AdminVO vo);
	public AdminVO adContent(int nno);
	public void adUpdate(AdminVO vo);
	public void adDelete(int nno);
	public int adTotal();
	
	

}
