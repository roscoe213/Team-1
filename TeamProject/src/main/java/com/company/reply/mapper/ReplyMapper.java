package com.company.reply.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.company.board.command.Criteria;
import com.company.reply.command.ReplyVO;

public interface ReplyMapper {
	
	public int insert(ReplyVO vo);	//등록
	public ReplyVO read(int rno);	//특정댓글읽기
	public int delete (int rno);	//삭제
	public int update(ReplyVO replyvo);//수정
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") int bno);
	

}
