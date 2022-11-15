package com.company.board.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;
import com.company.board.mapper.BoardMapper;
import com.company.util.FileUtils;



//Service
//스프링에서 DispatcherServlet이 동작하고, 핸드러어댑터가 가동되면, 
//해당 어노테이션을 확인 빈으로 등록 생성
//수동으로 bean등록을 하지 않았고, 어노테이션을 사용했다면, 
//servlet-context에서 컴포넌트 스캔을 사용해야 합니다. 
@Service
public class BoardServiceImpl implements BoardService {

	//DAO영역은 MyBatis를 사용하여 구현...
	@Autowired
	private BoardMapper mapper;
	
	@Inject
	private SqlSession session;
	
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
//	@Override
//	public ArrayList<BoardVO> getList() {
//		ArrayList<BoardVO> list = mapper.getList();
//		return list;
//	}
	
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
	
	@Override
	public void register(BoardVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		System.out.println(vo.getWriter());
		
		mapper.insertBoard(vo);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(vo, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			mapper.insertFile(list.get(i)); 
		}
		
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

	@Override
	public List<Map<String, Object>> selectFileList(int num) {
		return mapper.selectFileList(num);
	}
	
	//첨부파일 다운로드
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return mapper.selectFileInfo(map);
	}
}
