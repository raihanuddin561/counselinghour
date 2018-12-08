package com.springweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spirngweb.model.TeacherCounseling;

public final class TeacherCounselingMapper implements RowMapper<TeacherCounseling> {

	@Override
	public TeacherCounseling mapRow(ResultSet rs, int rowNum) throws SQLException {
		TeacherCounseling counselingInfo = new TeacherCounseling();
		counselingInfo.setDay(rs.getString("day"));
		counselingInfo.setT_initial_id(rs.getString("t_initial_id"));
		counselingInfo.setTime1(rs.getString("time1"));
		counselingInfo.setTime2(rs.getString("time2"));
		counselingInfo.setTime3(rs.getString("time3"));
		counselingInfo.setTime4(rs.getString("time4"));
		counselingInfo.setTime5(rs.getString("time5"));
		counselingInfo.setTime6(rs.getString("time6"));
		System.out.println(counselingInfo);
		return counselingInfo;
		
	}

	


}
