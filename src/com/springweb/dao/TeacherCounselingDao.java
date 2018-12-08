package com.springweb.dao;

import java.util.List;

import com.spirngweb.model.TeacherCounseling;

public interface TeacherCounselingDao {
	public List<TeacherCounseling> getList();
	public boolean addCounseling(TeacherCounseling teacherCounseling);
	public List<TeacherCounseling> counselingtlist(String t_initial_id);
	public boolean updateCounseling(TeacherCounseling teacherCounseling);
}
