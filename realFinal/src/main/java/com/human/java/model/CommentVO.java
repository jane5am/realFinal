package com.human.java.model;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentVO {
	
	private int comment_id; // 댓글 번호, 순번
	private int seq; // 댓글을 다는 그 글번호
	private String nickname; // 닉네임
	private String comment_content; // 댓글 내용
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date comment_date; // 작성일자
	private String comment_state; // 댓글 상태
	
	
	

	public CommentVO() {
		super();
	}
	
	public CommentVO(int comment_id, int seq, String nickname, String comment_content, Date comment_date,
			String comment_state) {
		super();
		this.comment_id = comment_id;
		this.seq = seq;
		this.nickname = nickname;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
		this.comment_state = comment_state;
	}
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	public String getComment_state() {
		return comment_state;
	}
	public void setComment_state(String comment_state) {
		this.comment_state = comment_state;
	}
	

	@Override
	public String toString() {
		return "ComentVO [comment_id=" + comment_id + ", seq=" + seq + ", nickname=" + nickname + ", comment_content="
				+ comment_content + ", comment_date=" + comment_date + ", comment_state=" + comment_state + "]";
	}
	
}
