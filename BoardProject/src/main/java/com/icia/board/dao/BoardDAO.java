package com.icia.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.board.dto.BoardDTO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int writeBoard(BoardDTO board) {
		// TODO Auto-generated method stub
		
		System.out.println("dao : "+board);
		
		int result = sql.insert("Board.writeBoard",board);
		
		return result;
	}

	public List<BoardDTO> getBoardList(BoardDTO board) {
		
		return sql.selectList("Board.boardList");
	}

	public BoardDTO getBoardDetail(String bnumber) {
		// TODO Auto-generated method stub
		
		return sql.selectOne("Board.boardview", bnumber);
	}

}
