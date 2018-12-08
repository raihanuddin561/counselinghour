package com.springweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spirngweb.model.TeacherCounseling;
import com.springweb.dao.TeacherDaoCounselingImpl;

@Service
public class TeacherServiceImpl implements TeacherService {
	
	public TeacherServiceImpl() {
	System.out.println("teacher service successfully done");
	}
	@Autowired
	private TeacherDaoCounselingImpl teacherdao;

	@Override
	public List<TeacherCounseling> getList() {
		
		return teacherdao.getList();
	}

	@Override
	public boolean addCounseling(TeacherCounseling teacherCounseling) {
		return teacherdao.addCounseling(teacherCounseling);
	}

	@Override
	public List<TeacherCounseling> counsilinglist(String t_initial_id) {
		// TODO Auto-generated method stub
		return teacherdao.counselingtlist(t_initial_id);
	}

	@Override
	public boolean updateCounseling(TeacherCounseling teacherCounseling) {
	
		return teacherdao.updateCounseling(teacherCounseling);
	}

	public TeacherCounseling getCounseling(String day, String tid) {
		// TODO Auto-generated method stub
		List<TeacherCounseling>  counselingInfo = teacherdao.getCounseling(day,tid);
		if(counselingInfo == null) {
			return null;
		}
		return counselingInfo.get(0);
	}

	
	
}
