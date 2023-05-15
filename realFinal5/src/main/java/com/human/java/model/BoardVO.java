package com.human.java.model;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BoardVO {

	private int seq; // 글 번호
	private int R_seq; // 수정 글번호 
	private String title; // 글 제목
	private String writer; // 작성자
	private String content; // 내용
	@JsonFormat(pattern = "yyyy-MM-dd")
    private Date postingdate; // 작성일자
    private String subject; // 말머리
    private String picture; // 사진
    private int hits; // 조회수
      
    
	public BoardVO() {
		super();
	}
	
	public BoardVO(int seq, int R_seq, String title, String writer, String content, Date postingdate, String subject,
			String picture, int hits) {
		super();
		this.seq = seq;
		this.R_seq = R_seq; 
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.postingdate = postingdate;
		this.subject = subject;
		this.picture = picture;
		this.hits = hits;
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int R_seq() {
		return seq;
	}
	public void R_seq(int R_seq) {
		this.R_seq = R_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPostingdate() {
		return postingdate;
	}
	public void setPostingdate(Date postingdate) {
		this.postingdate = postingdate;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
    
	   
   @Override
   public String toString() {
      return "BoardVO [seq=" + seq + "R_seq= "+ R_seq + ", title=" + title + ", writer=" + writer + ", content=" + content + ", postingdate="
            + postingdate + ", subject=" + subject + "]";
   }      	   
}
