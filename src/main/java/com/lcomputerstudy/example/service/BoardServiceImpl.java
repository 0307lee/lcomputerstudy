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

	@Override
	public void writingpost(BoardVO post) {
		boardmapper.writingpost(post);
	}

	@Override
	public List<BoardVO> selectPost(int bId) {
		return boardmapper.selectPost(bId);
	}

	@Override
	public List<BoardVO> updatePost(int bId) {
		return boardmapper.updatePost(bId);
	}
	
	@Override
	public List<BoardVO> updatePostProcess(BoardVO post,int bId) {
		boardmapper.udatepostprocess(post, bId);
		return boardmapper.updatePost(bId);
	}
}
