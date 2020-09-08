package com.lcomputerstudy.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lcomputerstudy.example.domain.BoardVO;
import com.lcomputerstudy.example.mapper.BoardMapper;

@Service("BoardServicelmpl")
public class BoardServiceImpl implements BoardService{

	@Autowired BoardMapper boardmapper;
	@Override
	public List<BoardVO> selectBoardList() {
		return boardmapper.selectBoardList();
	}
	
	@Override
	public int getBoardListCount() {
		return boardmapper.getBoardListCount();
		//TODO pagination
		//pagination Need Another CLASS
	}

		
}
