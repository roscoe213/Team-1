package com.company.admin.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.admin.command.AdminCriteria;
import com.company.admin.command.AdminVO;
import com.company.admin.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper mapper;

	@Override
	public ArrayList<AdminVO> adGetList(int count_oracle,int adpageStart,int num1) {
		ArrayList<AdminVO> list = mapper.adPageList(count_oracle,adpageStart, num1);
		return list;
		
	}

	@Override
	public void adRegister(AdminVO vo) {
		mapper.adRegister(vo);

	}

	@Override
	public AdminVO adContent(int num) {
			AdminVO vo = mapper.adContent(num);
			return vo;
		}
		

	@Override
	public void adUpdate(AdminVO vo) {
		mapper.adUpdate(vo);
		System.out.println(vo.getNno());

	}

	@Override
	public void adDelete(int nno) {
		// TODO Auto-generated method stub

	}

	@Override
	public int adTotala(int num1) {
		int total = mapper.adTotala(num1);
		return total;
	}
	
	@Override
	public int adTotalf(int num1) {
		int total = mapper.adTotalf(num1);
		return total;
	}
}
