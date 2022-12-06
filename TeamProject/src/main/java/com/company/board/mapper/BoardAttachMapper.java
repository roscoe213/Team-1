package com.company.board.mapper;

import java.util.List;

import com.company.board.command.BoardAttachVO;

public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(int seq_bno);
	
	
	
	
}
