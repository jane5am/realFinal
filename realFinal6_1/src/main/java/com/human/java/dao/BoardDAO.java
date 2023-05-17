package com.human.java.dao;

import java.util.HashMap;
import java.util.List;

import com.human.java.model.BoardVO;
import com.human.java.model.BookmarkVO;
import com.human.java.model.CommentVO;
import com.human.java.model.PageVO;

public interface BoardDAO {

	public void savePost( BoardVO vo);
	
	public Object getPost(BoardVO vo);
	
	public Object deletePost(BoardVO vo);
	
	public void modifyPost( BoardVO vo );
	
	public void updatePost(BoardVO vo);
	
	public List<BoardVO> getPostlist( PageVO vo );
	
	public BoardVO getBoard(BoardVO vo);
	
	public int updatehits(BoardVO vo);
	
	// 지식게시판 - 댓글 저장
	public void saveComment(CommentVO vo);
	
	// 지식게시판 - 댓글목록 가져오기
	public List<CommentVO> getCommentList(CommentVO vo);
	
	// 지식게시판 - 쓴댓글 가져오기
	public List<CommentVO> getWriteComment(CommentVO vo);
	
	// 말머리 검색
	public List<BoardVO> searchSubject(String selectedSubject, HashMap map);
	
	public void deleteComment(CommentVO vo);
	
	// 지식게시판 - 댓글 수정
	public void modifyComment(CommentVO vo);
	
	// 북마크 게시글 저장
	public void saveBookmark(BookmarkVO vo);
	
	// 북마크 저장 취소
	public void saveCancelBookmark(BookmarkVO vo);
	
	//북마크 되어있는지 확인
	public List<BookmarkVO> checkBookmark(BookmarkVO vo);
	
	public PageVO getBoardListCount();
	
	public void knowBLsearch(BoardVO vo);
}
