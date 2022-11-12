package com.company.member.service;

import com.company.member.command.MemberVO;

public interface MemberService {
	
	public int join(MemberVO vo); //회원가입
	public MemberVO login(MemberVO vo); //로그인
	public int emailCheck(String eamil);	// 이메일체크
	public int nickNameCheck(String nickName); // 닉네임 체크
	public int updateMembers(MemberVO vo);		// 회원정보 수정
	public int confirm(MemberVO vo);
	public int pwUpdate(MemberVO vo);	// 비밀번호 변경
	public void deleteMembers(MemberVO vo);	// 회원정보 삭제
	public int findPw(MemberVO vo);//비밀번호 찾기
	
}
