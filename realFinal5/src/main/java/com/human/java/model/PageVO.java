package com.human.java.model;

public class PageVO {

      private int pageNum;
      private int startPage; // 시작페이지
      private int endPage; // 끝 페이지
      
      
	public PageVO() {
		super();
	}


	public PageVO(int pageNum, int startPage, int endPage) {
		super();
		this.pageNum = pageNum;
		this.startPage = startPage;
		this.endPage = endPage;
	}


	public int getPageNum() {
		return pageNum;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
      
      
}
