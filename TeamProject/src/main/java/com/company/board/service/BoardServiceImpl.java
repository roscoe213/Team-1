package com.company.board.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;
import com.company.board.mapper.BoardAttachMapper;
import com.company.board.mapper.BoardMapper;

import lombok.Setter;

//Service
//스프링에서 DispatcherServlet이 동작하고, 핸드러어댑터가 가동되면, 
//해당 어노테이션을 확인 빈으로 등록 생성
//수동으로 bean등록을 하지 않았고, 어노테이션을 사용했다면, 
//servlet-context에서 컴포넌트 스캔을 사용해야 합니다. 
@Service
public class BoardServiceImpl implements BoardService {

	//DAO영역은 MyBatis를 사용하여 구현...
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper attachMapper;	
	
	@Inject
	private SqlSession session;
	
	
	
	//페이징처리 게시글 목록 가져오기
	@Override
	public ArrayList<BoardVO> getList(Criteria cri) {
		ArrayList<BoardVO> list = mapper.pagingList(cri);
		return list;
	}
	
	//top조회수 게시글 목록 가져오기
	@Override
	public List<BoardVO> topList() {
		List<BoardVO> list = mapper.topList();
	return list;
}

	@Override
	public int getTotal() {
		int total = mapper.getTotal();
		return total;
	}
	
	@Transactional
	@Override
	public void register(BoardVO vo) {
		System.out.println("register...: " + vo);
		
		
		mapper.insertBoard(vo);
		
		if(vo.getAttachList() == null || vo.getAttachList().size() <= 0) {
			return;
		}
		
		vo.getAttachList().forEach(attach ->{
			
			attach.setSeq_bno(vo.getBno());
			attachMapper.insert(attach);
			
		});
		
	}
	
	@Override
	public BoardVO getContent(int num) {
		// 마이바티스의 멤퍼 확인
		BoardVO vo = mapper.getContent(num);
		return vo;
	}
	
	@Override
	public void update(BoardVO vo) {
		boolean bool = mapper.updateBoard(vo);
		System.out.println("성공(true),실패(false)? : "+ bool);
		
	}
	
	@Override
	public void delete(int num) {
		mapper.deleteBoard(num);
		
	}
	
	@Override
	public void upHit(int num) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.upHit(num);
		
	}

	
}
