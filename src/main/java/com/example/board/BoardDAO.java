package com.example.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo){
        String sql = "insert into BOARD (title, writer, content, category) value(" + "'" + vo.getTitle() + "," + "'" +vo.getWriter() + "," + "'" + vo.getContent() + "," + "'" + vo.getCategory() + ")";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int seq){
        String sql = "delete from BOARD where seq =" + seq;
        return jdbcTemplate.update(sql);
    }

    public updateBoard(Board vo){
        String sql = "update BOARD set title='" + vo.getTitle() + "',"
                + "title='" + vo.getTitle() + "',"
                + "writer='"
    }
}
