package com.company.admin.command;

public class AdminPageVO {
	// 1. total : 게시판 글 전체 개수.
	// 2. realend : 게시판의 실제 마지막 페이지 번호
	// 3. endPage : 게시판 화면에 보여질 마지막 페이지 번호
	// 4. startPage : 게시판 화면에 보여질 첫번째 페이지 번호
	// 5. prev : 이전 페이지 버튼 활성화 여부
	// 6. next : 이후 페이지 버튼 활성화 여부

	private int adStartPage; // 화면에 보열실 시작 페이지 번호
	private int adEndPage; // 화면에 보여질 끝 페이지 번호

	private boolean prev, next; // 이전, 다음 버튼 활성화

	private int total; // 전체 게시물 수
	private AdminCriteria adcri; // 기준

	public int getStartPage() {
		return adStartPage;
	}

	// 기본생성자X
	public AdminPageVO(AdminCriteria adcri, int total) {
		this.adcri = adcri; // 기준
		this.total = total; // 총게시물 수

		// endPage
		// 공식 : (int)Math.ceil(페이지번호 / 10.0) * 10; (1 ~ 10까지 번호)
		// 공식 : (int)Math.ceil(페이지번호 / (double)한번에 보여질 페이지 수) * 한번에 보여질 페이지 수;
		this.adEndPage = (int) Math.ceil(adcri.getPageNum() / (double) 10) * 10;

		// startPage
		// 공식 : endPage - 한번에 보여질 페이지 개수 + 1
		this.adStartPage = adEndPage - 10 + 1;

		// 만약 총 게시물이 52개 밖에 없다면? -> 페이지 번호는 6까지 표시되어야 함
		// 만약 총 게시물이 81개 밖에 없다면? -> 페이지 번호는 9까지 표시
		// 만약 총 게시물이 101개 밖에 없다면? -> 페이지 번호는 11까지 표시
		// 결론 : endPage > 실제 페이지 끝번호
		// 결론 : endPage > Math.ceil(total / (double)cri.getCount())
		int realEnd = (int) Math.ceil(total / (double) adcri.getCount());

		// 게시글이 100개 미만인 경우
		if (this.adEndPage > realEnd) {
			this.adEndPage = realEnd;
		}

		// 이전 버튼(startPage가 1보다 큰 경우 true) - 버튼 활성화
		this.prev = this.adStartPage > 1;

		// 다음 버튼 진짜 끝번호가 endPage보다 큰 경우만 활성화
		// ex) 페이지 번호가 6인데 활성화 되면 안됨.
		// total /보여질 페이지 수 > (int)Math.ceil(cri.getPageNum() /(double)10)*10;
		this.next = realEnd > this.adEndPage; // 활성화

		System.out.println("[endPage]:" + adEndPage);
		System.out.println("[startPage]:" + adStartPage);

	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public AdminCriteria getAdcri() {
		return adcri;
	}

	public int getAdStartPage() {
		return adStartPage;
	}

	public void setAdStartPage(int adStartPage) {
		this.adStartPage = adStartPage;
	}

	public int getAdEndPage() {
		return adEndPage;
	}

	public void setAdEndPage(int adEndPage) {
		this.adEndPage = adEndPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public void setAdcri(AdminCriteria adcri) {
		this.adcri = adcri;
	}
}
