package com.lcomputerstudy.example.service;

import java.util.List;

import com.lcomputerstudy.example.domain.BoardVO;
import com.lcomputerstudy.example.domain.UserVO;

public interface BoardService {
	public List<BoardVO> selectBoardList();
	
	public int getBoardListCount();
	
	public void writingpost(BoardVO post);

	public List<BoardVO> selectPost(int bId);
	
}
