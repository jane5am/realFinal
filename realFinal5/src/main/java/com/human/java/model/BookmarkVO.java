package com.human.java.model;

public class BookmarkVO {

	private int bookmark_seq; // 북마크 번호
	private int boardNumber; // 게시판 번호 ( 1 : 지식게시판, 2 : 스터디 게시판)
	private int seq; // 저장할 글 번호
	
	public BookmarkVO() {
		super();
	}

	public BookmarkVO(int bookmark_seq, int boardNumber, int seq) {
		super();
		this.bookmark_seq = bookmark_seq;
		this.boardNumber = boardNumber;
		this.seq = seq;
	}
	
	public int getBookmark_seq() {
		return bookmark_seq;
	}
	public void setBookmark_seq(int bookmark_seq) {
		this.bookmark_seq = bookmark_seq;
	}
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}

	@Override
	public String toString() {
		return "BookmarkVO [bookmark_seq=" + bookmark_seq + ", boardNumber=" + boardNumber + ", seq=" + seq + "]";
	}

	
	
}
