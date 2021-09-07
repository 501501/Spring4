package com.sol.s4.util;

public class Pager {
	
	// --------------- 검색---------------
	// mapper에서 사용
	private String kind;
	private String search;
	
	// 1. pn : getter에서 파라피터 처리
	private Long pn;
	// 2. perPage
	// 한 페이지에 출력할 글의 개수 - 10
	private Long perPage;
	// 3. 한 페이지에 출력할 pn의 개수 - 5
	private Long perBlock;
	
	//------------------ 4. RowNum Mapper에서 사용 -----------------
	private Long startRow;
	private Long lastRow;
	
	//----------- 5. startNum, lastNum jsp 번호 출혁할 때 사용 ----------
	private Long startNum;
	private Long lastNum;
	
	// jsp에서 사용 => 멤버 변수로 선언
	private Long totalPage;
	
	//--------------------- 4. rownum 계산 메서드 ---------------------
	public void makeRow() {
		this.startRow = (this.getPn() - 1) * this.getPerPage() + 1;
		this.lastRow = this.getPn() * this.getPerPage();
	}
	
	// 5.
	public void makeNum(Long totalCount) {
		// (1) totalCount : 전체 글의 개수 (매개변수로 받아옴)
		
		// (2) totalCount로 totalPage 계산 : 전체 페이지 개수
		totalPage = totalCount / this.getPerPage();
		if (totalCount % this.getPerPage() != 0) {
			totalPage++;
		}
		
		// (3) totalPage로 totalBlock 계산
		Long totalBlock = totalPage / this.getPerBlock();
		if (totalPage % this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		// (3)_1
		if (totalPage < this.getPn()) {
			this.setPn(totalPage);
		}
		
		// (4) pn으로 현재 블럭 번호 curBlock 구하기 
		Long curBlock = this.getPn() / 5;
		if (this.getPn() % 5 != 0) {
			curBlock++;
		}
		
		// (5) curBlock으로 startNum, lastNum 계산
		// jsp에서 사용할 변수 => 멤버변수 선언
		this.startNum = (curBlock - 1) * this.getPerBlock() + 1;
		this.lastNum = curBlock * this.getPerBlock();
		
		// (6) curBlock이 마지막 block일 때 lastNum 변경
		if (curBlock == totalBlock) {
			this.lastNum = totalPage;
		}
	}
	
	// --------------- 검색---------------
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}
	
	// 검색어가 없는 경우
	public String getSearch() {
		if (this.search == null) {
			this.search = "";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	//--------------- 검색---------------
	
	// 1.
	// pn이 최소 1이어야 함
	// null이거나 1보다 작은 값이 왔을 경우 pn을 1로 처리
	// 다른 곳에서 pn이 필요한 경우 getter를 이용하기
	public Long getPn() {
		if (this.pn == null || this.pn <= 0) {
			this.pn = 1L;
		}
		return pn;
	}

	public void setPn(Long pn) {
		this.pn = pn;
	}
	
	// 2.
	// 기본값을 10으로 설정
	public Long getPerPage() {
		if (this.perPage == null || this.perPage == 0) {
			this.perPage = 10L;
		}
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	
	// 3.
	// 기본값을 5로 설정
	public Long getPerBlock() {
		this.perBlock = 5L;
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}

	public Long getStartRow() {
		return startRow;
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getLastRow() {
		return lastRow;
	}

	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}
}
