package com.springweb.service;

import java.util.List;

import com.spirngweb.model.TeacherCounseling;



public interface TeacherService {
	public List<TeacherCounseling> getList();

	public boolean addCounseling(TeacherCounseling teacherCounseling);
	public List<TeacherCounseling> counsilinglist(String t_initial_id);
	public boolean updateCounseling(TeacherCounseling teacherCounseling);
}
