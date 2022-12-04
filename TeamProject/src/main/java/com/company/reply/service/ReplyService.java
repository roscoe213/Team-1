package com.company.reply.service;

import java.util.List;

import com.company.board.command.Criteria;
import com.company.reply.command.ReplyVO;

public interface ReplyService {
	
	public int register(ReplyVO vo);	//등록
	public ReplyVO get(int rno);
	public int modify(ReplyVO vo);
	public int remove(int rno);
	public List<ReplyVO> getList(Criteria cri, int bno);
	

}
