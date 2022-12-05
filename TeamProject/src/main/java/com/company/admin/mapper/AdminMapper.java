package com.company.admin.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;


import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminPageVO;
import com.company.admin.command.AdminVO;
import com.company.board.command.Criteria;

public interface AdminMapper {
	
	public ArrayList<AdminVO> adPageList(@Param("count_oracle")int count_oracle,@Param("adpageStart")int adpageStart,@Param("num1")int num1);

	public ArrayList<AdminVO> adGetList();
	public void adRegister(AdminVO vo);
	public AdminVO adContent(int num);
	public void adUpdate(AdminVO vo);
	public void adDelete(int num);
	public int adTotala(int num1);
	public int adTotalf(int num1);
	
	public ArrayList<AdminVO> adPageList (AdminCriteria adcri);
	
}
