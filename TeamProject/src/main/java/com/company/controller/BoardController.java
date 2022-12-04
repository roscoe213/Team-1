package com.company.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.company.board.command.BoardVO;
import com.company.board.command.Criteria;
import com.company.board.command.PageVO;
import com.company.board.service.BoardService;




@Controller
@RequestMapping("/board/")
public class BoardController {
	
//	private static final int  = 0;
	/*
	 * board 관련 테이블 생성 : tbl_board [ 계정은 team ]
	 * 
	 * -tbl_board
	 * create table tbl_board(
	 * 	bno number(10,0),
	 *  title varchar2(200) not null,
	 *  content varchar2(200),
	 *  writer varchar2(50) not null,
	 *  regdate date default sysdate,
	 *  updatedate date default sysdate,
	 *  hit number(4,0) default 0
	 * );
	 * 
	 * -시퀸스 생성
	 * create sequence seq_board;
	 * 
	 * -
	 * alter table tbl_board add constraint pk_board primary key (bno);
	 * 
	 * - 조회수 컬럼 추가
	 *- ALTER TABLE tbl_board ADD hit  NUMBER(4,0) DEFAULT 0;
	 * 
	 * 
	 * - 첨부파일 업로드 테이블 생성
	 * CREATE TABLE MP_FILE
	 *	(
     *	FILE_NO NUMBER,                         --파일 번호
     *	BNO NUMBER NOT NULL,                    --게시판 번호
     *	ORG_FILE_NAME VARCHAR2(260) NOT NULL,   --원본 파일 이름
     *	STORED_FILE_NAME VARCHAR2(36) NOT NULL, --변경된 파일 이름
     *	FILE_SIZE NUMBER,                       --파일 크기
     *	REGDATE DATE DEFAULT SYSDATE NOT NULL,  --파일등록일
     *	DEL_GB VARCHAR2(1) DEFAULT 'N' NOT NULL,--삭제구분
     *	PRIMARY KEY(FILE_NO)                    --기본키 FILE_NO
	 *	);
	 * 
	 * CREATE SEQUENCE SEQ_MP_FILE_NO
	 *	START WITH 1 
	 *	INCREMENT BY 1 
	 *	NOMAXVALUE NOCACHE;
	 * 
	 * 
	 * -첨부파일 테이블생성 수정본-
	 * 
	 *	create table tbl_attach (
     *	uuid varchar2(100) not null,
     *	uploadPath varchar2(200) not null,
     *	fileName varchar2(100) not null,
     *	filetype char(1) default 'I',
     *	seq_bno number(10,0)
     *	);
    
     * alter table tbl_attach add constraint pk_attach primary key (uuid);
    
     * alter table tbl_attach add constraint fk_board_attach foreign key (seq_bno)
     * references tbl_board(bno);
	 * 
	 * 
	 * 
	 * 
	 */
	
	
	@Autowired
	private BoardService service;
	
//	//게시글 리스트
//	@RequestMapping("/list")
//	public String list(Model model) {
//		//list요청이 들어오면, DB에서 게시판에 대한 모든 내용을 가지고, 화면으로 이동
//		ArrayList<BoardVO> list = service.getList();
//		//컨트롤러 메서드의 리컨값을 추가하고 싶다면, 
//		//1. Model 객체를 추가, 간편하게 전달할 수 있음....
//		//2. 리턴 유형을 ModelAndView 객체로 추가하여 작업 ...
//		model.addAttribute("board_list", list);
//		
//		return "board/list";
//	}
	
	//페이징 화면 처리
	@RequestMapping("/list")
	public String list(Model model,Criteria cri) {
		//게시글 정보 가져오기...(Criteria을 기준으로 설정)
		ArrayList<BoardVO> list = service.getList(cri);
		
		model.addAttribute("board_list", list);
		
		//게시글 전체 데이터 가져오기
		int total = service.getTotal();  //게시글 전체 갯수를 알아오는 메서드
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		//top5 게시글 데이터 가져오기
		
		List<BoardVO> lists = service.topList();
		model.addAttribute("top_list", lists);
		
		return "board/list";
	}
	
