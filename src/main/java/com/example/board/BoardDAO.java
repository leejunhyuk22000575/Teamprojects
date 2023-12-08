package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;


import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        return sqlSession.insert("Board.insertBoard", vo);
    }

    public int deleteBoard(int seq){
        return sqlSession.delete("Board.deleteBoard", seq);
    }

    public int updateBoard(BoardVO vo) {
        return sqlSession.update("Board.updateBoard", vo);
    }
    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }


}