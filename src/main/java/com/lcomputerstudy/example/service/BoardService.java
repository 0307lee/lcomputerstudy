package com.lcomputerstudy.example.service;

import java.util.List;

import com.lcomputerstudy.example.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> selectBoardList();
	
	public int getBoardListCount();
}
