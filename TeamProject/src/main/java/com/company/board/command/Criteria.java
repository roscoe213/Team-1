package com.company.board.command;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Criteria {
	
	// mysql, mariadb : select * from tbl_board by num desc limit ?, ?;
	
	// oracle : select * from (select rownum as rnum,bno,writer 
	// from tbl_board where ? >= rownum order by bno desc)
	// where rnum >= ?;
	
	private int pageNum;  	//페이지 번호
	private int count;		// 몇개의 데이터를 게시판 출력할지 결정
	
	private String type;
	private String keyword;
	
	
	public Criteria() {
		//최초 게시판에 진입할 때에 기본값 설정, 1번페이지, 10개의 게시물 설정
		this.pageNum = 1;
		this.count = 10;
	}

	public Criteria(int pageNum, int count) {
		//전달받은 매개변수를 이용한 페이지 값 출력
		super();
		this.pageNum = pageNum;
		this.count = count;
	}
	
	public int getPageStart() {
//		return ((pageNum - 1) * count);  //mysql, mariadb인경우
		return ((pageNum - 1) * count) + 1;  //오라클
	}

	
	public int getCount_oracle() {
		return (pageNum * count);
	}
	
//	public String[] getTypeArr() {
//		return type == null? new String[] {}: type.split("");
//	}

}
