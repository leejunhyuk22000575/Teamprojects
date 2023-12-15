package com.example.board;

import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;


public class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setPay(rs.getString("pay"));
        vo.setNumEmployee(rs.getString("numEmployee"));
        vo.setWorkPeriod(rs.getString("workPeriod"));
        vo.setGender(rs.getString("gender"));
        vo.setDayOfWeek(rs.getString("dayOfWeek"));
        vo.setLocation(rs.getString("location"));
        vo.setJobType(rs.getString("jobType"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }

}