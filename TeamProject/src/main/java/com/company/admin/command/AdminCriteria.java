package com.company.admin.command;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class AdminCriteria {
	// mysql, mariadb : select * from fa by num desc limit ?, ?;

	// oracle : select * from (select rownum as rnum,nno,writer
	// from tbl_board where ? >= rownum order by nno desc)
	// where rnum >= ?;

	private int pageNum; // 페이지 번호
	private int count; // 몇개의 데이터를 게시판 출력할지 결정

	private String type;
	private String keyword;

	public AdminCriteria() {
			//최초 게시판에 진입할 때에 기본값 설정, 1번페이지, 10개의 게시물 설정
			this.pageNum = 1;
			this.count = 5;
		}

	public AdminCriteria(int pageNum, int count) {
			//전달받은 매개변수를 이용한 페이지 값 출력
			super();
			this.pageNum = pageNum;
			this.count = count;
		}

	public int getAdpageStart() {
//			return ((pageNum - 1) * count);  //mysql, mariadb인경우
	}

	public int getCount_oracle() {
		return (pageNum * count);
	}
}
