package com.human.java.model;

public class PageVO {

	  private int totalCount; // 글목록의 총 갯수
	  private int totalPageCount; // 총 페이지 갯수
	  
      private int pageNum = 1; // 첫화면일때 1페이지뜨게
      private int startPage; // 시작페이지
      private int endPage; // 끝 페이지
      
      private int countPerPage = 10; //한페이지 당 보여줄 게시글 수
      
      
      private int totalGroup; // 그룹의 총 갯수 =totalPageCount
	  private int totalGroupCount; // 내가 가지고있는 총 그룹 수   , 총페이지 / 5  
  	
      private int groupNum = 1; // 첫화면일때 그룹1뜨게
      private int startGroup ; // 시작 그룹
      private int endGroup; // 끝 그룹

      private int groupPerPage = 5; // 한번에 보여줄 페이지 갯수

      
  	public PageVO() {
		super();
	}


	public PageVO(int totalCount, int totalPageCount, int pageNum, int startPage, int endPage, int countPerPage,
			int totalGroup, int totalGroupCount, int groupNum, int startGroup, int endGroup, int groupPerPage) {
		super();
		this.totalCount = totalCount;
		this.totalPageCount = totalPageCount;
		this.pageNum = pageNum;
		this.startPage = startPage;
		this.endPage = endPage;
		this.countPerPage = countPerPage;
		this.totalGroup = totalGroup;
		this.totalGroupCount = totalGroupCount;
		this.groupNum = groupNum;
		this.startGroup = startGroup;
		this.endGroup = endGroup;
		this.groupPerPage = groupPerPage;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getTotalPageCount() {
		return totalPageCount;
	}


	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
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


	public int getCountPerPage() {
		return countPerPage;
	}


	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}


	public int getTotalGroup() {
		return totalGroup;
	}


	public void setTotalGroup(int totalGroup) {
		this.totalGroup = totalGroup;
	}


	public int getTotalGroupCount() {
		return totalGroupCount;
	}


	public void setTotalGroupCount(int totalGroupCount) {
		this.totalGroupCount = totalGroupCount;
	}


	public int getGroupNum() {
		return groupNum;
	}


	public void setGroupNum(int groupNum) {
		this.groupNum = groupNum;
	}


	public int getStartGroup() {
		return startGroup;
	}


	public void setStartGroup(int startGroup) {
		this.startGroup = startGroup;
	}


	public int getEndGroup() {
		return endGroup;
	}


	public void setEndGroup(int endGroup) {
		this.endGroup = endGroup;
	}


	public int getGroupPerPage() {
		return groupPerPage;
	}


	public void setGroupPerPage(int groupPerPage) {
		this.groupPerPage = groupPerPage;
	}


	@Override
	public String toString() {
		return "PageVO [totalCount=" + totalCount + ", totalPageCount=" + totalPageCount + ", pageNum=" + pageNum
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", countPerPage=" + countPerPage
				+ ", totalGroup=" + totalGroup + ", totalGroupCount=" + totalGroupCount + ", groupNum=" + groupNum
				+ ", startGroup=" + startGroup + ", endGroup=" + endGroup + ", groupPerPage=" + groupPerPage + "]";
	}


	
}
