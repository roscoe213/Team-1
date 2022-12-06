package com.company.member.mapper;

import java.util.List;

import com.company.member.command.MemberImgVO;
import com.company.member.command.MemberVO;

public interface MemberMapper {
	
	public int join(MemberVO vo); //회원 가입
	public MemberVO login(MemberVO vo); //로그인 처리
	public int emailCheck(String email);	// 이메일 체크
	public int nickNameCheck(String nickName); // 닉네임 체크
	public int updateMembers(MemberVO vo);	//업데이트
	public int pwUpdate(MemberVO vo);	// 비밀번호변경
	public int confirm(MemberVO vo);
	public	void deleteMembers(MemberVO vo); //회원탈퇴
	public int findPw(MemberVO vo);//비밀번호 찾기
	public void insert(MemberImgVO vo);
	public void delete(String uuid);
	public List<MemberImgVO> findByemail(String email);

}