	//top5게시글 리스트
//	@RequestMapping("/list")
//	public String list(Model model) {
//		//list요청이 들어오면, DB에서 게시판에 대한 모든 내용을 가지고, 화면으로 이동
//		List<BoardVO> list = service.topList();
//		//컨트롤러 메서드의 리컨값을 추가하고 싶다면, 
//		//1. Model 객체를 추가, 간편하게 전달할 수 있음....
//		//2. 리턴 유형을 ModelAndView 객체로 추가하여 작업 ...
//		model.addAttribute("top_list", list);
//		
//		return "board/list";
//	}
	
	
	
	//GET 등록 화면으로 이동
	//@RequestMapping(value = "/register",method=RequestMethod.GET)
	@GetMapping("/register")   //GET방식으로 처리되는 경우 접속
	public String register(@ModelAttribute("cri") Criteria cri) {
		System.out.println("화면처리");
		
		return "board/register";
	}
	
	@PostMapping("/register")
	public String register(BoardVO vo) {
		System.out.println("==========================");
		System.out.println("등록처리 :" + vo);
		
		if (vo.getAttachList() != null) {
			vo.getAttachList().forEach(attach -> System.out.println(attach));
			
		}
		
		
		//서비스 처리 ... 
		service.register(vo);
		
		return "redirect:/board/list";
	}
	
	//220920 내용!! -> 상세보기 처리 : list.jsp의 title-a태그 작업
	
	//상세 보기 처리
	@RequestMapping("/content")
	public String content(@RequestParam("num") int num,
			Model model, @ModelAttribute("cri") Criteria cri){       //8.페이징에서 추가할 내용이 존재함."
		System.out.println("===컨트롤러===");
		System.out.println(num);
		
		
		//num(bno)을 가지고 있는 데이터(row)를 불러오는 메서드
		BoardVO vo = service.getContent(num);
		model.addAttribute("board", vo);
		service.upHit(num);
		
		//top5 게시글 데이터 가져오기
		
		List<BoardVO> lists = service.topList();
		model.addAttribute("top_list", lists);
		
		
		
		return "board/content";
	}
	
	//수정 페이지 처리 (modify.jsp)
	@RequestMapping("/modify")
	public String modify(@RequestParam("num") int num,
			Model model,@ModelAttribute("cri") Criteria cri) {
		
		BoardVO vo = service.getContent(num);
		model.addAttribute("board", vo);
		
		return "board/modify";
	}
	
	//상세보기와 수정을 한번 처리하기
//	@RequestMapping({"/content","/modify"})
//	public void content(@RequestParam("num") int num,
//			Model model,@ModelAttribute("cri") Criteria cri) {   //8.페이징에서 추가할 내용이 존재함.  //11.modify.jsp에서 버튼 처리
//		
//		BoardVO vo = service.getContent(num);
//		model.addAttribute("board", vo);
//	}
	
	//게시판 수정 완료 버튼 처리
	@RequestMapping("/update")
	public String update(BoardVO vo,Criteria cri) {
		System.out.println("---컨토롤 계층---");
		System.out.println(vo.getBno());
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		//문제
		//1. service 계층에 전달받을 폼값을 전달하는 update(vo)를 생성
		//2. update()메서드 안에서 mybatis로 연결하는 updateBoard(vo)
		//  메서드를 생성하세요. 전체 동작을 통해서 업데이터를 진행하세요. 
		System.out.println(cri.getPageNum());
		service.update(vo);
		
		return "redirect:/board/list";
	}
	
	//게시판 삭제
	@RequestMapping("/delete")
	public String delete(@RequestParam("num") int num) {
		System.out.println("---컨트롤러 계층---");
		System.out.println(num);
		//delete구현
		//1. service계층에 num을 전달받아 처리하는 delete()를 생성
		//2. mapper 인터페이스 void deleteBoard()를 선언
		//3. Service안에서는 mapper의 deleteBoard()를 실행
		//4. mapper.xml에서는 <delete></delete>를 통해서 삭제 진행
		//5. sql = delete from tbl_board where bno = #{num}
		service.delete(num);
		
		return "redirect:/board/list";
	}
	
	
	
	
	
	

}
