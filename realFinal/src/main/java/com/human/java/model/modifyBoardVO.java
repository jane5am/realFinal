package com.human.java.model;

import java.sql.Date;

public class modifyBoardVO {
	
	private int Seq; // 기존 글 번호
	private int R_Seq; // 수정 글 번호
	private String R_Title; // 글 제목
	private String R_Content; // 내용
    private Date R_Reporstingdate; // 수정일자
    private String R_Subject; // 말머리
    private String R_Picture; // 사진
    

public modifyBoardVO() {
		super();
	}


public modifyBoardVO(int seq, int r_Seq, String r_Title, String r_Content, Date r_Reporstingdate, String r_Subject,
			String r_Picture) {
		super();
		Seq = seq;
		R_Seq = r_Seq;
		R_Title = r_Title;
		R_Content = r_Content;
		R_Reporstingdate = r_Reporstingdate;
		R_Subject = r_Subject;
		R_Picture = r_Picture;
	}


public int getSeq() {
		return Seq;
	}


	public void setSeq(int seq) {
		Seq = seq;
	}


	public int getR_Seq() {
		return R_Seq;
	}


	public void setR_Seq(int r_Seq) {
		R_Seq = r_Seq;
	}


	public String getR_Title() {
		return R_Title;
	}


	public void setR_Title(String r_Title) {
		R_Title = r_Title;
	}


	public String getR_Content() {
		return R_Content;
	}


	public void setR_Content(String r_Content) {
		R_Content = r_Content;
	}


	public Date getR_Reporstingdate() {
		return R_Reporstingdate;
	}


	public void setR_Reporstingdate(Date r_Reporstingdate) {
		R_Reporstingdate = r_Reporstingdate;
	}


	public String getR_Subject() {
		return R_Subject;
	}


	public void setR_Subject(String r_Subject) {
		R_Subject = r_Subject;
	}


	public String getR_Picture() {
		return R_Picture;
	}


	public void setR_Picture(String r_Picture) {
		R_Picture = r_Picture;
	}


@Override
   public String toString() {
      return "BoardVO [R_Seq=" + R_Seq + ", Seq=" + Seq + ", R_Title=" + R_Title + ", R_Content=" + R_Content + ", R_Reporstingdate="
            + R_Reporstingdate + ", R_Subject=" + R_Subject + ", R_Picture=" + R_Picture +"]";
   }      	   
}
