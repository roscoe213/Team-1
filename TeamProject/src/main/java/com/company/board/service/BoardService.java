package com.company.board.service;

import java.util.ArrayList;
import java.util.List;


import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;



public interface BoardService {
	
	public ArrayList<BoardVO> getList(Criteria cri); //페이징 처리 리스트 가져오기
	
	public void register(BoardVO vo);    //게시판 등록 메서드
	public BoardVO getContent(int num);  //게시물 상세보기 메서드(반환 유형을 고려해야 함)
	public void update(BoardVO vo); 	 //게시물 수정 완료 메서드
	public void delete(int num);		 //게시물 삭제 메서드
	public int getTotal();				 //게시물 전체 개수
	public void upHit(int num);			 //게시물 조회수처리
	
	public List<BoardVO> topList();	//top 리스트 가져오기
	
	// 첨부파일 조회

	
	// 첨부파일 다운
	
}
