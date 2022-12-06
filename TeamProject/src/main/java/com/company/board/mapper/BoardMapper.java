package com.company.board.mapper;

import java.util.ArrayList;
import java.util.List;

import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;


public interface BoardMapper {
	
	public ArrayList<BoardVO> getList();//모든 게시물 가져오기 
	public void insertBoard(BoardVO vo);//게시물 등록
	public BoardVO getContent(int num); //게시물 상세보기 가져오기
	public boolean updateBoard(BoardVO vo);//게시물 수정완료 처리하기
	public void deleteBoard(int num);	//게시물 삭제하기
	public void upHit(int num);		//조회수 처리하기

	//페이징 쿼리문 : 매개변수로 Criteria클래스를 받음.
	public ArrayList<BoardVO> pagingList(Criteria cri);
	
	//전체 데이터의 수
	public int getTotal();
	
	//top 게시글 가져오기
	public List<BoardVO> topList();
	
	//첨부파일 등록
	
	//첨부파일 상세보기
	
	//첨부파일 다운로드
}
