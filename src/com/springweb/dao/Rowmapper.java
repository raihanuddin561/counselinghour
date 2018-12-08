package com.springweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spirngweb.model.TeacherCounseling;

public class Rowmapper implements RowMapper<TeacherCounseling>{

	@Override
	public TeacherCounseling mapRow(ResultSet rs, int rowNum) throws SQLException {
		TeacherCounseling ta=new TeacherCounseling();
	ta.setDay(rs.getString("day"));
	ta.setT_initial_id(rs.getString("t_initial_id"));
	ta.setTime1(rs.getString("time1"));
	ta.setTime2(rs.getString("time2"));
	ta.setTime3(rs.getString("time3"));
	ta.setTime4(rs.getString("time4"));
	ta.setTime5(rs.getString("time5"));
	ta.setTime6(rs.getString("time6"));
		return ta;
	}

}
