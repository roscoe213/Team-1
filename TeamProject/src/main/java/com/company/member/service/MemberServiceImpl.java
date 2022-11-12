package com.company.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.member.command.MemberVO;
import com.company.member.mapper.MemberMapper;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	//마이바티스의 인터페이스 
	@Autowired
	private MemberMapper mapper;
	
	/*
	 *  1. 설정을 확인하자
	 *  2. 마이바티스의 구현체 xml을 구성하기
	 */
	
	@Override
	public int join(MemberVO vo) {
		
		int result = mapper.join(vo);
				
		return result;
	}
	
	@Override
	public MemberVO login(MemberVO vo) {		
		
		return mapper.login(vo);
	}
	
	@Override
	public int emailCheck(String eamil) {
		int result = mapper.emailCheck(eamil);
		System.out.println("서비스");
		return result;
	}
	
	@Override
	public int nickNameCheck(String nickName) {
		int result = mapper.nickNameCheck(nickName);
		System.out.println(result);
		return result;
	}
	
	@Override
	public int updateMembers(MemberVO vo) {
		int result = mapper.updateMembers(vo);
		
		return result;
	}
	
	@Override
	public int pwUpdate(MemberVO vo) {
		int result = mapper.pwUpdate(vo);
		
		return result;
	}

	@Override
	public void deleteMembers(MemberVO vo) {
		mapper.deleteMembers(vo);
	
}
	
@Override
	public int confirm(MemberVO vo) {
		int result = mapper.confirm(vo);
		return result;
	}

@Override
public int findPw(MemberVO vo) {
	int result = mapper.findPw(vo);
	
	return result;
}


}
